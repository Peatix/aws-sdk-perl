
package Paws::MarketplaceMetering::ResolveCustomerResult;
  use Moose;
  has CustomerAWSAccountId => (is => 'ro', isa => 'Str');
  has CustomerIdentifier => (is => 'ro', isa => 'Str');
  has ProductCode => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::ResolveCustomerResult

=head1 ATTRIBUTES


=head2 CustomerAWSAccountId => Str

The C<CustomerAWSAccountId> provides the Amazon Web Services account ID
associated with the C<CustomerIdentifier> for the individual customer.


=head2 CustomerIdentifier => Str

The C<CustomerIdentifier> is used to identify an individual customer in
your application. Calls to C<BatchMeterUsage> require
C<CustomerIdentifiers> for each C<UsageRecord>.


=head2 ProductCode => Str

The product code is returned to confirm that the buyer is registering
for your product. Subsequent C<BatchMeterUsage> calls should be made
using this product code.


=head2 _request_id => Str


=cut

1;