
package Paws::OpenSearch::DescribeVpcEndpointsResponse;
  use Moose;
  has VpcEndpointErrors => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::VpcEndpointError]', required => 1);
  has VpcEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::VpcEndpoint]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::DescribeVpcEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcEndpointErrors => ArrayRef[L<Paws::OpenSearch::VpcEndpointError>]

Any errors associated with the request.


=head2 B<REQUIRED> VpcEndpoints => ArrayRef[L<Paws::OpenSearch::VpcEndpoint>]

Information about each requested VPC endpoint.


=head2 _request_id => Str


=cut

