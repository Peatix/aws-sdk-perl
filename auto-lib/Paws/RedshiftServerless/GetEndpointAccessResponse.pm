
package Paws::RedshiftServerless::GetEndpointAccessResponse;
  use Moose;
  has Endpoint => (is => 'ro', isa => 'Paws::RedshiftServerless::EndpointAccess', traits => ['NameInRequest'], request_name => 'endpoint' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetEndpointAccessResponse

=head1 ATTRIBUTES


=head2 Endpoint => L<Paws::RedshiftServerless::EndpointAccess>

The returned VPC endpoint.


=head2 _request_id => Str


=cut

1;