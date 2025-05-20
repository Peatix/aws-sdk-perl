
package Paws::EC2::PurchaseCapacityBlockExtensionResult;
  use Moose;
  has CapacityBlockExtensions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::CapacityBlockExtension]', request_name => 'capacityBlockExtensionSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseCapacityBlockExtensionResult

=head1 ATTRIBUTES


=head2 CapacityBlockExtensions => ArrayRef[L<Paws::EC2::CapacityBlockExtension>]

The purchased Capacity Block extensions.


=head2 _request_id => Str


=cut

