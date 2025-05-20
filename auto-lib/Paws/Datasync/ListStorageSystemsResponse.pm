
package Paws::Datasync::ListStorageSystemsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StorageSystems => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::StorageSystemListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListStorageSystemsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The opaque string that indicates the position to begin the next list of
results in the response.


=head2 StorageSystems => ArrayRef[L<Paws::Datasync::StorageSystemListEntry>]

The Amazon Resource Names ARNs) of the on-premises storage systems that
you're using with DataSync Discovery.


=head2 _request_id => Str


=cut

1;