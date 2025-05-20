
package Paws::FMS::BatchDisassociateResourceResponse;
  use Moose;
  has FailedItems => (is => 'ro', isa => 'ArrayRef[Paws::FMS::FailedItem]', required => 1);
  has ResourceSetIdentifier => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::BatchDisassociateResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FailedItems => ArrayRef[L<Paws::FMS::FailedItem>]

The resources that failed to disassociate from the resource set.


=head2 B<REQUIRED> ResourceSetIdentifier => Str

A unique identifier for the resource set, used in a request to refer to
the resource set.


=head2 _request_id => Str


=cut

1;