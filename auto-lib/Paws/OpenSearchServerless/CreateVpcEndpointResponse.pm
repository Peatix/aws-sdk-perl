
package Paws::OpenSearchServerless::CreateVpcEndpointResponse;
  use Moose;
  has CreateVpcEndpointDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::CreateVpcEndpointDetail', traits => ['NameInRequest'], request_name => 'createVpcEndpointDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::CreateVpcEndpointResponse

=head1 ATTRIBUTES


=head2 CreateVpcEndpointDetail => L<Paws::OpenSearchServerless::CreateVpcEndpointDetail>

Details about the created interface VPC endpoint.


=head2 _request_id => Str


=cut

1;