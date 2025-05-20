
package Paws::RedshiftServerless::DeleteScheduledActionResponse;
  use Moose;
  has ScheduledAction => (is => 'ro', isa => 'Paws::RedshiftServerless::ScheduledActionResponse', traits => ['NameInRequest'], request_name => 'scheduledAction' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::DeleteScheduledActionResponse

=head1 ATTRIBUTES


=head2 ScheduledAction => L<Paws::RedshiftServerless::ScheduledActionResponse>

The deleted scheduled action object.


=head2 _request_id => Str


=cut

1;