
package Paws::VPCLattice::UpdateResourceGatewayResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IpAddressType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAddressType');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateResourceGatewayResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource gateway.


=head2 Id => Str

The ID of the resource gateway.


=head2 IpAddressType => Str

The type of IP address used by the resource gateway.

Valid values are: C<"IPV4">, C<"IPV6">
=head2 Name => Str

The name of the resource gateway.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups associated with the resource gateway.


=head2 Status => Str

The status of the resource gateway.

Valid values are: C<"ACTIVE">, C<"CREATE_IN_PROGRESS">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">
=head2 SubnetIds => ArrayRef[Str|Undef]

The IDs of the VPC subnets for the resource gateway.


=head2 VpcId => Str

The ID of the VPC for the resource gateway.


=head2 _request_id => Str


=cut

