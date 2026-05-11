#!/usr/bin/env perl

# End-to-end test: real Smithy IR -> loader -> IR -> materialiser ->
# Paws class -> wire-layer request preparation -> response decoding.
#
# Why this test exists
# --------------------
# The Smithy loader (Paws::Model::Loader::Smithy) was originally
# unit-tested only against a hand-written 50-line synthetic fixture
# (t/model/fixtures/tinyservice/tinyservice.smithy.json).
# It carried none of the things real Smithy IR has: resources,
# resource-bound operations, missing endpointPrefix, smithy.api#Unit
# for empty input/output, target_prefix derivation from the service
# shape's local name vs sdkId.
#
# Three real services are vendored under t/model/fixtures/smithy-real/
# (see SOURCES.md there) and exercised end-to-end below:
#
#   - account.smithy.json (restJson1; operations live under resources)
#   - sts.smithy.json     (awsQuery; no @http traits on operations)
#   - health.smithy.json  (awsJson1_1; smithy.api#Unit; distinct
#                          target_prefix = local-name of service shape)
#
# Each service walks the same six steps:
#
#   1. Load the fixture via Paws::Model::Loader::Smithy.
#   2. Inspect the resulting Paws::Model::IR::Service: protocol,
#      endpoint_prefix, target_prefix, json_version, operation count,
#      shape count, presence of representative operations and shapes.
#   3. Materialise via Paws::Model::Materializer::Moo into a renamed
#      package namespace (Paws::SmithyE2E<Svc>) so we don't collide
#      with anything in auto-lib/.
#   4. Pick a representative operation, build the call object with
#      typical inputs, run it through TestRequestCaller, and assert
#      HTTP method / URI / target header / body shape.
#   5. Pick a canned response (bytes inline below), decode through
#      the materialised response class, assert the decoded object.
#
# Failing subtests are tagged with `# TODO(smithy-e2e):` and a brief
# description of the bug; that lets us land the test as a regression
# fence even when a deep bug is deferred to a follow-up.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;

use lib "$Bin/../lib";
use lib "$Bin/../../builder-lib";
use lib "$Bin/../../lib";

use Paws;
use Paws::Model::IR;
use Paws::Model::Loader::Smithy;
use Paws::Model::Materializer::Moo;
use Paws::SerDes;
use Paws::Net::APIResponse;
use TestRequestCaller;
use Test::CustomCredentials;

# Per-service rename of the IR's `name` field, so the materialised
# Paws::<name> doesn't collide with any existing classes. The same
# trick is used in t/model/02 and t/model/03.
sub _rename_service {
    my ($svc, $new_name) = @_;
    return Paws::Model::IR::Service->new(
        name              => $new_name,
        full_name         => $svc->full_name,
        endpoint_prefix   => $svc->endpoint_prefix,
        signing_name      => $svc->signing_name,
        api_version       => $svc->api_version,
        protocol          => $svc->protocol,
        json_version      => $svc->json_version,
        target_prefix     => $svc->target_prefix,
        signature_version => $svc->signature_version,
        operations        => $svc->operations,
        shapes            => $svc->shapes,
    );
}

sub _materialise {
    my ($svc, $new_name) = @_;
    my $ir  = _rename_service($svc, $new_name);
    my $loader = Paws::Model::Loader::Smithy->new;
    my $mat = Paws::Model::Materializer::Moo->new(loader => $loader);
    return ($mat->materialize_service($ir), $ir);
}

sub _new_service {
    my ($pkg) = @_;
    return $pkg->new(
        region      => 'us-east-1',
        caller      => TestRequestCaller->new,
        credentials => Test::CustomCredentials->new,
    );
}

# -------------------------------------------------------------------
# health.smithy.json  --  awsJson1_1, smithy.api#Unit, distinct
# target_prefix derived from the service shape's local name.
# -------------------------------------------------------------------

