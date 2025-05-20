
package Paws::FSX::DeleteFileCacheResponse;
  use Moose;
  has FileCacheId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileCacheResponse

=head1 ATTRIBUTES


=head2 FileCacheId => Str

The ID of the cache that's being deleted.


=head2 Lifecycle => Str

The cache lifecycle for the deletion request. If the C<DeleteFileCache>
operation is successful, this status is C<DELETING>.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"DELETING">, C<"UPDATING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;