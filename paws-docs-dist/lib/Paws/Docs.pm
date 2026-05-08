package Paws::Docs;

use strict;
use warnings;

our $VERSION = '0.01';

1;

__END__

=head1 NAME

Paws::Docs - per-shape POD pages for the Paws AWS SDK

=head1 DESCRIPTION

This is a companion distribution to L<Paws> that ships per-shape POD
pages so they remain discoverable on metacpan after Paws itself
removes the on-disk C<auto-lib/> tree.

After installing both C<Paws> and C<Paws::Docs>:

  perldoc Paws::EC2::Instance
  perldoc Paws::S3::ListBucketsOutput

The POD pages are auto-generated from the same intermediate
representation (L<Paws::Model::IR>) that L<Paws::Materializer> uses to
build runtime classes, so the docs and the runtime stay in sync.

=head1 RELEASE PROCESS

The dist is rebuilt by C<script/paws-build-pod> against a checked-out
C<Paws> tree (which provides the IR loaders + materialiser
metadata). See C<docs/paws-docs.md> in the C<Paws> repository for the
full flow.

=head1 SEE ALSO

L<Paws>, L<Paws::Materializer>, L<Paws::Model::IR>.

=head1 AUTHOR

Generated as part of the C<Paws> release process. Maintained alongside
L<Paws>.

=head1 LICENSE

Apache 2.0 - same as L<Paws>.

=cut
