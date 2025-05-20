
package Paws::Scheduler::UpdateScheduleOutput;
  use Moose;
  has ScheduleArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Scheduler::UpdateScheduleOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScheduleArn => Str

The Amazon Resource Name (ARN) of the schedule that you updated.


=head2 _request_id => Str


=cut

