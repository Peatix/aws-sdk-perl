#!/usr/bin/env perl

# A compiled rule in share/endpoint-rules.json is chosen once per service
# client and selected on the client's region alone. A Smithy ruleset can
# also branch on parameters the ruleset expects per operation (a
# contextParam or staticContextParam rather than a builtIn), and those
# branches describe endpoints this resolver can never legitimately pick.
#
# DynamoDB is the case this test exists for. Its ruleset gained an
# IsSearchOperation parameter, whose branch compiled to an unconstrained
#
#     https://search-dynamodb.{region}.amazonaws.com
#
# rule sitting ahead of the real regional endpoint. Paws::API::EndpointResolver
# takes the first matching rule, so every DynamoDB call in every region went
# to a host that answers 400, and the regional rule became dead code.
#
# Part 1 pins the compiler's behaviour on that ruleset; Part 2 pins the
# resolved host for the services this distribution publishes, which is what
# a consumer actually depends on.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use File::Temp qw(tempdir);
use Test::More;
use JSON::PP qw(decode_json);

use lib "$Bin/../lib";
use lib "$Bin/../../lib";

use Paws::Test::MaterialiseServices;

my $repo_root = "$Bin/../..";

# ── Part 1: the compiler drops operation-scoped branches ──────────

subtest 'compiling the DynamoDB ruleset yields only client-selectable rules' => sub {
    my $smithy_dir = "$repo_root/share/smithy/dynamodb";
    ok(-d $smithy_dir, 'the vendored DynamoDB ruleset is present')
        or return;

    my $out = tempdir(CLEANUP => 1) . '/rules.json';
    my $script = "$repo_root/script/compile-endpoint-rules";
    my $ok = system($^X, $script, '--smithy-dir', $smithy_dir, '--output', $out) == 0;
    ok($ok, 'compile-endpoint-rules runs over a single ruleset') or return;

    open my $fh, '<', $out or die "Cannot read $out: $!";
    local $/;
    my $rules = decode_json(<$fh>)->{dynamodb};
    close $fh;

    ok($rules && @$rules, 'DynamoDB compiles to at least one rule') or return;

    my @hosts = map { $_->{uri} } @$rules;
    is_deeply(
        [ grep { /search-dynamodb/ } @hosts ],
        [],
        'no rule points at the IsSearchOperation-only search host'
    ) or diag(join "\n", @hosts);

    # The last rule is the one that matches an ordinary regional client.
    is($rules->[-1]{uri}, 'https://dynamodb.{region}.amazonaws.com',
        'the regional endpoint is reachable rather than shadowed');
};

# ── Part 2: the published services resolve to their real hosts ────

subtest 'published services resolve to their documented regional host' => sub {
    use Paws;
    use Paws::Credential::Explicit;

    my $paws = Paws->new(config => {
        credentials => Paws::Credential::Explicit->new(
            access_key => 'test', secret_key => 'test',
        ),
        caller => 'Paws::Net::Caller',
    });

    # The per-service dists this distribution releases. Keyed by class
    # name, valued on the host prefix AWS documents for the service.
    my %host_prefix = (
        CloudWatch     => 'monitoring',
        DynamoDB       => 'dynamodb',
        EC2            => 'ec2',
        Firehose       => 'firehose',
        KMS            => 'kms',
        Lambda         => 'lambda',
        SecretsManager => 'secretsmanager',
        SESv2          => 'email',
        SQS            => 'sqs',
        SSM            => 'ssm',
    );

    my @regions = qw( us-east-1 eu-west-1 ap-northeast-1 );

    for my $class (sort keys %host_prefix) {
        for my $region (@regions) {
            my $svc = $paws->service($class, region => $region);
            is($svc->endpoint_host, "$host_prefix{$class}.$region.amazonaws.com",
                "$class in $region");
        }
    }
};

done_testing;
