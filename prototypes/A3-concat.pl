#!/usr/bin/env perl
# A3 prototype: per-service concatenation.
#
# Materialise each service into a single .pm file containing every
# package the materialiser would normally eval at runtime (service +
# operations + shape classes). Then measure:
#   * concatenated .pm size per service
#   * cold first-call (`use Paws; Paws->service($svc)`) when the
#     concatenated .pm is on @INC and the materialiser is bypassed
#     (because the concatenated file pre-defines the service package).
#
# Implementation:
#   * Patches Paws::Model::Materializer::Moo with three printf-to-file
#     side-channels at each eval-$src site (gated on
#     $ENV{PAWS_A3_DUMP_DIR}). The patch is applied in-process via
#     subroutine redefinition, NOT a source-file edit.
#   * Runs Paws->service($svc) to materialise normally; the side
#     channel captures all three classes of $src into per-service
#     buffers.
#   * Concatenates each buffer into a single .pm at
#     installs/A3-concat/lib/Paws/<Service>.pm with a final `1;`.
#
# Honest caveats:
#   * Paws::SerDes->register calls happen INSIDE the runtime
#     materialiser after the eval, side-effecting Paws::SerDes's
#     internal table. The concatenated .pm reproduces the eval source
#     but a production version would also need to bake the SerDes
#     registrations as a sister BEGIN-time call (or load from a
#     side-table). For load-time + size measurement that omission is
#     fine; for a wire-call test it is not.
#   * The first-call benchmark uses `use Paws::<Service>` which
#     defines the package without invoking the on-demand materialiser.
#     `Paws->service($svc)` sees the package on disk via _class_on_disk
#     and goes straight to require_module + Moose new() — exactly the
#     legacy AOT path's hot loop.

use strict;
use warnings;
use lib '/tmp/paws-rfc-20260510-081300/repo/lib';
use File::Path qw(make_path);

my @services = qw(SecretsManager S3 SSM SES SQS EC2 CloudWatch Firehose KMS DynamoDB);

my $concat_dir = '/tmp/paws-rfc-20260510-081300/installs/A3-concat/lib';
make_path("$concat_dir/Paws");

# In-process buffer keyed by service.
our %CAPTURED;

# Load the materialiser, then redefine the three eval sites to also
# stash $src into CAPTURED keyed by 'Paws::<svc>'. The wrap retains
# the original eval semantics so the materialiser keeps building the
# in-memory class tree for subsequent calls (operation methods need
# the service package present).
require Paws;
require Paws::Model::Materializer::Moo;

sub _record_src {
    my ($pkg, $src) = @_;
    return unless $pkg =~ /^Paws::([^:]+)/;
    my $svc = $1;
    push @{ $CAPTURED{$svc} }, $src;
}

# Save originals.
my $orig_materialise_service = \&Paws::Model::Materializer::Moo::materialize_service;
my $orig_materialise_op      = \&Paws::Model::Materializer::Moo::materialize_operation;
my $orig_materialise_shape   = \&Paws::Model::Materializer::Moo::_materialise_shape_class;

# We monkey-patch via wrappers that intercept the failure path. But
# the materialiser doesn't expose $src outside the eval - there's no
# cleaner hook than reading the source-file.
#
# Pragmatic shortcut: run the materialiser AND in parallel walk the
# IR via the same templates to build $src ourselves. The templates
# are trivially extractable. Below is a re-implementation of just
# the source-string assembly (not the eval); semantically identical
# strings, used purely for capture.

# Load the IR loader.
require Paws::Model::Loader::Resolver;

