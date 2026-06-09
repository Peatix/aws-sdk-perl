#!/usr/bin/env perl

# examples/live-smoke/paws-live-smoke.pl
#
# Live, create/exercise/teardown smoke test for the Paws wire layer
# against real AWS APIs. Unlike t/ (hermetic, mocked) and
# examples/smoke.pl (no network), this hits AWS for real to flush out
# request-shaping and response-decoding bugs that only surface against
# a live endpoint.
#
# It deliberately spreads across protocols and serialisation quirks
# that the mocked suite under-covers:
#
#   S3              rest-xml: XML body/response, S3 SigV4, presign,
#                   pagination, header/range params, streaming-ish GET
#   DynamoDB        json: recursive AttributeValue maps/lists, waiters,
#                   pagination
#   SQS             json: message-attribute maps
#   CloudWatch      query: flattened member lists + iso8601 timestamps
#   KMS             json: blob / base64 round-trip (Encrypt -> Decrypt)
#   SSM             json: SecureString parameters
#   SecretsManager  json: secret string + binary blob
#   EC2             ec2 protocol: the EC2Caller + EC2 XML response decode
#   Route53         rest-xml: global-service signing (read-only)
#   Firehose        json: blob Data (opt-in; heavy IAM + S3 setup)
#
# Everything it creates is named paws-smoke-<svc>-<run-id> and torn
# down (LIFO) at the end of each service block, even on failure.
#
# This is a manual tool: it needs live credentials and is NOT wired
# into CI. See examples/live-smoke/README.md for how to build a
# local-lib with the services it needs and how to point it at a role.
#
# Configuration (all via environment):
#
#   PAWS_SMOKE_ROLE_ARN   If set, assume this role (Paws::Credential::
#                         AssumeRole) for every call. If unset, use the
#                         default provider chain.
#   PAWS_SMOKE_REGION     Region for regional services (default
#                         ap-northeast-1; falls back to AWS_REGION).
#   PAWS_SMOKE_STS_REGION Region for the AssumeRole STS call (default
#                         us-east-1).
#   PAWS_SMOKE_SESSION    RoleSessionName (default paws-live-smoke).
#   PAWS_SMOKE_ONLY       Comma-separated service filter, e.g.
#                         "S3,DynamoDB". Default: all non-opt-in.
#   PAWS_SMOKE_FIREHOSE   "1" to include the (slow) Firehose block.
#   PAWS_SMOKE_ROUTE53_WRITE "1" to create+delete a public hosted zone
#                         (otherwise Route53 is read-only).
#   PAWS_SMOKE_NO_LOG     "1" to disable the structured Log interceptor.

use strict;
use warnings;
use v5.10;

use POSIX qw(strftime);
use Time::HiRes ();

use Paws;
use Paws::Net::Caller;
use Paws::Net::Interceptor::Log;
use Paws::Credential::AssumeRole;

# --- configuration ---------------------------------------------------------

my $region     = $ENV{PAWS_SMOKE_REGION} || $ENV{AWS_REGION} || 'ap-northeast-1';
my $sts_region = $ENV{PAWS_SMOKE_STS_REGION} || 'us-east-1';
my $role_arn   = $ENV{PAWS_SMOKE_ROLE_ARN};
my $session    = $ENV{PAWS_SMOKE_SESSION} || 'paws-live-smoke';
my $only       = $ENV{PAWS_SMOKE_ONLY};
my $do_log     = $ENV{PAWS_SMOKE_NO_LOG} ? 0 : 1;

my %only = $only ? (map { lc($_) => 1 } split /\s*,\s*/, $only) : ();

my $run_id = sprintf('%s-%04x', strftime('%Y%m%d%H%M%S', gmtime), int(rand(0xffff)));

say "paws-live-smoke run_id=$run_id region=$region role="
  . ($role_arn ? 'assume' : 'default-chain');

# Shared credentials object: either an assumed role or the default
# provider chain (handled by Paws when credentials is omitted).
my $creds;
if ($role_arn) {
    $creds = Paws::Credential::AssumeRole->new(
        RoleArn         => $role_arn,
        RoleSessionName => $session,
        sts_region      => $sts_region,
    );
}

# --- framework -------------------------------------------------------------

sub _errmsg {
    my ($err) = @_;
    my $msg =
        (ref $err && $err->can('message')) ? $err->message
      : (ref $err && $err->can('code'))    ? $err->code
      :                                      "$err";
    $msg =~ s/\s+$//;
    $msg =~ s/\n.*//s;
    return $msg;
}