subtest 'health.smithy.json: awsJson1_1' => sub {
    my $loader = Paws::Model::Loader::Smithy->new;
    my $svc    = $loader->load("$Bin/fixtures/smithy-real/health.smithy.json");

    subtest 'IR shape' => sub {
        is $svc->name,            'Health',           'name (sdkId)';
        is $svc->endpoint_prefix, 'health',           'endpoint_prefix';
        is $svc->protocol,        'json',             'protocol';
        is $svc->json_version,    '1.1',              'json_version';
        is $svc->api_version,     '2016-08-04',       'api_version';

        is $svc->target_prefix, 'AWSHealth_20160804',
            'target_prefix is the service shape local name';

        my @ops = $svc->operation_names;
        is scalar(@ops), 14, 'all 14 operations enumerated';
        ok $svc->operation('DescribeAffectedAccountsForOrganization'),
           'representative op DescribeAffectedAccountsForOrganization present';
        ok $svc->operation('DescribeHealthServiceStatusForOrganization'),
           'unit-input op DescribeHealthServiceStatusForOrganization present';

        # Smithy's `smithy.api#Unit` placeholder for empty input must be
        # represented as an undef input_shape, NOT a string 'Unit',
        # otherwise the materialiser will croak looking for a non-
        # existent `Unit` shape.
        my $unit_op = $svc->operation('DescribeHealthServiceStatusForOrganization');
        is $unit_op->input_shape, undef,
           'input_shape is undef for smithy.api#Unit (not the string "Unit")';

        ok $svc->shape('EventActionability'),
           'enum shape EventActionability present';
        is $svc->shape('EventActionability')->type, 'string',
           'enum shape normalised back to string type';
        is_deeply
            [ sort @{ $svc->shape('EventActionability')->enum_values } ],
            [ qw(ACTION_MAY_BE_REQUIRED ACTION_REQUIRED INFORMATIONAL) ],
            'enum_values pulled from member names';
    };

    my ($pkg) = _materialise($svc, 'SmithyE2EHealth');
    is $pkg, 'Paws::SmithyE2EHealth', 'service materialised';

    subtest 'materialised metadata' => sub {
        is $pkg->service,       'health',                    'service';
        is $pkg->version,       '2016-08-04',                'version';
        is $pkg->target_prefix, 'AWSHealth_20160804',        'target_prefix';
        is $pkg->json_version,  '1.1',                       'json_version';
    };

    subtest 'wire-layer request preparation' => sub {
        my $svc_obj = _new_service($pkg);

        my $req = $svc_obj->DescribeAffectedAccountsForOrganization(
            eventArn => 'arn:aws:health:us-east-1::event/AWS_EBS_VOLUME_LOST',
        );
        isa_ok $req, 'Paws::Net::APIRequest', 'request prepared';
        is $req->method, 'POST', 'POST';
        is $req->uri,    '/',    '/';
        is $req->header('X-Amz-Target'),
           'AWSHealth_20160804.DescribeAffectedAccountsForOrganization',
           'X-Amz-Target uses local-name target_prefix';
        like $req->headers->header('Content-Type'),
             qr{application/x-amz-json-1\.1},
             'Content-Type pinned to JSON 1.1';
        like $req->content,
             qr/"eventArn"\s*:\s*"arn:aws:health:us-east-1::event\/AWS_EBS_VOLUME_LOST"/,
             'JSON body carries eventArn';
    };

    subtest 'response decoding' => sub {
        my $svc_obj = _new_service($pkg);
        my $op_pkg  = 'Paws::SmithyE2EHealth::DescribeAffectedAccountsForOrganization';
        ok $op_pkg->can('_returns'),
           'op class has _returns';
        is $op_pkg->_returns,
           'Paws::SmithyE2EHealth::DescribeAffectedAccountsForOrganizationResponse',
           '_returns points at output shape package';

        my $body = '{"affectedAccounts":["123456789012","210987654321"],"nextToken":"abc"}';
        my $resp = Paws::Net::APIResponse->new(
            status  => 200,
            content => $body,
            headers => { 'x-amzn-requestid' => 'fake-uuid' },
        );

        my $result = $svc_obj->response_to_object->process($op_pkg, $resp);
        isa_ok $result,
            'Paws::SmithyE2EHealth::DescribeAffectedAccountsForOrganizationResponse';
        is_deeply [ sort @{ $result->affectedAccounts } ],
            [ '123456789012', '210987654321' ],
            'affectedAccounts list decoded';
        is $result->nextToken, 'abc', 'nextToken decoded';
    };
};

# -------------------------------------------------------------------
# sts.smithy.json -- awsQuery, no @http trait on ops, target_prefix
# unused on the wire.
# -------------------------------------------------------------------

