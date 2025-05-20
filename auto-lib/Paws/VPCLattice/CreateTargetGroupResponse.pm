
package Paws::VPCLattice::CreateTargetGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Config => (is => 'ro', isa => 'Paws::VPCLattice::TargetGroupConfig', traits => ['NameInRequest'], request_name => 'config');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateTargetGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the target group.


=head2 Config => L<Paws::VPCLattice::TargetGroupConfig>

The target group configuration.


=head2 Id => Str

The ID of the target group.


=head2 Name => Str

The name of the target group.


=head2 Status => Str

The status. You can retry the operation if the status is
C<CREATE_FAILED>. However, if you retry it while the status is
C<CREATE_IN_PROGRESS>, there is no change in the status.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 Type => Str

The type of target group.

Valid values are: C<"IP">, C<"LAMBDA">, C<"INSTANCE">, C<"ALB">
=head2 _request_id => Str


=cut

