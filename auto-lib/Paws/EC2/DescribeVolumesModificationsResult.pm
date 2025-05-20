
package Paws::EC2::DescribeVolumesModificationsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VolumesModifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VolumeModification]', request_name => 'volumeModificationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVolumesModificationsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 VolumesModifications => ArrayRef[L<Paws::EC2::VolumeModification>]

Information about the volume modifications.


=head2 _request_id => Str


=cut

