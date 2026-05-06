
package Paws::ES::DescribeVpcEndpointsResponse;
  use Moose;
  has VpcEndpointErrors => (is => 'ro', isa => 'ArrayRef[Paws::ES::VpcEndpointError]', required => 1);
  has VpcEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::ES::VpcEndpoint]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeVpcEndpointsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> VpcEndpointErrors => ArrayRef[L<Paws::ES::VpcEndpointError>]

Any errors associated with the request.


=head2 B<REQUIRED> VpcEndpoints => ArrayRef[L<Paws::ES::VpcEndpoint>]

Information about each requested VPC endpoint.


=head2 _request_id => Str


=cut

