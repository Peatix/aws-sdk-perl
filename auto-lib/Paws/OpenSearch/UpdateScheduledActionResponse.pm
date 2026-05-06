
package Paws::OpenSearch::UpdateScheduledActionResponse;
  use Moose;
  has ScheduledAction => (is => 'ro', isa => 'Paws::OpenSearch::ScheduledAction');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdateScheduledActionResponse

=head1 ATTRIBUTES


=head2 ScheduledAction => L<Paws::OpenSearch::ScheduledAction>

Information about the rescheduled action.


=head2 _request_id => Str


=cut

