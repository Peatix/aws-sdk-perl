
package Paws::ELBv2::AddTrustStoreRevocationsOutput;
  use Moose;
  has TrustStoreRevocations => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TrustStoreRevocation]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::AddTrustStoreRevocationsOutput

=head1 ATTRIBUTES


=head2 TrustStoreRevocations => ArrayRef[L<Paws::ELBv2::TrustStoreRevocation>]

Information about the revocation file added to the trust store.


=head2 _request_id => Str


=cut

