
package Paws::CloudWatchLogs::PutLogEventsResponse;
  use Moose;
  has NextSequenceToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextSequenceToken' );
  has RejectedEntityInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::RejectedEntityInfo', traits => ['NameInRequest'], request_name => 'rejectedEntityInfo' );
  has RejectedLogEventsInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::RejectedLogEventsInfo', traits => ['NameInRequest'], request_name => 'rejectedLogEventsInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutLogEventsResponse

=head1 ATTRIBUTES


=head2 NextSequenceToken => Str

The next sequence token.

This field has been deprecated.

The sequence token is now ignored in C<PutLogEvents> actions.
C<PutLogEvents> actions are always accepted even if the sequence token
is not valid. You can use parallel C<PutLogEvents> actions on the same
log stream and you do not need to wait for the response of a previous
C<PutLogEvents> action to obtain the C<nextSequenceToken> value.


=head2 RejectedEntityInfo => L<Paws::CloudWatchLogs::RejectedEntityInfo>

Information about why the entity is rejected when calling
C<PutLogEvents>. Only returned when the entity is rejected.

When the entity is rejected, the events may still be accepted.


=head2 RejectedLogEventsInfo => L<Paws::CloudWatchLogs::RejectedLogEventsInfo>

The rejected events.


=head2 _request_id => Str


=cut

1;