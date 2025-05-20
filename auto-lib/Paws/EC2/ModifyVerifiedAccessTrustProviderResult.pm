
package Paws::EC2::ModifyVerifiedAccessTrustProviderResult;
  use Moose;
  has VerifiedAccessTrustProvider => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessTrustProvider', request_name => 'verifiedAccessTrustProvider', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessTrustProviderResult

=head1 ATTRIBUTES


=head2 VerifiedAccessTrustProvider => L<Paws::EC2::VerifiedAccessTrustProvider>

Details about the Verified Access trust provider.


=head2 _request_id => Str


=cut

