
package Paws::ChimeSDKMeetings::CreateAttendee;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::AttendeeCapabilities');
  has ExternalUserId => (is => 'ro', isa => 'Str', required => 1);
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MeetingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAttendee');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{MeetingId}/attendees');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMeetings::CreateAttendeeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::CreateAttendee - Arguments for method CreateAttendee on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAttendee on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method CreateAttendee.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAttendee.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    my $CreateAttendeeResponse = $meetings -chime->CreateAttendee(
      ExternalUserId => 'MyExternalUserId',
      MeetingId      => 'MyGuidString',
      Capabilities   => {
        Audio   => 'SendReceive',    # values: SendReceive, Send, Receive, None
        Content => 'SendReceive',    # values: SendReceive, Send, Receive, None
        Video   => 'SendReceive',    # values: SendReceive, Send, Receive, None

      },    # OPTIONAL
    );

    # Results:
    my $Attendee = $CreateAttendeeResponse->Attendee;

    # Returns a L<Paws::ChimeSDKMeetings::CreateAttendeeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/CreateAttendee>

=head1 ATTRIBUTES


=head2 Capabilities => L<Paws::ChimeSDKMeetings::AttendeeCapabilities>

The capabilities (C<audio>, C<video>, or C<content>) that you want to
grant an attendee. If you don't specify capabilities, all users have
send and receive capabilities on all media channels by default.

You use the capabilities with a set of values that control what the
capabilities can do, such as C<SendReceive> data. For more information
about those values, see .

When using capabilities, be aware of these corner cases:

=over

=item *

If you specify C<MeetingFeatures:Video:MaxResolution:None> when you
create a meeting, all API requests that include C<SendReceive>,
C<Send>, or C<Receive> for C<AttendeeCapabilities:Video> will be
rejected with C<ValidationError 400>.

=item *

If you specify C<MeetingFeatures:Content:MaxResolution:None> when you
create a meeting, all API requests that include C<SendReceive>,
C<Send>, or C<Receive> for C<AttendeeCapabilities:Content> will be
rejected with C<ValidationError 400>.

=item *

You can't set C<content> capabilities to C<SendReceive> or C<Receive>
unless you also set C<video> capabilities to C<SendReceive> or
C<Receive>. If you don't set the C<video> capability to receive, the
response will contain an HTTP 400 Bad Request status code. However, you
can set your C<video> capability to receive and you set your C<content>
capability to not receive.

=item *

When you change an C<audio> capability from C<None> or C<Receive> to
C<Send> or C<SendReceive> , and if the attendee left their microphone
unmuted, audio will flow from the attendee to the other meeting
participants.

=item *

When you change a C<video> or C<content> capability from C<None> or
C<Receive> to C<Send> or C<SendReceive> , and if the attendee turned on
their video or content streams, remote attendees can receive those
streams, but only after media renegotiation between the client and the
Amazon Chime back-end server.

=back




=head2 B<REQUIRED> ExternalUserId => Str

The Amazon Chime SDK external user ID. An idempotency token. Links the
attendee to an identity managed by a builder application.

Pattern:
C<[-_&@+=,(){}\[\]\/E<lchevron>E<rchevron>.:|'"#a-zA-Z0-9E<Agrave>-E<yuml>\s]*>

Values that begin with C<aws:> are reserved. You can't configure a
value that uses this prefix.



=head2 B<REQUIRED> MeetingId => Str

The unique ID of the meeting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAttendee in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

