
package Paws::FSX::DeleteDataRepositoryAssociationResponse;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has DeleteDataInFileSystem => (is => 'ro', isa => 'Bool');
  has Lifecycle => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteDataRepositoryAssociationResponse

=head1 ATTRIBUTES


=head2 AssociationId => Str

The ID of the data repository association being deleted.


=head2 DeleteDataInFileSystem => Bool

Indicates whether data in the file system that corresponds to the data
repository association is being deleted. Default is C<false>.


=head2 Lifecycle => Str

Describes the lifecycle state of the data repository association being
deleted.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"MISCONFIGURED">, C<"UPDATING">, C<"DELETING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;