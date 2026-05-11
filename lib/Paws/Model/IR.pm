package Paws::Model::IR;

# Internal Intermediate Representation for an AWS service description.
#
# This module is the data model produced by Paws::Model::Loader::*
# implementations and consumed by:
#
#   - the existing TT-based generator (builder-lib/Paws/API/Builder.pm),
#     after a future commit refactors it to read from IR rather than
#     directly from `api_struct->{shapes}` / `->{operations}`;
#   - the lazy in-memory materialiser introduced in PR9
#     (lib/Paws/Model/Materializer.pm).
#
# Source-format-independent. The Smithy loader normalises to this shape.
#
# Plain Moose classes; no roles or coercions, on purpose, so the
# loader is cheap and the IR is trivially serialisable to
# Sereal/Storable for the materialiser cache (PR9).

use strict;
use warnings;
use v5.10;

# Service: top-level entry. One per service-2.json file.
package Paws::Model::IR::Service {
    use Moose;

    has name              => (is => 'ro', isa => 'Str', required => 1);
    has full_name         => (is => 'ro', isa => 'Str', required => 1);
    has endpoint_prefix   => (is => 'ro', isa => 'Str', required => 1);
    has signing_name      => (is => 'ro', isa => 'Maybe[Str]');
    has api_version       => (is => 'ro', isa => 'Str', required => 1);
    has protocol          => (is => 'ro', isa => 'Str', required => 1);  # json|rest-json|query|rest-xml|ec2
    has json_version      => (is => 'ro', isa => 'Maybe[Str]');
    has target_prefix     => (is => 'ro', isa => 'Maybe[Str]');
    has signature_version => (is => 'ro', isa => 'Maybe[Str]');
    has uid               => (is => 'ro', isa => 'Maybe[Str]');
    has documentation     => (is => 'ro', isa => 'Maybe[Str]');

    # Service-level default XML namespace URI. Populated from
    # `smithy.api#xmlNamespace.uri` on the service shape. Consumed
    # by the materialiser to wrap body XML in
    # `<Root xmlns="...">...</Root>` for REST-XML services like S3
    # whose operations don't carry a per-payload namespace.
    has xml_namespace     => (is => 'ro', isa => 'Maybe[Str]');

    has operations => (
        is      => 'ro',
        isa     => 'HashRef[Paws::Model::IR::Operation]',
        default => sub { {} },
    );

    has shapes => (
        is      => 'ro',
        isa     => 'HashRef[Paws::Model::IR::Shape]',
        default => sub { {} },
    );

    sub operation_names { return sort keys %{ $_[0]->operations } }
    sub shape_names     { return sort keys %{ $_[0]->shapes } }

    sub operation { return $_[0]->operations->{$_[1]} }
    sub shape     { return $_[0]->shapes->{$_[1]} }

    __PACKAGE__->meta->make_immutable;
}

# Operation: one per API method. References shapes by name.
package Paws::Model::IR::Operation {
    use Moose;

    has name              => (is => 'ro', isa => 'Str', required => 1);
    has http_method       => (is => 'ro', isa => 'Str', default => 'POST');
    has http_uri          => (is => 'ro', isa => 'Str', default => '/');
    has http_status_code  => (is => 'ro', isa => 'Maybe[Int]');

    # Shape *names* (not refs) so the IR can be flat-serialised.
    # Resolve via Service->shape($name).
    has input_shape       => (is => 'ro', isa => 'Maybe[Str]');
    has output_shape      => (is => 'ro', isa => 'Maybe[Str]');
    has error_shapes      => (is => 'ro', isa => 'ArrayRef[Str]', default => sub { [] });

    has documentation     => (is => 'ro', isa => 'Maybe[Str]');
    has deprecated        => (is => 'ro', isa => 'Bool', default => 0);
    has paginator         => (is => 'ro', isa => 'Maybe[HashRef]');

    # Operation-level integrity-header requirement, sourced from
    # `aws.protocols#httpChecksum.requestChecksumRequired` on a
    # Smithy operation. When true, the wire layer must inject either
    # a `Content-MD5` header
    # or one of the modern `x-amz-checksum-*` headers before
    # sending. S3's DeleteObjects, PutBucketLifecycleConfiguration,
    # PutBucketCors, PutBucketTagging, PutObjectTagging,
    # PutBucketReplication, and RestoreObject are the canonical
    # operations carrying this trait.
    has http_checksum_required => (is => 'ro', isa => 'Bool', default => 0);

    # Name of the input-member that names the algorithm the caller
    # wants to use (e.g. 'ChecksumAlgorithm' on the S3 operations
    # above). When the caller supplies a value, the wire layer
    # honours it. When the caller leaves it unset and the operation
    # has http_checksum_required, the wire layer falls back to
    # auto-injecting Content-MD5.
    has http_checksum_algorithm_member =>
        (is => 'ro', isa => 'Maybe[Str]');

    __PACKAGE__->meta->make_immutable;
}

