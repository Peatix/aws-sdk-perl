
package Paws::VPCLattice::CreateServiceNetworkVpcAssociationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateServiceNetworkVpcAssociationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the association.


=head2 CreatedBy => Str

The account that created the association.


=head2 Id => Str

The ID of the association.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups.


=head2 Status => Str

The association status.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">, C<"UPDATE_FAILED">
=head2 _request_id => Str


=cut

