
package Paws::OpenSearchServerless::DeleteVpcEndpointResponse;
  use Moose;
  has DeleteVpcEndpointDetail => (is => 'ro', isa => 'Paws::OpenSearchServerless::DeleteVpcEndpointDetail', traits => ['NameInRequest'], request_name => 'deleteVpcEndpointDetail' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::DeleteVpcEndpointResponse

=head1 ATTRIBUTES


=head2 DeleteVpcEndpointDetail => L<Paws::OpenSearchServerless::DeleteVpcEndpointDetail>

Details about the deleted endpoint.


=head2 _request_id => Str


=cut

1;