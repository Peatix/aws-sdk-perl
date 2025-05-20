
package Paws::EC2::DescribeVerifiedAccessTrustProvidersResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has VerifiedAccessTrustProviders => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VerifiedAccessTrustProvider]', request_name => 'verifiedAccessTrustProviderSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVerifiedAccessTrustProvidersResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 VerifiedAccessTrustProviders => ArrayRef[L<Paws::EC2::VerifiedAccessTrustProvider>]

Details about the Verified Access trust providers.


=head2 _request_id => Str


=cut