subtest 'sts.smithy.json: awsQuery' => sub {
    my $loader = Paws::Model::Loader::Smithy->new;
    my $svc    = $loader->load("$Bin/fixtures/smithy-real/sts.smithy.json");

    subtest 'IR shape' => sub {
        is $svc->name,            'STS',              'name (sdkId)';
        is $svc->endpoint_prefix, 'sts',              'endpoint_prefix';
        is $svc->protocol,        'query',            'protocol';
        is $svc->api_version,     '2011-06-15',       'api_version';

        my @ops = $svc->operation_names;
        is scalar(@ops), 11, 'all 11 operations enumerated';

        for my $op (qw(AssumeRole GetCallerIdentity GetSessionToken)) {
            ok $svc->operation($op), "representative op $op present";
        }

        # awsQuery defaults: every operation is POST to / when no
        # @smithy.api#http trait is present.
        my $assume = $svc->operation('AssumeRole');
        is $assume->http_method, 'POST', 'http_method default POST';
        is $assume->http_uri,    '/',    'http_uri default /';

        is_deeply
            [ sort @{ $svc->shape('AssumeRoleRequest')->required_members } ],
            [ qw(RoleArn RoleSessionName) ],
            'required_members of AssumeRoleRequest';
    };

    my ($pkg) = _materialise($svc, 'SmithyE2ESTS');
    is $pkg, 'Paws::SmithyE2ESTS', 'service materialised';

    subtest 'materialised metadata' => sub {
        is $pkg->service, 'sts',        'service';
        is $pkg->version, '2011-06-15', 'version';
    };

    subtest 'wire-layer request preparation (AssumeRole)' => sub {
        my $svc_obj = _new_service($pkg);

        my $req = $svc_obj->AssumeRole(
            RoleArn         => 'arn:aws:iam::111122223333:role/Demo',
            RoleSessionName => 'paws-e2e',
            DurationSeconds => 900,
        );
        isa_ok $req, 'Paws::Net::APIRequest', 'request prepared';
        is $req->method, 'POST', 'POST';
        is $req->uri,    '/',    '/';
        like $req->headers->header('Content-Type'),
             qr{application/x-www-form-urlencoded},
             'Content-Type form-urlencoded';
        my $body = $req->content;
        like $body, qr/(?:^|&)Action=AssumeRole(?:&|$)/,
             'body has Action=AssumeRole';
        like $body, qr/(?:^|&)Version=2011-06-15(?:&|$)/,
             'body has Version=2011-06-15';
        like $body,
             qr/(?:^|&)RoleArn=arn(?:%3A|:)aws(?:%3A|:)iam(?:%3A|:)(?:%3A|:)111122223333(?:%3A|:)role(?:%2F|\/)Demo(?:&|$)/,
             'body has RoleArn (URL-encoded)';
        like $body, qr/(?:^|&)RoleSessionName=paws-e2e(?:&|$)/,
             'body has RoleSessionName';
        like $body, qr/(?:^|&)DurationSeconds=900(?:&|$)/,
             'body has DurationSeconds';
    };

    subtest 'response decoding (GetCallerIdentity)' => sub {
        my $svc_obj = _new_service($pkg);
        my $op_pkg  = 'Paws::SmithyE2ESTS::GetCallerIdentity';
        is $op_pkg->_returns, 'Paws::SmithyE2ESTS::GetCallerIdentityResponse',
            '_returns points at output shape package';

        my $body = <<'XML';
<GetCallerIdentityResponse xmlns="https://sts.amazonaws.com/doc/2011-06-15/">
  <GetCallerIdentityResult>
    <Arn>arn:aws:iam::123456789012:user/Alice</Arn>
    <UserId>AIDAEXAMPLE</UserId>
    <Account>123456789012</Account>
  </GetCallerIdentityResult>
  <ResponseMetadata>
    <RequestId>01234567-89ab-cdef-0123-456789abcdef</RequestId>
  </ResponseMetadata>
</GetCallerIdentityResponse>
XML

        my $resp = Paws::Net::APIResponse->new(
            status  => 200,
            content => $body,
            headers => { 'x-amz-request-id' => '01234567-89ab-cdef-0123-456789abcdef' },
        );

        my $result = $svc_obj->response_to_object->process($op_pkg, $resp);
        isa_ok $result, 'Paws::SmithyE2ESTS::GetCallerIdentityResponse';
        is $result->Account, '123456789012',                    'Account decoded';
        is $result->Arn,     'arn:aws:iam::123456789012:user/Alice', 'Arn decoded';
        is $result->UserId,  'AIDAEXAMPLE',                     'UserId decoded';
    };
};

# -------------------------------------------------------------------
# account.smithy.json -- restJson1, operations live under
# `service.resources[]`. Stresses the loader's resource walker.
# -------------------------------------------------------------------

