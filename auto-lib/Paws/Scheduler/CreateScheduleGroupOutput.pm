
package Paws::Scheduler::CreateScheduleGroupOutput;
  use Moose;
  has ScheduleGroupArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::CreateScheduleGroupOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduleGroupArn => Str

The Amazon Resource Name (ARN) of the schedule group.


=head2 _request_id => Str


=cut

