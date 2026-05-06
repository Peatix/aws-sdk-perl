
package Paws::OpenSearch::CreateVpcEndpointResponse;
  use Moose;
  has VpcEndpoint => (is => 'ro', isa => 'Paws::OpenSearch::VpcEndpoint', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreateVpcEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcEndpoint => L<Paws::OpenSearch::VpcEndpoint>

Information about the newly created VPC endpoint.


=head2 _request_id => Str


=cut

