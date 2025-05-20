
package Paws::RedshiftServerless::CreateScheduledActionResponse;
  use Moose;
  has ScheduledAction => (is => 'ro', isa => 'Paws::RedshiftServerless::ScheduledActionResponse', traits => ['NameInRequest'], request_name => 'scheduledAction' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateScheduledActionResponse

=head1 ATTRIBUTES


=head2 ScheduledAction => L<Paws::RedshiftServerless::ScheduledActionResponse>

The returned C<ScheduledAction> object that describes the properties of
a scheduled action.


=head2 _request_id => Str


=cut

1;