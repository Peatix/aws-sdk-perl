
package Paws::NeptuneGraph::CreatePrivateGraphEndpointOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds', required => 1);
  has VpcEndpointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcEndpointId');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CreatePrivateGraphEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

Status of the private graph endpoint.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"DELETING">, C<"FAILED">
=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

Subnets in which the private graph endpoint ENIs are created.


=head2 VpcEndpointId => Str

Endpoint ID of the prviate grpah endpoint.


=head2 B<REQUIRED> VpcId => Str

VPC in which the private graph endpoint is created.


=head2 _request_id => Str


=cut

