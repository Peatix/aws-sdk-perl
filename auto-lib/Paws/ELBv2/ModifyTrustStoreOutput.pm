
package Paws::ELBv2::ModifyTrustStoreOutput;
  use Moose;
  has TrustStores => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TrustStore]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyTrustStoreOutput

=head1 ATTRIBUTES


=head2 TrustStores => ArrayRef[L<Paws::ELBv2::TrustStore>]

Information about the modified trust store.


=head2 _request_id => Str


=cut

