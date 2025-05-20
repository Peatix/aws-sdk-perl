
package Paws::EC2::DeleteInstanceConnectEndpointResult;
  use Moose;
  has InstanceConnectEndpoint => (is => 'ro', isa => 'Paws::EC2::Ec2InstanceConnectEndpoint', request_name => 'instanceConnectEndpoint', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteInstanceConnectEndpointResult

=head1 ATTRIBUTES


=head2 InstanceConnectEndpoint => L<Paws::EC2::Ec2InstanceConnectEndpoint>

Information about the EC2 Instance Connect Endpoint.


=head2 _request_id => Str


=cut

