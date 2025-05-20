
package Paws::ChimeSDKMeetings::GetAttendeeResponse;
  use Moose;
  has Attendee => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::Attendee');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::GetAttendeeResponse

=head1 ATTRIBUTES


=head2 Attendee => L<Paws::ChimeSDKMeetings::Attendee>

The Amazon Chime SDK attendee information.


=head2 _request_id => Str


=cut