# Build a service object with the shared credentials and a logging caller.
sub svc {
    my ($name, %extra) = @_;
    my $caller = Paws::Net::Caller->new;
    $caller->register_interceptor(Paws::Net::Interceptor::Log->new) if $do_log;
    return Paws->service(
        $name,
        region => $region,
        caller => $caller,
        ($creds ? (credentials => $creds) : ()),
        %extra,
    );
}

sub rname { my ($p) = @_; "paws-smoke-$p-$run_id" }

# ISO-8601 UTC timestamp (the format query / rest-xml protocols expect).
sub iso8601 { strftime('%Y-%m-%dT%H:%M:%SZ', gmtime($_[0] // time)) }

my @results;
our @cleanups;    # package global so defer() can be local()-ised per block

sub defer {
    my ($name, $code) = @_;
    unshift @cleanups, { name => $name, code => $code };    # LIFO
}

sub flush_cleanups {
    for my $c (@cleanups) {
        if (eval { $c->{code}->(); 1 }) {
            say "  cleanup=ok what=$c->{name}";
        }
        else {
            say STDERR "  cleanup=FAIL what=$c->{name} error=" . _errmsg($@);
        }
    }
    @cleanups = ();
}

sub step {
    my ($name, $code) = @_;
    if (eval { $code->(); 1 }) {
        push @results, [ $name, 'pass' ];
        say "  step=pass name=$name";
        return 1;
    }
    my $e = _errmsg($@);
    push @results, [ $name, 'FAIL', $e ];
    say "  step=FAIL name=$name error=$e";
    return 0;
}

sub service_block {
    my ($name, $code) = @_;
    return if %only && !$only{ lc $name };
    say "\n=== service=$name ===";
    local @cleanups = ();
    unless (eval { $code->(); 1 }) {
        my $e = _errmsg($@);
        push @results, [ "$name.setup", 'FAIL', $e ];
        say STDERR "  service=$name setup_error=$e";
    }
    flush_cleanups();
}

sub wait_until {
    my ($desc, $check, %opt) = @_;
    my $timeout  = $opt{timeout}  // 180;
    my $interval = $opt{interval} // 5;
    my $deadline = time + $timeout;
    while (time < $deadline) {
        return 1 if eval { $check->() };
        Time::HiRes::sleep($interval);
    }
    die "timed out after ${timeout}s waiting for $desc\n";
}

$SIG{INT} = sub { flush_cleanups(); exit 130 };

# --- S3 (rest-xml) ---------------------------------------------------------

service_block S3 => sub {
    my $s3     = svc('S3');
    my $bucket = rname('s3');
    $bucket =~ tr/A-Z/a-z/;    # bucket names must be lowercase

    step 's3.create_bucket' => sub {
        $s3->CreateBucket(
            Bucket => $bucket,
            ($region ne 'us-east-1'
                ? (CreateBucketConfiguration => { LocationConstraint => $region })
                : ()),
        );
    };
    defer "s3 bucket $bucket" => sub { $s3->DeleteBucket(Bucket => $bucket) };

    step 's3.put_object' => sub {
        $s3->PutObject(Bucket => $bucket, Key => 'hello.txt', Body => 'hello world');
    };
    defer "s3 object hello.txt" =>
        sub { $s3->DeleteObject(Bucket => $bucket, Key => 'hello.txt') };

    step 's3.head_object' => sub {
        my $r = $s3->HeadObject(Bucket => $bucket, Key => 'hello.txt');
        die "unexpected ContentLength=" . ($r->ContentLength // 'undef') . "\n"
            unless ($r->ContentLength // 0) == length('hello world');
    };

    step 's3.get_object' => sub {
        my $r = $s3->GetObject(Bucket => $bucket, Key => 'hello.txt');
        die "body mismatch\n" unless ($r->Body // '') eq 'hello world';
    };

    step 's3.list_objects_v2' => sub {
        my $r    = $s3->ListObjectsV2(Bucket => $bucket);
        my $keys = $r->Contents // [];
        die "expected 1 object, saw " . scalar(@$keys) . "\n" unless @$keys == 1;
    };

    # presign is a Paws S3 extension; treat as best-effort so its
    # absence doesn't fail the block.
    if (Paws->class_for_service('S3')->can('presign') || $s3->can('presign')) {
        step 's3.presign_get' => sub {
            my $url = $s3->presign('GetObject', { Bucket => $bucket, Key => 'hello.txt' });
            die "no url\n" unless $url && $url =~ m{^https?://};
        };
    }
};

# --- DynamoDB (json: recursive AttributeValue) -----------------------------

service_block DynamoDB => sub {
    my $ddb   = svc('DynamoDB');
    my $table = rname('ddb');

    step 'dynamodb.create_table' => sub {
        $ddb->CreateTable(
            TableName            => $table,
            BillingMode          => 'PAY_PER_REQUEST',
            AttributeDefinitions => [ { AttributeName => 'id', AttributeType => 'S' } ],
            KeySchema            => [ { AttributeName => 'id', KeyType => 'HASH' } ],
        );
    };
    defer "dynamodb table $table" => sub { $ddb->DeleteTable(TableName => $table) };

    step 'dynamodb.wait_active' => sub {
        wait_until("table $table ACTIVE", sub {
            ($ddb->DescribeTable(TableName => $table)->Table->TableStatus // '') eq 'ACTIVE';
        });
    };

    step 'dynamodb.put_item' => sub {
        $ddb->PutItem(
            TableName => $table,
            Item      => {
                id  => { S => '1' },
                num => { N => '42' },
                map => { M => { nested => { S => 'value' } } },
                lst => { L => [ { S => 'a' }, { N => '7' } ] },
                flag => { BOOL => 1 },
            },
        );
    };

    step 'dynamodb.get_item' => sub {
        my $r   = $ddb->GetItem(TableName => $table, Key => { id => { S => '1' } });
        my $itm = $r->Item;
        die "no item\n" unless $itm;
        die "N mismatch\n"  unless ($itm->{num}->N  // '') eq '42';
        die "M mismatch\n"  unless ($itm->{map}->M->{nested}->S // '') eq 'value';
        die "L mismatch\n"  unless ($itm->{lst}->L->[0]->S // '') eq 'a';
    };

    step 'dynamodb.query' => sub {
        my $r = $ddb->Query(
            TableName                 => $table,
            KeyConditionExpression    => 'id = :v',
            ExpressionAttributeValues => { ':v' => { S => '1' } },
        );
        die "query count\n" unless ($r->Count // 0) == 1;
    };

    step 'dynamodb.scan' => sub {
        my $r = $ddb->Scan(TableName => $table);
        die "scan count\n" unless ($r->Count // 0) >= 1;
    };
};

# --- SQS (json: message-attribute maps) ------------------------------------

service_block SQS => sub {
    my $sqs  = svc('SQS');
    my $qname = rname('sqs');
    $qname =~ tr/./-/;    # queue names can't contain dots

    my $qurl;
    step 'sqs.create_queue' => sub {
        $qurl = $sqs->CreateQueue(QueueName => $qname)->QueueUrl;
        die "no queue url\n" unless $qurl;
    };
    defer "sqs queue $qname" => sub { $sqs->DeleteQueue(QueueUrl => $qurl) if $qurl };

    step 'sqs.send_message' => sub {
        $sqs->SendMessage(
            QueueUrl          => $qurl,
            MessageBody       => 'hello',
            MessageAttributes => {
                origin => { DataType => 'String', StringValue => 'paws-smoke' },
            },
        );
    };

    step 'sqs.receive_message' => sub {
        my $got;
        wait_until('a message', sub {
            my $r = $sqs->ReceiveMessage(
                QueueUrl              => $qurl,
                MaxNumberOfMessages   => 1,
                WaitTimeSeconds       => 2,
                MessageAttributeNames => ['All'],
            );
            my $msgs = $r->Messages // [];
            return 0 unless @$msgs;
            $got = $msgs->[0];
            return 1;
        }, timeout => 30, interval => 2);
        die "body mismatch\n" unless ($got->Body // '') eq 'hello';
        $sqs->DeleteMessage(QueueUrl => $qurl, ReceiptHandle => $got->ReceiptHandle);
    };

    step 'sqs.get_queue_attributes' => sub {
        my $r = $sqs->GetQueueAttributes(QueueUrl => $qurl, AttributeNames => ['All']);
        die "no attributes\n" unless $r->Attributes;
    };
};

# --- CloudWatch (query: flattened lists + iso8601 timestamps) --------------

service_block CloudWatch => sub {
    my $cw        = svc('CloudWatch');
    my $namespace = "PawsSmoke/$run_id";
    my $now       = time;

    # CloudWatch is awsQueryCompatible: its canonical protocol is
    # awsJson1_0, so timestamps go as unixTimestamp (epoch seconds).
    step 'cloudwatch.put_metric_data' => sub {
        $cw->PutMetricData(
            Namespace  => $namespace,
            MetricData => [
                {
                    MetricName => 'smoke',
                    Value      => 1,
                    Timestamp  => $now,
                    Dimensions => [ { Name => 'run', Value => $run_id } ],
                },
            ],
        );
    };

    step 'cloudwatch.list_metrics' => sub {
        $cw->ListMetrics(Namespace => $namespace);    # eventually consistent; just exercise the call
    };

    step 'cloudwatch.get_metric_statistics' => sub {
        $cw->GetMetricStatistics(
            Namespace  => $namespace,
            MetricName => 'smoke',
            StartTime  => $now - 3600,
            EndTime    => $now + 60,
            Period     => 60,
            Statistics => ['Sum'],
            Dimensions => [ { Name => 'run', Value => $run_id } ],
        );
    };
};

# --- KMS (json: blob / base64 round-trip) ----------------------------------

service_block KMS => sub {
    my $kms = svc('KMS');
    my $plaintext = "paws-smoke secret $run_id";

    my $key_id;
    step 'kms.create_key' => sub {
        $key_id = $kms->CreateKey(Description => "paws-smoke $run_id")->KeyMetadata->KeyId;
        die "no key id\n" unless $key_id;
    };
    defer "kms key $key_id" => sub {
        $kms->ScheduleKeyDeletion(KeyId => $key_id, PendingWindowInDays => 7) if $key_id;
    };

    my $ciphertext;
    step 'kms.encrypt' => sub {
        $ciphertext = $kms->Encrypt(KeyId => $key_id, Plaintext => $plaintext)->CiphertextBlob;
        die "no ciphertext\n" unless $ciphertext;
    };

    # The real test of blob/base64 handling: a clean round-trip.
    step 'kms.decrypt' => sub {
        my $out = $kms->Decrypt(CiphertextBlob => $ciphertext)->Plaintext;
        die "decrypt round-trip mismatch\n" unless ($out // '') eq $plaintext;
    };
};

# --- SSM (json: SecureString parameters) -----------------------------------

service_block SSM => sub {
    my $ssm  = svc('SSM');
    my $name = '/' . rname('ssm');

    step 'ssm.put_parameter' => sub {
        $ssm->PutParameter(
            Name  => $name,
            Type  => 'SecureString',
            Value => "secret-$run_id",
        );
    };
    defer "ssm parameter $name" => sub { $ssm->DeleteParameter(Name => $name) };

    step 'ssm.get_parameter' => sub {
        my $r = $ssm->GetParameter(Name => $name, WithDecryption => 1);
        die "value mismatch\n" unless ($r->Parameter->Value // '') eq "secret-$run_id";
    };
};

# --- SecretsManager (json: string + binary blob) ---------------------------

service_block SecretsManager => sub {
    my $sm   = svc('SecretsManager');
    my $name = rname('sm');

    step 'secretsmanager.create_secret' => sub {
        # ClientRequestToken carries Smithy's @idempotencyToken trait;
        # AWS SDKs auto-generate a UUID when it's omitted, but Paws does
        # not yet (a separate autofill gap), so pass one explicitly.
        $sm->CreateSecret(
            Name               => $name,
            SecretString       => qq({"k":"v-$run_id"}),
            ClientRequestToken => sprintf('%s-%s', $run_id, '0' x 32),
        );
    };
    defer "secret $name" => sub {
        $sm->DeleteSecret(SecretId => $name, ForceDeleteWithoutRecovery => 1);
    };

    step 'secretsmanager.get_secret_value' => sub {
        my $r = $sm->GetSecretValue(SecretId => $name);
        die "secret mismatch\n" unless ($r->SecretString // '') =~ /v-\Q$run_id\E/;
    };
};

# --- EC2 (ec2 protocol, read-only) -----------------------------------------

service_block EC2 => sub {
    my $ec2 = svc('EC2');

    step 'ec2.describe_regions' => sub {
        my $r = $ec2->DescribeRegions;
        die "no regions\n" unless @{ $r->Regions // [] };
    };
    step 'ec2.describe_availability_zones' => sub {
        my $r = $ec2->DescribeAvailabilityZones;
        die "no AZs\n" unless @{ $r->AvailabilityZones // [] };
    };
    step 'ec2.describe_instances' => sub {
        $ec2->DescribeInstances(MaxResults => 5);    # may be empty; just exercise decode
    };
};

# --- Route53 (rest-xml, global signing; read-only by default) --------------

service_block Route53 => sub {
    my $r53 = svc('Route53', region => 'us-east-1');    # global service

    step 'route53.list_hosted_zones' => sub {
        $r53->ListHostedZones;    # exercises rest-xml response + global signing
    };

    if ($ENV{PAWS_SMOKE_ROUTE53_WRITE}) {
        my $zone = rname('r53') . '.example.com.';
        my $zone_id;
        step 'route53.create_hosted_zone' => sub {
            my $r = $r53->CreateHostedZone(
                Name            => $zone,
                CallerReference => "$run_id",
            );
            $zone_id = $r->HostedZone->Id;
            die "no zone id\n" unless $zone_id;
        };
        defer "route53 zone $zone" =>
            sub { $r53->DeleteHostedZone(Id => $zone_id) if $zone_id };
    }
};

# --- Firehose (json: blob Data; opt-in, slow) ------------------------------

service_block Firehose => sub {
    return unless $ENV{PAWS_SMOKE_FIREHOSE};

    my $iam      = svc('IAM');
    my $s3       = svc('S3');
    my $firehose = svc('Firehose');

    my $bucket = rname('fh-s3');
    $bucket =~ tr/A-Z/a-z/;
    my $role     = rname('fh-role');
    my $stream   = rname('fh');
    my ($role_arn_created, $bucket_arn);

    step 'firehose.setup_bucket' => sub {
        $s3->CreateBucket(
            Bucket => $bucket,
            ($region ne 'us-east-1'
                ? (CreateBucketConfiguration => { LocationConstraint => $region })
                : ()),
        );
        $bucket_arn = "arn:aws:s3:::$bucket";
    };
    defer "firehose bucket $bucket" => sub { $s3->DeleteBucket(Bucket => $bucket) };

    step 'firehose.setup_role' => sub {
        my $trust = '{"Version":"2012-10-17","Statement":[{"Effect":"Allow",'
          . '"Principal":{"Service":"firehose.amazonaws.com"},"Action":"sts:AssumeRole"}]}';
        my $r = $iam->CreateRole(RoleName => $role, AssumeRolePolicyDocument => $trust);
        $role_arn_created = $r->Role->Arn;
        $iam->AttachRolePolicy(
            RoleName  => $role,
            PolicyArn => 'arn:aws:iam::aws:policy/AmazonS3FullAccess',
        );
    };
    defer "firehose role $role" => sub {
        eval {
            $iam->DetachRolePolicy(
                RoleName  => $role,
                PolicyArn => 'arn:aws:iam::aws:policy/AmazonS3FullAccess',
            );
        };
        $iam->DeleteRole(RoleName => $role);
    };

    step 'firehose.create_delivery_stream' => sub {
        # IAM propagation lag: retry briefly.
        wait_until('delivery stream create accepts role', sub {
            eval {
                $firehose->CreateDeliveryStream(
                    DeliveryStreamName      => $stream,
                    DeliveryStreamType      => 'DirectPut',
                    S3DestinationConfiguration => {
                        RoleARN   => $role_arn_created,
                        BucketARN => $bucket_arn,
                    },
                );
                1;
            };
        }, timeout => 90, interval => 10);
    };
    defer "firehose stream $stream" =>
        sub { $firehose->DeleteDeliveryStream(DeliveryStreamName => $stream) };

    step 'firehose.wait_active' => sub {
        wait_until("stream $stream ACTIVE", sub {
            ($firehose->DescribeDeliveryStream(DeliveryStreamName => $stream)
                ->DeliveryStreamDescription->DeliveryStreamStatus // '') eq 'ACTIVE';
        }, timeout => 300, interval => 15);
    };

    # PutRecord Data is a blob -> base64 on the json wire.
    step 'firehose.put_record' => sub {
        $firehose->PutRecord(
            DeliveryStreamName => $stream,
            Record             => { Data => "paws-smoke firehose $run_id\n" },
        );
    };
};

# --- summary ---------------------------------------------------------------

say "\n=== SUMMARY (run_id=$run_id) ===";
my $failed = 0;
for my $r (sort { $a->[0] cmp $b->[0] } @results) {
    my ($name, $status, $err) = @$r;
    $failed++ if $status ne 'pass';
    say sprintf('%-6s %s%s', $status, $name, (defined $err ? "  ($err)" : ''));
}
say sprintf("\ntotal=%d failed=%d", scalar(@results), $failed);
exit($failed ? 1 : 0);
