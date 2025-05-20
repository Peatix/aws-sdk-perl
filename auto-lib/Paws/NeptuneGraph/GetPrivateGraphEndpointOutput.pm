
package Paws::NeptuneGraph::GetPrivateGraphEndpointOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds', required => 1);
  has VpcEndpointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcEndpointId');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::GetPrivateGraphEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The current status of the private endpoint.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"DELETING">, C<"FAILED">
=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The subnet IDs involved.


=head2 VpcEndpointId => Str

The ID of the private endpoint.


=head2 B<REQUIRED> VpcId => Str

The ID of the VPC where the private endpoint is located.


=head2 _request_id => Str


=cut

