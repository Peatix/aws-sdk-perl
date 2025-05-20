
package Paws::VPCLattice::GetServiceNetworkVpcAssociationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has ServiceNetworkArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkArn');
  has ServiceNetworkId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkId');
  has ServiceNetworkName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceNetworkName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetServiceNetworkVpcAssociationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the association.


=head2 CreatedAt => Str

The date and time that the association was created, in ISO-8601 format.


=head2 CreatedBy => Str

The account that created the association.


=head2 FailureCode => Str

The failure code.


=head2 FailureMessage => Str

The failure message.


=head2 Id => Str

The ID of the association.


=head2 LastUpdatedAt => Str

The date and time that the association was last updated, in ISO-8601
format.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups.


=head2 ServiceNetworkArn => Str

The Amazon Resource Name (ARN) of the service network.


=head2 ServiceNetworkId => Str

The ID of the service network.


=head2 ServiceNetworkName => Str

The name of the service network.


=head2 Status => Str

The status of the association.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">, C<"UPDATE_FAILED">
=head2 VpcId => Str

The ID of the VPC.


=head2 _request_id => Str


=cut

