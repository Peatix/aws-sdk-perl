
package Paws::WAFV2::DescribeAllManagedProductsResponse;
  use Moose;
  has ManagedProducts => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::ManagedProductDescriptor]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::DescribeAllManagedProductsResponse

=head1 ATTRIBUTES


=head2 ManagedProducts => ArrayRef[L<Paws::WAFV2::ManagedProductDescriptor>]

High-level information for the Amazon Web Services Managed Rules rule
groups and Amazon Web Services Marketplace managed rule groups.


=head2 _request_id => Str


=cut

1;