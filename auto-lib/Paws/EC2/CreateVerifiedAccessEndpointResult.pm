
package Paws::EC2::CreateVerifiedAccessEndpointResult;
  use Moose;
  has VerifiedAccessEndpoint => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessEndpoint', request_name => 'verifiedAccessEndpoint', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVerifiedAccessEndpointResult

=head1 ATTRIBUTES


=head2 VerifiedAccessEndpoint => L<Paws::EC2::VerifiedAccessEndpoint>

Details about the Verified Access endpoint.


=head2 _request_id => Str


=cut

