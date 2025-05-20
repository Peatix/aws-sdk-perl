
package Paws::Route53RecoveryReadiness::CreateRecoveryGroupResponse;
  use Moose;
  has Cells => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'cells');
  has RecoveryGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryGroupArn');
  has RecoveryGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryGroupName');
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryReadiness::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::CreateRecoveryGroupResponse

=head1 ATTRIBUTES


=head2 Cells => ArrayRef[Str|Undef]

A list of a cell's Amazon Resource Names (ARNs).


=head2 RecoveryGroupArn => Str

The Amazon Resource Name (ARN) for the recovery group.


=head2 RecoveryGroupName => Str

The name of the recovery group.


=head2 Tags => L<Paws::Route53RecoveryReadiness::Tags>

The tags associated with the recovery group.


=head2 _request_id => Str


=cut

