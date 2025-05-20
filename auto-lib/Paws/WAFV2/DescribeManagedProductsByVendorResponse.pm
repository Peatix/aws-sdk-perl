
package Paws::WAFV2::DescribeManagedProductsByVendorResponse;
  use Moose;
  has ManagedProducts => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::ManagedProductDescriptor]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DescribeManagedProductsByVendorResponse

=head1 ATTRIBUTES


=head2 ManagedProducts => ArrayRef[L<Paws::WAFV2::ManagedProductDescriptor>]

High-level information for the managed rule groups owned by the
specified vendor.


=head2 _request_id => Str


=cut

1;