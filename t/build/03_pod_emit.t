#!/usr/bin/env perl
# t/build/03_pod_emit.t
#
# Unit test for Paws::Model::Materializer::Moo->generate_pod_for_service.
# Drives a small fixture (the real STS Smithy IR shipping in
# share/smithy/sts/) and asserts the returned POD covers the expected
# packages, sections, and at least one representative operation's
# attributes.

use strict;
use warnings;
use Test::More;
use FindBin;
use lib "$FindBin::Bin/../../lib";

use Paws::Model::Loader::Resolver;
use Paws::Model::Materializer::Moo;

my $resolver = Paws::Model::Loader::Resolver->new;
my $ir = eval { $resolver->load_service('STS') };
ok($ir, 'loaded STS IR') or BAIL_OUT("STS IR load failed: $@");
$ir->{name} = 'STS' if $ir->name ne 'STS';

my $mat = Paws::Model::Materializer::Moo->new(loader => undef);
my $pod = $mat->generate_pod_for_service($ir);

isa_ok($pod, 'HASH', 'POD emitter returns a hashref');
ok(scalar(keys %$pod) > 5, 'returns multiple POD entries (got ' . scalar(keys %$pod) . ')');

ok(exists $pod->{'Paws::STS'}, 'service-level entry exists');
ok(exists $pod->{'Paws::STS::AssumeRole'}, 'AssumeRole operation entry exists');
ok(exists $pod->{'Paws::STS::Credentials'}, 'Credentials shape entry exists');

# Service-level POD asserts.
my $svc_pod = $pod->{'Paws::STS'};
like($svc_pod, qr/^=encoding utf-8$/m, 'service POD has =encoding directive');
like($svc_pod, qr/^=head1 NAME$/m, 'service POD has NAME head1');
like($svc_pod, qr/^Paws::STS - /m, 'service POD NAME line starts with class');
like($svc_pod, qr/^=head1 OPERATIONS$/m, 'service POD has OPERATIONS head1');
like($svc_pod, qr/L<Paws::STS::AssumeRole>/, 'service POD links AssumeRole');
like($svc_pod, qr/^=cut$/m, 'service POD ends with =cut');

# Operation-level POD asserts.
my $op_pod = $pod->{'Paws::STS::AssumeRole'};
like($op_pod, qr/^=head1 NAME$/m, 'operation POD has NAME');
like($op_pod, qr/^Paws::STS::AssumeRole - /m, 'operation NAME line starts with full class');
like($op_pod, qr/^=head1 DESCRIPTION$/m, 'operation POD has DESCRIPTION');
like($op_pod, qr/^=head1 SYNOPSIS$/m, 'operation POD has SYNOPSIS');
like($op_pod, qr/\$svc->AssumeRole\(/, 'operation SYNOPSIS shows the call form');
like($op_pod, qr/^=head1 ATTRIBUTES$/m, 'operation POD has ATTRIBUTES');
like($op_pod, qr/^=head2 RoleArn /m, 'AssumeRole input lists RoleArn (required)');
like($op_pod, qr/^=head2 RoleSessionName /m, 'AssumeRole input lists RoleSessionName (required)');
like($op_pod, qr/\(required\)/, 'required attributes are flagged');
like($op_pod, qr/^=head1 RETURNS$/m, 'operation POD has RETURNS');
like($op_pod, qr/^=head1 SEE ALSO$/m, 'operation POD has SEE ALSO');
like($op_pod, qr/L<Paws::STS>/, 'operation POD SEE ALSO links back to service');
like($op_pod, qr/L<https:\/\/docs\.aws\.amazon\.com/, 'operation POD SEE ALSO links AWS reference');

# Shape-level POD asserts.
my $shape_pod = $pod->{'Paws::STS::Credentials'};
like($shape_pod, qr/^=head1 NAME$/m, 'shape POD has NAME');
like($shape_pod, qr/^Paws::STS::Credentials - /m, 'shape NAME starts with full class');
like($shape_pod, qr/^=head1 ATTRIBUTES$/m, 'shape POD has ATTRIBUTES');
like($shape_pod, qr/^=head2 AccessKeyId /m, 'Credentials shape lists AccessKeyId');
like($shape_pod, qr/^=head2 SecretAccessKey /m, 'Credentials shape lists SecretAccessKey');
like($shape_pod, qr/^=head2 SessionToken /m, 'Credentials shape lists SessionToken');

# Sanity check the HTML cleaner produced something non-empty for the
# DESCRIPTION (the STS service trait has an HTML <p>...</p> body in
# the upstream Smithy file).
my ($desc_para) = $svc_pod =~ /^=head1 DESCRIPTION\n+(.+?)\n=head1 OPERATIONS/ms;
ok(defined($desc_para) && length($desc_para) > 50,
    'service DESCRIPTION paragraph is non-trivial after HTML cleanup ('
    . (defined $desc_para ? length($desc_para) : 0) . ' chars)');

# Pod::Simple::DumpAsText is a concrete Pod::Simple subclass; we
# discard its output and just rely on errors_seen as the syntax
# health check.
require Pod::Simple::DumpAsText;
my @parse_failures;
for my $pkg (sort keys %$pod) {
    my $parser = Pod::Simple::DumpAsText->new;
    $parser->no_errata_section(1);
    $parser->complain_stderr(0);
    my $sink;
    $parser->output_string(\$sink);
    my $ok = eval {
        $parser->parse_string_document($pod->{$pkg});
        1;
    };
    if (!$ok) {
        push @parse_failures, "$pkg: died: $@";
    } elsif ($parser->errors_seen) {
        push @parse_failures, "$pkg: errors_seen=" . $parser->errors_seen;
    }
}
is(scalar(@parse_failures), 0, 'every emitted POD parses without errors')
    or diag(join("\n", @parse_failures));

done_testing;
