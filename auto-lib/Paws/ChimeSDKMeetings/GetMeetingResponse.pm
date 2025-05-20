
package Paws::ChimeSDKMeetings::GetMeetingResponse;
  use Moose;
  has Meeting => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::Meeting');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::GetMeetingResponse

=head1 ATTRIBUTES


=head2 Meeting => L<Paws::ChimeSDKMeetings::Meeting>

The Amazon Chime SDK meeting information.


=head2 _request_id => Str


=cut

