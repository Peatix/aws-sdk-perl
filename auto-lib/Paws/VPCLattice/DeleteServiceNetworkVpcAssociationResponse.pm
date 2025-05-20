
package Paws::VPCLattice::DeleteServiceNetworkVpcAssociationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::DeleteServiceNetworkVpcAssociationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the association.


=head2 Id => Str

The ID of the association.


=head2 Status => Str

The status. You can retry the operation if the status is
C<DELETE_FAILED>. However, if you retry it while the status is
C<DELETE_IN_PROGRESS>, there is no change in the status.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">, C<"UPDATE_FAILED">
=head2 _request_id => Str


=cut

