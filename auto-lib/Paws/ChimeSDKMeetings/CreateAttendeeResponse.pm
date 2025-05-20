
package Paws::ChimeSDKMeetings::CreateAttendeeResponse;
  use Moose;
  has Attendee => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::Attendee');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::CreateAttendeeResponse

=head1 ATTRIBUTES


=head2 Attendee => L<Paws::ChimeSDKMeetings::Attendee>

The attendee information, including attendee ID and join token.


=head2 _request_id => Str


=cut

