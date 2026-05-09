#!/usr/bin/env perl

# Behavioural tests for Paws::Net::DebugCaller. Drives the wrapper
# through the JsonParamsService synthetic service (no real HTTP) via
# TestSyntheticHttpCaller, asserting the YAML record's shape, header
# redaction, body truncation, error-outcome marking, and env-var
# precedence over the constructor `capture_path`.

use strict;
use warnings;

use lib 't/lib';

use File::Temp qw(tempdir);
use Test::More;
use Test::Exception;
use YAML qw(LoadFile);

use Paws;
use Paws::JsonParamsService;
use Paws::Net::DebugCaller;
use TestSyntheticHttpCaller;

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

sub make_service {
    my (%caller_args) = @_;
    my $inner = TestSyntheticHttpCaller->new(%{ delete($caller_args{inner_args}) || {} });
    my $debug = Paws::Net::DebugCaller->new(
        wrapped => $inner,
        %caller_args,
    );
    return ($debug, $aws->service('JsonParamsService',
        region => 'us-east-1',
        caller => $debug,
    ));
}

subtest 'YAML file is written and contains documented top-level fields' => sub {
    my $dir  = tempdir(CLEANUP => 1);
    my $path = "$dir/capture.yaml";

    my (undef, $svc) = make_service(capture_path => $path);
    $svc->Method1(response => '{"StringAttribute":"hi"}');

    ok(-e $path, 'capture file exists at the configured path');
    my $rec = LoadFile($path);

    foreach my $key (qw(operation outcome timestamp duration_ms arguments request response metadata)) {
        ok(exists $rec->{$key}, "top-level field '$key' present");
    }

    is($rec->{operation}, 'jsonparams / Method1', 'operation is service / api_call');
    is($rec->{outcome},   'success',              'success outcome on 200');
    like($rec->{timestamp}, qr/^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}Z$/, 'timestamp is ISO8601 UTC');
    like($rec->{duration_ms}, qr/^\d+(?:\.\d+)?$/, 'duration_ms is numeric');

    is(ref $rec->{arguments}, 'HASH', 'arguments is a hash');
    is(ref $rec->{request},   'HASH', 'request is a hash');
    is(ref $rec->{response},  'HASH', 'response is a hash');
    is(ref $rec->{metadata},  'HASH', 'metadata is a hash');

    is($rec->{request}{method}, 'POST', 'request method captured');
    like($rec->{request}{url}, qr{^https?://}, 'request url captured');
    is(ref $rec->{request}{headers}, 'HASH', 'request headers captured');
    is($rec->{response}{status}, 200, 'response status captured');

    is($rec->{metadata}{service_class}, 'Paws::JsonParamsService', 'metadata.service_class set');
    is($rec->{metadata}{caller_class},  'TestSyntheticHttpCaller', 'metadata.caller_class set to wrapped');
    is($rec->{metadata}{region},        'us-east-1',                'metadata.region set');
    is($rec->{metadata}{api_version},   '2016-09-25',               'metadata.api_version set');
    ok(exists $rec->{metadata}{sdk_version},  'metadata.sdk_version set');
    ok(exists $rec->{metadata}{perl_version}, 'metadata.perl_version set');
};

subtest 'Authorization and *-token headers are redacted in request' => sub {
    my $dir  = tempdir(CLEANUP => 1);
    my $path = "$dir/redact.yaml";

    my (undef, $svc) = make_service(capture_path => $path);
    $svc->Method1(response => '{}');

    my $rec = LoadFile($path);
    my $headers = $rec->{request}{headers};

    # JsonCaller signs every request, so Authorization should be present
    # in the captured headers — and redacted.
    ok(exists $headers->{Authorization}, 'Authorization header present');
    is($headers->{Authorization}, '<REDACTED>', 'Authorization header redacted');

    # And the response headers are NOT redacted (informational from AWS).
    my $rheaders = $rec->{response}{headers};
    like($rheaders->{'x-amz-request-id'} // '', qr/fake-uuid/, 'response headers not redacted');
};

subtest 'arbitrary header matching /token/i is redacted' => sub {
    my $dir  = tempdir(CLEANUP => 1);
    my $path = "$dir/token.yaml";

    my (undef, $svc) = make_service(capture_path => $path);

    # Inject a header that matches /token/i into the prepared request.
    # We do this by wrapping the inner caller's send_request; the
    # cleanest hook is to swap the inner caller's behaviour for this
    # subtest only.
    my $inner = TestSyntheticHttpCaller->new(canned_headers => {
        'x-aws-session-Token'  => 'super-secret-session',
        'x-amzn-requestid'     => 'fake-uuid',
    });
    my $debug = Paws::Net::DebugCaller->new(
        wrapped      => $inner,
        capture_path => $path,
    );
    my $svc2 = $aws->service('JsonParamsService',
        region => 'us-east-1',
        caller => $debug,
    );
    $svc2->Method1(response => '{}');

    my $rec = LoadFile($path);
    # Response headers are not redacted (informational), so the canned
    # x-aws-session-Token header surfaces in `response.headers` but is
    # stripped only from `request.headers`. Verify the request-side
    # rule by injecting via the request preparation path: the JSON
    # caller doesn't add a token header itself, so we assert the
    # generic rule by directly invoking the redactor.
    my $caller = Paws::Net::DebugCaller->new(
        wrapped      => $inner,
        capture_path => $path,
    );
    my $redacted = $caller->_redact_headers({
        'X-Amz-Security-Token' => 'sensitive',
        'authorization'        => 'AWS4-HMAC-SHA256 ...',
        'x-amz-date'           => '20260101T000000Z',
        'content-type'         => 'application/json',
    });
    is($redacted->{'X-Amz-Security-Token'}, '<REDACTED>', 'token-bearing header redacted (case-insensitive)');
    is($redacted->{authorization},          '<REDACTED>', 'authorization redacted');
    is($redacted->{'x-amz-date'},           '20260101T000000Z', 'non-sensitive header preserved');
    is($redacted->{'content-type'},         'application/json', 'non-sensitive header preserved');
};

subtest 'body bytes >1 KiB are truncated with a note' => sub {
    my $dir  = tempdir(CLEANUP => 1);
    my $path = "$dir/big.yaml";

    # 4096 bytes of repeated 'x' is not valid JSON; the JsonCaller's
    # response decoder will throw on it. We don't care — DebugCaller
    # writes the YAML inside `send_request` which runs before
    # `caller_to_response`, so the capture is made regardless.
    my $big_body = 'x' x 4096;
    my $inner = TestSyntheticHttpCaller->new(
        canned_status  => 200,
        canned_content => $big_body,
    );
    my $debug = Paws::Net::DebugCaller->new(
        wrapped      => $inner,
        capture_path => $path,
    );
    my $svc = $aws->service('JsonParamsService',
        region => 'us-east-1',
        caller => $debug,
    );
    eval { $svc->Method1(response => '{}'); };

    ok(-e $path, 'capture file exists despite downstream decode failure');
    my $rec  = LoadFile($path);
    my $body = $rec->{response}{body};

    is(ref $body, 'HASH', 'truncated body is structured (HASH)');
    ok($body->{truncated}, 'truncated flag set');
    is($body->{original_length}, length $big_body, 'original_length recorded');
    ok(exists $body->{text} || exists $body->{base64}, 'truncated body carries text or base64');

    if (exists $body->{text}) {
        cmp_ok(length $body->{text}, '<=', 1024, 'truncated text is at most the limit');
    } else {
        cmp_ok(length $body->{base64}, '>', 0, 'truncated base64 is non-empty');
    }
};

subtest 'binary body is base64-encoded' => sub {
    my $dir  = tempdir(CLEANUP => 1);
    my $path = "$dir/binary.yaml";

    my $bin   = pack('C*', 0x00, 0xff, 0x10, 0x20, 0x80, 0x81);
    my $inner = TestSyntheticHttpCaller->new(
        canned_status  => 200,
        canned_content => $bin,
    );
    my $debug = Paws::Net::DebugCaller->new(
        wrapped      => $inner,
        capture_path => $path,
    );
    my $svc = $aws->service('JsonParamsService',
        region => 'us-east-1',
        caller => $debug,
    );
    # Binary content is not valid JSON; the decoder will throw. We
    # only care about the capture, which is written before
    # caller_to_response runs.
    eval { $svc->Method1(response => '{}'); };

    ok(-e $path, 'capture file exists despite downstream decode failure');
    my $rec  = LoadFile($path);
    my $body = $rec->{response}{body};

    is(ref $body, 'HASH', 'binary body is structured (HASH)');
    is($body->{encoding}, 'base64', 'encoding is base64');
    ok(!$body->{truncated}, 'short binary is not truncated');
    ok(length $body->{base64}, 'base64 payload non-empty');
};

subtest 'outcome=error on a 400 response, response section captured' => sub {
    my $dir  = tempdir(CLEANUP => 1);
    my $path = "$dir/err.yaml";

    my $err_body = '{"__type":"InvalidParameter","message":"bad bucket name"}';
    my $inner = TestSyntheticHttpCaller->new(
        canned_status  => 400,
        canned_content => $err_body,
    );
    my $debug = Paws::Net::DebugCaller->new(
        wrapped      => $inner,
        capture_path => $path,
    );
    my $svc = $aws->service('JsonParamsService',
        region => 'us-east-1',
        caller => $debug,
    );

    # JsonResponse converts a 4xx into a Paws::Exception. Calling the
    # operation will return that exception as the result; the
    # JsonParamsService doesn't throw on its own. Either way the
    # capture should land before the exception path runs.
    eval { $svc->Method1(response => '{}'); };

    ok(-e $path, 'capture file written for 400 response');
    my $rec = LoadFile($path);
    is($rec->{outcome}, 'error', 'outcome is error');
    is($rec->{response}{status}, 400, 'response.status captured');

    # Body is short and text-y, so it stays as a verbatim string.
    is($rec->{response}{body}, $err_body, 'response.body captured verbatim');
};

subtest 'PAWS_DEBUG_CAPTURE_PATH overrides constructor capture_path' => sub {
    my $dir       = tempdir(CLEANUP => 1);
    my $ctor_path = "$dir/ctor.yaml";
    my $env_path  = "$dir/env.yaml";

    local $ENV{PAWS_DEBUG_CAPTURE_PATH} = $env_path;

    my (undef, $svc) = make_service(capture_path => $ctor_path);
    $svc->Method1(response => '{}');

    ok(  -e $env_path,  'env-var path is used');
    ok(! -e $ctor_path, 'constructor path is NOT used when env var is set');
};

subtest 'auto-generated filename when neither env nor ctor is set' => sub {
    my $dir = tempdir(CLEANUP => 1);
    my $cwd = do { require Cwd; Cwd::getcwd(); };
    chdir $dir or die "chdir $dir: $!";

    local %ENV = %ENV;
    delete $ENV{PAWS_DEBUG_CAPTURE_PATH};

    my (undef, $svc) = make_service();
    $svc->Method1(response => '{}');

    chdir $cwd or die "chdir $cwd: $!";

    opendir(my $dh, $dir) or die "opendir $dir: $!";
    my @yamls = grep { /^paws-debug-.*\.yaml$/ } readdir $dh;
    closedir $dh;

    is(scalar @yamls, 1, 'exactly one auto-named YAML written');
    like($yamls[0], qr/^paws-debug-\d{8}T\d{6}Z-jsonparams-Method1\.yaml$/,
        'auto filename is paws-debug-<stamp>-<service>-<op>.yaml');
};

subtest 'arguments include user params, exclude SDK internals' => sub {
    my $dir  = tempdir(CLEANUP => 1);
    my $path = "$dir/args.yaml";

    my (undef, $svc) = make_service(capture_path => $path);
    $svc->Method1(response => '{"StringAttribute":"hi"}');

    my $rec  = LoadFile($path);
    my $args = $rec->{arguments};
    is(ref $args, 'HASH', 'arguments is a hash');
    is($args->{response}, '{"StringAttribute":"hi"}', 'user-supplied response param captured');
    ok(!exists $args->{_api_call}, 'underscore-prefixed internals stripped by to_hash');
};

done_testing;
