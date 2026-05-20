#!/usr/bin/env perl

# Regression test for GitHub issue #149.
#
# Validates that share/endpoint-rules.json contains no URI template
# variables beyond those that Paws::API::EndpointResolver can resolve
# ({region}, {service}, {scheme}). Rules with unresolvable variables
# produce invalid hostnames at runtime because URI::Template->process()
# substitutes them with the empty string.
#
# Additionally verifies that services which previously had problematic
# rules (SESv2, CloudWatchEvents, Kinesis, S3Control) resolve to valid
# regional endpoints at runtime.

use strict;
use warnings;
use v5.10;

use FindBin qw($Bin);
use Test::More;
use JSON::PP qw(decode_json);

use lib "$Bin/../lib";
use lib "$Bin/../../lib";

use Paws::Test::MaterialiseServices;

my $repo_root = "$Bin/../..";

# ── Part 1: Static validation of endpoint-rules.json ──────────────

subtest 'endpoint-rules.json contains no unresolvable template variables' => sub {
    my $rules_file = "$repo_root/share/endpoint-rules.json";
    ok(-f $rules_file, 'endpoint-rules.json exists');

    open my $fh, '<', $rules_file or die "Cannot read $rules_file: $!";
    local $/;
    my $data = decode_json(<$fh>);
    close $fh;

    my @violations;
    for my $prefix (sort keys %$data) {
        my $rules = $data->{$prefix};
        for my $i (0 .. $#$rules) {
            my $uri = $rules->[$i]{uri} // next;
            my $check = $uri;
            $check =~ s/\{(?:region|service|scheme)\}//g;
            if ($check =~ /(\{[^}]+\})/) {
                push @violations, "$prefix rule[$i]: unresolvable variable $1 in URI '$uri'";
            }
        }
    }

    is(scalar @violations, 0, 'no rules contain unresolvable template variables')
        or diag(join "\n", @violations);
};

# ── Part 2: Runtime endpoint resolution for previously-affected services ─

subtest 'previously-affected services resolve to valid regional endpoints' => sub {
    use Paws;
    use Paws::Credential::Explicit;

    my $paws = Paws->new(config => {
        credentials => Paws::Credential::Explicit->new(
            access_key => 'test', secret_key => 'test',
        ),
        caller => 'Paws::Net::Caller',
    });

    my %expected = (
        SESv2            => 'https://email.us-west-2.amazonaws.com',
        CloudWatchEvents => 'https://events.us-west-2.amazonaws.com',
        Kinesis          => 'https://kinesis.us-west-2.amazonaws.com',
        S3Control        => 'https://s3-outposts.us-west-2.amazonaws.com',
    );

    for my $svc_name (sort keys %expected) {
        my $svc  = $paws->service($svc_name, region => 'us-west-2');
        my $info = $svc->_construct_endpoint;
        is($info->{url}, $expected{$svc_name},
            "$svc_name resolves to correct regional endpoint");
    }
};

# ── Part 3: Verify compile script filters unresolvable variables ──

subtest 'compile-endpoint-rules filters unresolvable template variables' => sub {
    my $script = "$repo_root/script/compile-endpoint-rules";
    ok(-f $script, 'compile-endpoint-rules exists');

    open my $fh, '<', $script or die "Cannot read $script: $!";
    local $/;
    my $source = <$fh>;
    close $fh;

    like($source, qr/region\|service\|scheme/,
        'script has filter for allowed template variables');
};

done_testing;
