
package Paws::EC2::CreateInstanceConnectEndpointResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has InstanceConnectEndpoint => (is => 'ro', isa => 'Paws::EC2::Ec2InstanceConnectEndpoint', request_name => 'instanceConnectEndpoint', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateInstanceConnectEndpointResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive idempotency token provided by the client in the
the request.


=head2 InstanceConnectEndpoint => L<Paws::EC2::Ec2InstanceConnectEndpoint>

Information about the EC2 Instance Connect Endpoint.


=head2 _request_id => Str


=cut

