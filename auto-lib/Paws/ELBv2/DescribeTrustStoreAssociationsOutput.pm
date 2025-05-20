
package Paws::ELBv2::DescribeTrustStoreAssociationsOutput;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has TrustStoreAssociations => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TrustStoreAssociation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeTrustStoreAssociationsOutput

=head1 ATTRIBUTES


=head2 NextMarker => Str

If there are additional results, this is the marker for the next set of
results. Otherwise, this is null.


=head2 TrustStoreAssociations => ArrayRef[L<Paws::ELBv2::TrustStoreAssociation>]

Information about the resources the trust store is associated to.


=head2 _request_id => Str


=cut

