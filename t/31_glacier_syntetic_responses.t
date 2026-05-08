#!/usr/bin/env perl

# Synthetic-response and request-side tests for the Glacier protocol
# caller. Glacier's quirks are mostly request-side (the
# x-amz-glacier-version header injected by Paws::Net::GlacierCaller),
# so this PR adds:
#
#   - a smoke test that the version header is set,
#   - a smoke test that response decoding through GlacierCaller
#     (which delegates to RestJsonResponse) works.
#
# Per-trait wire-byte fixtures are PR4's job.

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;
use Paws::GlacierParamsService;
use TestRequestCaller;
use TestGivenResponse;

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

subtest 'request-side: x-amz-glacier-version header is set' => sub {
    my $caller = TestRequestCaller->new;
    my $svc    = $aws->service('GlacierParamsService',
        region => 'us-east-1',
        caller => $caller,
    );

    # TestRequestCaller's caller_to_response returns the captured
    # request object, so the call return value *is* the request.
    my $request = $svc->Method1(AccountId => '-');

    ok($request, 'request prepared');
    is(
        $request->header('x-amz-glacier-version'),
        $svc->version,
        'version header injected by GlacierCaller',
    );
};

subtest 'response-side: empty JSON body decodes' => sub {
    my $svc = $aws->service('GlacierParamsService',
        region => 'us-east-1',
        caller => 'TestGivenResponse',
    );

    my $r = $svc->Method1(AccountId => '-', response => '{}');
    isa_ok($r, 'Paws::GlacierParamsService::Method1Return');
};

# Since GlacierCaller delegates to RestJsonCaller for everything else,
# response-side parity is already covered by t/21_restjson_*. The
# value of a Glacier synthetic-service is asserting that GlacierCaller
# layered atop RestJsonCaller works as a unit; PR4 will add full
# request-side coverage for tree-hashing, account-id defaulting, etc.

done_testing;
