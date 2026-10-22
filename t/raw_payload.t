#!/usr/bin/env perl

# An httpPayload member that targets a blob or string is the raw HTTP
# body, streaming or not. Lambda Invoke is the case that broke: its
# Payload was sent as {"Payload":"..."} and the response body never
# reached ->Payload. S3 PutBucketPolicy / GetBucketPolicy cover the
# same rule on rest-xml.

use strict;
use warnings;

use lib 't/lib';
use Paws::Test::MaterialiseServices;

use Test::More;
use Paws;
use TestRequestCaller;
use TestSyntheticHttpCaller;

Paws->default_config->credentials('Test::CustomCredentials');

my $json = '{"v":1,"op":"unwrap-cek"}';

subtest 'materialised classes carry _stream_param' => sub {
    for my $case (
        [ 'Paws::Lambda::Invoke',              'Payload' ],
        [ 'Paws::Lambda::InvocationResponse',  'Payload' ],
        [ 'Paws::S3::PutBucketPolicy',         'Policy'  ],
        [ 'Paws::S3::GetBucketPolicyOutput',   'Policy'  ],
    ) {
        my ( $class, $member ) = @$case;
        Paws->load_class($class);
        can_ok( $class, '_stream_param' );
        is( $class->can('_stream_param') && $class->_stream_param,
            $member, "$class->_stream_param is '$member'" );
    }
};

subtest 'Lambda Invoke sends Payload as the raw body' => sub {
    my $lambda = Paws->service( 'Lambda',
        region => 'us-east-1',
        caller => TestRequestCaller->new,
    );
    my $req = $lambda->Invoke( FunctionName => 'f', Payload => $json );

    is( $req->content, $json, 'request body is the Payload itself' );
};

subtest 'Lambda Invoke returns the raw body as Payload' => sub {
    my $lambda = Paws->service( 'Lambda',
        region => 'us-east-1',
        caller => TestSyntheticHttpCaller->new( canned_content => $json ),
    );
    my $res = $lambda->Invoke( FunctionName => 'f', Payload => '{}' );

    is( $res->Payload, $json, 'response body is bound to Payload' );
};

subtest 'S3 PutBucketPolicy sends Policy as the raw body' => sub {
    my $s3 = Paws->service( 'S3',
        region => 'us-west-2',
        caller => TestRequestCaller->new,
    );
    my $req = $s3->PutBucketPolicy( Bucket => 'b', Policy => $json );

    is( $req->content, $json, 'request body is the Policy document itself' );
};

subtest 'S3 GetBucketPolicy returns the raw body as Policy' => sub {
    my $s3 = Paws->service( 'S3',
        region => 'us-west-2',
        caller => TestSyntheticHttpCaller->new( canned_content => $json ),
    );
    my $res = $s3->GetBucketPolicy( Bucket => 'b' );

    is( $res->Policy, $json, 'response body is bound to Policy' );
};

done_testing;
