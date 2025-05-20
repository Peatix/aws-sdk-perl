
package Paws::DirectConnect::DescribeCustomerMetadataResponse;
  use Moose;
  has Agreements => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::CustomerAgreement]', traits => ['NameInRequest'], request_name => 'agreements' );
  has NniPartnerType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nniPartnerType' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeCustomerMetadataResponse

=head1 ATTRIBUTES


=head2 Agreements => ArrayRef[L<Paws::DirectConnect::CustomerAgreement>]

The list of customer agreements.


=head2 NniPartnerType => Str

The type of network-to-network interface (NNI) partner. The partner
type will be one of the following:

=over

=item *

V1: This partner can only allocate 50Mbps, 100Mbps, 200Mbps, 300Mbps,
400Mbps, or 500Mbps subgigabit connections.

=item *

V2: This partner can only allocate 1GB, 2GB, 5GB, or 10GB hosted
connections.

=item *

nonPartner: The customer is not a partner.

=back


Valid values are: C<"v1">, C<"v2">, C<"nonPartner">
=head2 _request_id => Str


=cut

1;