subtest 'account.smithy.json: restJson1 with resources' => sub {
    my $loader = Paws::Model::Loader::Smithy->new;
    my $svc    = $loader->load("$Bin/fixtures/smithy-real/account.smithy.json");

    subtest 'IR shape' => sub {
        is $svc->name,            'Account',     'name (sdkId)';
        is $svc->endpoint_prefix, 'account',     'endpoint_prefix';
        is $svc->protocol,        'rest-json',   'protocol';
        is $svc->api_version,     '2021-02-01',  'api_version';

        # account.json defines its operations via `service.resources[]`.
        # The loader must walk those resources to enumerate operations,
        # otherwise it sees zero ops despite there being 15 in the AST.
        my @ops = $svc->operation_names;
        is scalar(@ops), 15, 'all 15 resource-bound operations enumerated';

        for my $op (qw(GetContactInformation PutContactInformation
                       ListRegions GetAlternateContact PutAccountName)) {
            ok $svc->operation($op), "representative op $op present";
        }

        my $get_ci = $svc->operation('GetContactInformation');
        is $get_ci->http_method, 'POST',
           'http_method from smithy.api#http trait';
        is $get_ci->http_uri,    '/getContactInformation',
           'http_uri from smithy.api#http trait';

        # smithy.api#Unit output for void-returning operations.
        my $disable = $svc->operation('DisableRegion');
        is $disable->output_shape, undef,
           'Unit output mapped to undef output_shape';

        ok $svc->shape('ContactInformation'),
           'output structure ContactInformation present';
        ok $svc->shape('Region'),
           'list-element structure Region present';
    };

    my ($pkg) = _materialise($svc, 'SmithyE2EAccount');
    is $pkg, 'Paws::SmithyE2EAccount', 'service materialised';

    subtest 'materialised metadata' => sub {
        is $pkg->service, 'account',    'service';
        is $pkg->version, '2021-02-01', 'version';
    };

    subtest 'wire-layer request preparation (PutContactInformation)' => sub {
        # TODO(smithy-e2e): nested-structure inputs cannot be coerced
        # under the Moo + Type::Tiny materialiser backend.
        # Paws.pm::new_with_coercions stringifies the nested attribute's
        # type-constraint as `InstanceOf["Paws::*::ContactInformation"]`
        # and recurses with that string; the recursive
        # Paws->load_class("InstanceOf[\"...\"]") then fails because
        # the string is not a class name. Already TODO-marked in
        # auto-lib/Paws.pm as TODO(stack19-retry); the fix requires
        # branching on the type-constraint *object* (Type::Tiny::Class
        # exposes ->class) which is too wide-reaching for this test
        # PR. Deferred to follow-up.
        my $svc_obj = _new_service($pkg);

        my $contact = 'Paws::SmithyE2EAccount::ContactInformation'->new(
            AddressLine1 => '123 Example St',
            City         => 'Anytown',
            CountryCode  => 'US',
            FullName     => 'Alice Example',
            PhoneNumber  => '+15551234',
            PostalCode   => '12345',
            StateOrRegion=> 'CA',
        );

        my $req = eval {
            $svc_obj->PutContactInformation(ContactInformation => $contact);
        };
        my $err = $@;

        TODO: {
            local $TODO = 'TODO(smithy-e2e): nested-structure input coercion '
                        . 'broken under Moo backend; see TODO(stack19-retry) '
                        . 'in auto-lib/Paws.pm';

            ok !$err, "no exception preparing request: $err"
                or diag $err;
            isa_ok $req, 'Paws::Net::APIRequest', 'request prepared';
            if ($req && ref $req) {
                is $req->method, 'POST', 'POST';
                like $req->uri, qr{/putContactInformation}, 'URI matches @http';
                like $req->content, qr/"FullName"\s*:\s*"Alice Example"/,
                     'JSON body carries nested ContactInformation.FullName';
                like $req->content, qr/"CountryCode"\s*:\s*"US"/,
                     'JSON body carries nested ContactInformation.CountryCode';
            } else {
                fail 'follow-on assertions not run because request prep died';
            }
        }
    };

    subtest 'wire-layer request preparation (GetContactInformation, no input)' => sub {
        my $svc_obj = _new_service($pkg);
        my $req = $svc_obj->GetContactInformation();
        isa_ok $req, 'Paws::Net::APIRequest', 'request prepared';
        is $req->method, 'POST', 'POST';
        like $req->uri, qr{/getContactInformation}, 'URI matches @http';
    };

    subtest 'response decoding (GetContactInformation)' => sub {
        my $svc_obj = _new_service($pkg);
        my $op_pkg  = 'Paws::SmithyE2EAccount::GetContactInformation';
        is $op_pkg->_returns,
           'Paws::SmithyE2EAccount::GetContactInformationResponse',
           '_returns points at output shape package';

        my $body = <<'JSON';
{
  "ContactInformation": {
    "AddressLine1": "123 Example St",
    "City": "Anytown",
    "CountryCode": "US",
    "FullName": "Alice Example",
    "PhoneNumber": "+15551234",
    "PostalCode": "12345",
    "StateOrRegion": "CA"
  }
}
JSON

        my $resp = Paws::Net::APIResponse->new(
            status  => 200,
            content => $body,
            headers => { 'x-amzn-requestid' => 'fake-uuid' },
        );

        my $result = $svc_obj->response_to_object->process($op_pkg, $resp);
        isa_ok $result, 'Paws::SmithyE2EAccount::GetContactInformationResponse';
        my $ci = $result->ContactInformation;
        isa_ok $ci, 'Paws::SmithyE2EAccount::ContactInformation';
        is $ci->FullName,    'Alice Example', 'FullName decoded';
        is $ci->CountryCode, 'US',            'CountryCode decoded';
    };
};

done_testing;
