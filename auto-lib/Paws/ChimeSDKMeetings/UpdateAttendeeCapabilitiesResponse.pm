
package Paws::ChimeSDKMeetings::UpdateAttendeeCapabilitiesResponse;
  use Moose;
  has Attendee => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::Attendee');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::UpdateAttendeeCapabilitiesResponse

=head1 ATTRIBUTES


=head2 Attendee => L<Paws::ChimeSDKMeetings::Attendee>

The updated attendee data.


=head2 _request_id => Str


=cut

