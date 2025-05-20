
package Paws::ELBv2::CreateTrustStoreOutput;
  use Moose;
  has TrustStores => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::TrustStore]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateTrustStoreOutput

=head1 ATTRIBUTES


=head2 TrustStores => ArrayRef[L<Paws::ELBv2::TrustStore>]

Information about the trust store created.


=head2 _request_id => Str


=cut

