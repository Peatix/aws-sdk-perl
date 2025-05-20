
package Paws::OpenSearchServerless::UpdateVpcEndpointResponse;
  use Moose;
  has UpdateVpcEndpointDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::UpdateVpcEndpointDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::UpdateVpcEndpointResponse

=head1 ATTRIBUTES


=head2 UpdateVpcEndpointDetail => L<Paws::OpenSearchServerless::UpdateVpcEndpointDetail>

Details about the updated VPC endpoint.


=head2 _request_id => Str


=cut

1;