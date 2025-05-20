
package Paws::ELBv2::DescribeTrustStoreRevocationsOutput;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has TrustStoreRevocations => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::DescribeTrustStoreRevocation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTrustStoreRevocationsOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 TrustStoreRevocations => ArrayRef[L<Paws::ELBv2::DescribeTrustStoreRevocation>]

Information about the revocation file in the trust store.


=head2 _request_id => Str


=cut

