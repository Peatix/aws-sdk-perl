
package Paws::VPCLattice::GetTargetGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Config => (is => 'ro', isa => 'Paws::VPCLattice::TargetGroupConfig', traits => ['NameInRequest'], request_name => 'config');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ServiceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'serviceArns');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetTargetGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the target group.


=head2 Config => L<Paws::VPCLattice::TargetGroupConfig>

The target group configuration.


=head2 CreatedAt => Str

The date and time that the target group was created, in ISO-8601
format.


=head2 FailureCode => Str

The failure code.


=head2 FailureMessage => Str

The failure message.


=head2 Id => Str

The ID of the target group.


=head2 LastUpdatedAt => Str

The date and time that the target group was last updated, in ISO-8601
format.


=head2 Name => Str

The name of the target group.


=head2 ServiceArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) of the service.


=head2 Status => Str

The status.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"ACTIVE">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 Type => Str

The target group type.

Valid values are: C<"IP">, C<"LAMBDA">, C<"INSTANCE">, C<"ALB">
=head2 _request_id => Str


=cut