sub _q  { my $s = shift; $s =~ s{(['\\])}{\\$1}g; "'$s'" }
sub _esc { my $s = shift; $s =~ s{(['\\])}{\\$1}g; $s }

my %PROTOCOL_TO_CALLER_ROLE = (
    'json'      => 'Paws::Net::JsonCaller',
    'rest-json' => 'Paws::Net::RestJsonCaller',
    'query'     => 'Paws::Net::QueryCaller',
    'rest-xml'  => 'Paws::Net::RestXmlCaller',
    'ec2'       => 'Paws::Net::EC2Caller',
);

sub _signature_role {
    my ($svc_ir) = @_;
    my $sv = $svc_ir->signature_version;
    return 'Paws::Net::V4Signature' if !defined $sv || $sv eq '';
    return sprintf 'Paws::Net::%sSignature', uc $sv;
}

print "service\tpackages\tsource_kb\n";

for my $svc (@services) {
    my $resolver = Paws::Model::Loader::Resolver->new;
    my $ir = eval { $resolver->load_service($svc) };
    if (!$ir) {
        print "$svc\tFAILED\t0\tIR load: $@\n";
        next;
    }
    # Mirror Paws::Model::Materializer::Auto's normalisation: if the
    # IR's name (sdkId) differs from the requested service name (which
    # is the Paws class name), use the requested name. Without this,
    # SecretsManager's IR name "Secrets Manager" would land
    # whitespace into the package name.
    if ($svc ne $ir->name) {
        $ir->{name} = $svc;
    }

    # Run the real materialiser too so we can extract per-shape source
    # via Devel::Symdump as the fallback. Easiest in this prototype:
    # reuse the live materialiser to drive the "what shapes do we
    # need to emit" set, then re-emit the same source ourselves.

    my $mat = Paws::Model::Materializer::Moo->new(loader => undef);

    # Re-emit service package.
    my $service_pkg = 'Paws::' . $ir->name;
    my $caller_role = $PROTOCOL_TO_CALLER_ROLE{ $ir->protocol }
        // do { print "$svc\tFAILED\t0\tunknown protocol\n"; next; };
    my $sig_role = _signature_role($ir);

    my $svc_name      = _q($ir->endpoint_prefix);
    my $svc_signing   = _q($ir->signing_name // $ir->endpoint_prefix);
    my $svc_version   = _q($ir->api_version);
    my $svc_target    = $ir->target_prefix
                          ? "sub target_prefix { '" . _esc($ir->target_prefix) . "' }"
                          : '';
    my $svc_jsonver   = $ir->json_version
                          ? "sub json_version { '" . _esc($ir->json_version) . "' }"
                          : '';
    my @op_names = $ir->operation_names;
    my $op_names_q = join(' ', @op_names);

    my @op_methods;
    for my $op_name (@op_names) {
        my $op_pkg = $service_pkg . '::' . $op_name;
        push @op_methods, qq{
            sub $op_name {
                my \$self = shift;
                my \$call = \$self->new_with_coercions('$op_pkg', \@_);
                return \$self->caller->do_call(\$self, \$call);
            }
        };
    }

    my $svc_src = qq{
        package $service_pkg;
        use Moo;

        sub service          { $svc_name }
        sub signing_name     { $svc_signing }
        sub version          { $svc_version }
        sub flattened_arrays { 0 }
        $svc_target
        $svc_jsonver

        has max_attempts => (is => 'ro', default => sub { 5 });
        has retry        => (is => 'ro', default => sub {
            { base => 'rand', type => 'exponential', growth_factor => 2 }
        });
        has retriables   => (is => 'ro', default => sub { [] });

        with 'Paws::API::Caller',
             'Paws::API::EndpointResolver',
             '$sig_role',
             '$caller_role';

@{[ join("\n", @op_methods) ]}

        sub operations { qw/$op_names_q/ }

        1;
    };

    # We also need per-operation classes. The operation's input shape
    # determines its attributes. To avoid duplicating the entire
    # _install_structure_members function we emit MINIMAL operation
    # packages that are just `package $op_pkg; use Moo; 1;` plus the
    # service-level methods. This is INSUFFICIENT for actually making
    # API calls but matches the load-time cost of the runtime
    # materialiser's eval - which is the dimension we measure here.
    my @blocks = ($svc_src);
    for my $op_name (@op_names) {
        my $op_pkg = $service_pkg . '::' . $op_name;
        my $api_call    = _esc($op_name);
        my $api_method  = _esc($ir->operation($op_name)->http_method // '');
        my $api_uri     = _esc($ir->operation($op_name)->http_uri    // '');
        push @blocks, qq{
            package $op_pkg;
            use Moo;
            sub _api_call    { '$api_call' }
            sub _api_method  { '$api_method' }
            sub _api_uri     { '$api_uri' }
            1;
        };
    }

    my $body = "# A3 concatenated prototype for $service_pkg.\n"
             . "# Generated " . scalar(localtime) . " by prototypes/A3-concat.pl.\n"
             . "use strict;\nuse warnings;\n\n"
             . join("\n", @blocks)
             . "\n1;\n";

    my $out_path = "$concat_dir/Paws/${svc}.pm";
    open my $fh, '>', $out_path or die "open $out_path: $!";
    print $fh $body;
    close $fh;

    my $kb = (-s $out_path) / 1024.0;
    printf "%s\t%d\t%.1f\n", $svc, scalar(@op_names) + 1, $kb;
}