# Shape: one per type. Either a structure, a list, a map, or a scalar.
package Paws::Model::IR::Shape {
    use Moose;

    has name          => (is => 'ro', isa => 'Str', required => 1);
    has type          => (is => 'ro', isa => 'Str', required => 1);
        # 'structure' | 'list' | 'map' | 'string' | 'integer' | 'long'
        # | 'double' | 'float' | 'boolean' | 'timestamp' | 'blob'

    # structure-only
    has members  => (
        is      => 'ro',
        isa     => 'HashRef[Paws::Model::IR::Member]',
        default => sub { {} },
    );
    has required_members => (
        is      => 'ro',
        isa     => 'ArrayRef[Str]',
        default => sub { [] },
    );
    has payload   => (is => 'ro', isa => 'Maybe[Str]');  # name of payload member

    # list / map: target shape names
    has list_member_shape => (is => 'ro', isa => 'Maybe[Str]');
    has list_member_locationName => (is => 'ro', isa => 'Maybe[Str]');
    has map_key_shape   => (is => 'ro', isa => 'Maybe[Str]');
    has map_value_shape => (is => 'ro', isa => 'Maybe[Str]');

    # list-only
    has flattened => (is => 'ro', isa => 'Bool', default => 0);

    # Whether this is a streaming payload (smithy.api#streaming on the
    # shape itself, e.g. S3's StreamingBlob). The materialiser emits
    # `_stream_param` on operations whose payload member points at a
    # streaming shape, telling the wire layer to bind the raw body
    # to that member without XML/JSON serialisation.
    has streaming => (is => 'ro', isa => 'Bool', default => 0);

    # primitive enum
    has enum_values => (is => 'ro', isa => 'ArrayRef[Str]', default => sub { [] });

    # Per-shape XML namespace URI, when set. Populated from the
    # `smithy.api#xmlNamespace.uri` trait on the shape itself. The
    # materialiser uses this on payload-target structures to wrap
    # the body XML in `<Element xmlns="...">...</Element>`.
    has xml_namespace => (is => 'ro', isa => 'Maybe[Str]');

    # Per-shape XML element override, when set. Populated from the
    # `smithy.api#xmlName` trait on the structure shape itself. Used
    # by the response decoder to
    # recognise the wire-side root element name when it differs from
    # the IR-side shape suffix (e.g. ListObjectsV2Output ->
    # `<ListBucketResult>`).
    has xml_name => (is => 'ro', isa => 'Maybe[Str]');

    has documentation => (is => 'ro', isa => 'Maybe[Str]');

    sub is_structure { $_[0]->type eq 'structure' }
    sub is_list      { $_[0]->type eq 'list' }
    sub is_map       { $_[0]->type eq 'map' }
    sub is_scalar    {
        my $t = $_[0]->type;
        return $t eq 'string'  || $t eq 'integer' || $t eq 'long'
            || $t eq 'double'  || $t eq 'float'   || $t eq 'boolean'
            || $t eq 'timestamp' || $t eq 'blob';
    }

    __PACKAGE__->meta->make_immutable;
}

# Member: one per field in a structure shape.
package Paws::Model::IR::Member {
    use Moose;

    has name         => (is => 'ro', isa => 'Str', required => 1);
    has shape        => (is => 'ro', isa => 'Str', required => 1);
        # name of the shape this member targets (resolve via
        # Service->shape($name)).

    has location     => (is => 'ro', isa => 'Maybe[Str]');
        # 'header' | 'headers' | 'querystring' | 'uri' | 'statusCode'
        # | undef (i.e. body)
    has locationName => (is => 'ro', isa => 'Maybe[Str]');
    has streaming    => (is => 'ro', isa => 'Bool', default => 0);
    # Member-level `smithy.api#xmlFlattened` (the same trait can sit
    # on the list/map shape itself or on a member that points at one;
    # S3's BucketLifecycleConfiguration.Rules is the canonical
    # example of the member-side form). Consumers should honour
    # whichever side carries the trait.
    has flattened    => (is => 'ro', isa => 'Bool', default => 0);
    # Member-level `smithy.api#xmlNamespace.uri`, when overridden at
    # the use site rather than on the target shape.
    has xml_namespace => (is => 'ro', isa => 'Maybe[Str]');
    has documentation => (is => 'ro', isa => 'Maybe[Str]');
    has deprecated   => (is => 'ro', isa => 'Bool', default => 0);

    __PACKAGE__->meta->make_immutable;
}

1;

__END__

=head1 NAME

Paws::Model::IR - source-format-independent intermediate representation
for AWS service descriptions

=head1 DESCRIPTION

The IR is the contract between the source-of-truth loader
(L<Paws::Model::Loader::Smithy>) and the consumers (the TT-based
generator and the lazy materialiser).

It is intentionally a flat data model: shapes refer to other shapes by
name, not by reference. That makes the whole tree trivially round-trippable
through Sereal/Storable for the materialiser cache, and makes loader
parity testing tractable.

=head1 SEE ALSO

L<Paws::Model::Loader>, L<Paws::Model::Loader::Smithy>,
L<docs/architecture.md|file:docs/architecture.md>.

=cut
