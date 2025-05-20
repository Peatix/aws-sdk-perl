
package Paws::Scheduler::GetScheduleGroupOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has LastModificationDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::GetScheduleGroupOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the schedule group.


=head2 CreationDate => Str

The time at which the schedule group was created.


=head2 LastModificationDate => Str

The time at which the schedule group was last modified.


=head2 Name => Str

The name of the schedule group.


=head2 State => Str

Specifies the state of the schedule group.

Valid values are: C<"ACTIVE">, C<"DELETING">
=head2 _request_id => Str


=cut

