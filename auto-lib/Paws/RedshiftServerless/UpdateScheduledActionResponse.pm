
package Paws::RedshiftServerless::UpdateScheduledActionResponse;
  use Moose;
  has ScheduledAction => (is => 'ro', isa => 'Paws::RedshiftServerless::ScheduledActionResponse', traits => ['NameInRequest'], request_name => 'scheduledAction' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::UpdateScheduledActionResponse

=head1 ATTRIBUTES


=head2 ScheduledAction => L<Paws::RedshiftServerless::ScheduledActionResponse>

The ScheduledAction object that was updated.


=head2 _request_id => Str


=cut

1;