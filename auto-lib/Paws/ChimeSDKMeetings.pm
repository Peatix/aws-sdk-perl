package Paws::ChimeSDKMeetings;
  use Moose;
  sub service { 'meetings-chime' }
  sub signing_name { 'chime' }
  sub version { '2021-07-15' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub BatchCreateAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::BatchCreateAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateAttendeeCapabilitiesExcept {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::BatchUpdateAttendeeCapabilitiesExcept', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::CreateAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::CreateMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMeetingWithAttendees {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::CreateMeetingWithAttendees', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::DeleteAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::DeleteMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAttendee {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::GetAttendee', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMeeting {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::GetMeeting', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAttendees {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::ListAttendees', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMeetingTranscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::StartMeetingTranscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopMeetingTranscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::StopMeetingTranscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAttendeeCapabilities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ChimeSDKMeetings::UpdateAttendeeCapabilities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchCreateAttendee BatchUpdateAttendeeCapabilitiesExcept CreateAttendee CreateMeeting CreateMeetingWithAttendees DeleteAttendee DeleteMeeting GetAttendee GetMeeting ListAttendees ListTagsForResource StartMeetingTranscription StopMeetingTranscription TagResource UntagResource UpdateAttendeeCapabilities / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings - Perl Interface to AWS Amazon Chime SDK Meetings

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ChimeSDKMeetings');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Amazon Chime SDK meetings APIs in this section allow software
developers to create Amazon Chime SDK meetings, set the Amazon Web
Services Regions for meetings, create and manage users, and send and
receive meeting notifications. For more information about the meeting
APIs, see Amazon Chime SDK meetings
(https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Meetings.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime-2021-07-15>


=head1 METHODS

=head2 BatchCreateAttendee

=over

=item Attendees => ArrayRef[L<Paws::ChimeSDKMeetings::CreateAttendeeRequestItem>]

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::BatchCreateAttendee>

Returns: a L<Paws::ChimeSDKMeetings::BatchCreateAttendeeResponse> instance

Creates up to 100 attendees for an active Amazon Chime SDK meeting. For
more information about the Amazon Chime SDK, see Using the Amazon Chime
SDK (https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in
the I<Amazon Chime Developer Guide>.


=head2 BatchUpdateAttendeeCapabilitiesExcept

=over

=item Capabilities => L<Paws::ChimeSDKMeetings::AttendeeCapabilities>

=item ExcludedAttendeeIds => ArrayRef[L<Paws::ChimeSDKMeetings::AttendeeIdItem>]

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::BatchUpdateAttendeeCapabilitiesExcept>

Returns: nothing

Updates C<AttendeeCapabilities> except the capabilities listed in an
C<ExcludedAttendeeIds> table.

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



=head2 CreateAttendee

=over

=item ExternalUserId => Str

=item MeetingId => Str

=item [Capabilities => L<Paws::ChimeSDKMeetings::AttendeeCapabilities>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::CreateAttendee>

Returns: a L<Paws::ChimeSDKMeetings::CreateAttendeeResponse> instance

Creates a new attendee for an active Amazon Chime SDK meeting. For more
information about the Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 CreateMeeting

=over

=item ClientRequestToken => Str

=item ExternalMeetingId => Str

=item MediaRegion => Str

=item [MeetingFeatures => L<Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration>]

=item [MeetingHostId => Str]

=item [NotificationsConfiguration => L<Paws::ChimeSDKMeetings::NotificationsConfiguration>]

=item [PrimaryMeetingId => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMeetings::Tag>]]

=item [TenantIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::CreateMeeting>

Returns: a L<Paws::ChimeSDKMeetings::CreateMeetingResponse> instance

Creates a new Amazon Chime SDK meeting in the specified media Region
with no initial attendees. For more information about specifying media
Regions, see Amazon Chime SDK Media Regions
(https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
in the I<Amazon Chime Developer Guide>. For more information about the
Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 CreateMeetingWithAttendees

=over

=item Attendees => ArrayRef[L<Paws::ChimeSDKMeetings::CreateAttendeeRequestItem>]

=item ClientRequestToken => Str

=item ExternalMeetingId => Str

=item MediaRegion => Str

=item [MeetingFeatures => L<Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration>]

=item [MeetingHostId => Str]

=item [NotificationsConfiguration => L<Paws::ChimeSDKMeetings::NotificationsConfiguration>]

=item [PrimaryMeetingId => Str]

=item [Tags => ArrayRef[L<Paws::ChimeSDKMeetings::Tag>]]

=item [TenantIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::CreateMeetingWithAttendees>

Returns: a L<Paws::ChimeSDKMeetings::CreateMeetingWithAttendeesResponse> instance

Creates a new Amazon Chime SDK meeting in the specified media Region,
with attendees. For more information about specifying media Regions,
see Amazon Chime SDK Media Regions
(https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
in the I<Amazon Chime Developer Guide>. For more information about the
Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 DeleteAttendee

=over

=item AttendeeId => Str

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::DeleteAttendee>

Returns: nothing

Deletes an attendee from the specified Amazon Chime SDK meeting and
deletes their C<JoinToken>. Attendees are automatically deleted when a
Amazon Chime SDK meeting is deleted. For more information about the
Amazon Chime SDK, see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 DeleteMeeting

=over

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::DeleteMeeting>

Returns: nothing

Deletes the specified Amazon Chime SDK meeting. The operation deletes
all attendees, disconnects all clients, and prevents new clients from
joining the meeting. For more information about the Amazon Chime SDK,
see Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 GetAttendee

=over

=item AttendeeId => Str

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::GetAttendee>

Returns: a L<Paws::ChimeSDKMeetings::GetAttendeeResponse> instance

Gets the Amazon Chime SDK attendee details for a specified meeting ID
and attendee ID. For more information about the Amazon Chime SDK, see
Using the Amazon Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 GetMeeting

=over

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::GetMeeting>

Returns: a L<Paws::ChimeSDKMeetings::GetMeetingResponse> instance

Gets the Amazon Chime SDK meeting details for the specified meeting ID.
For more information about the Amazon Chime SDK, see Using the Amazon
Chime SDK
(https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
I<Amazon Chime Developer Guide>.


=head2 ListAttendees

=over

=item MeetingId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::ListAttendees>

Returns: a L<Paws::ChimeSDKMeetings::ListAttendeesResponse> instance

Lists the attendees for the specified Amazon Chime SDK meeting. For
more information about the Amazon Chime SDK, see Using the Amazon Chime
SDK (https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in
the I<Amazon Chime Developer Guide>.


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::ListTagsForResource>

Returns: a L<Paws::ChimeSDKMeetings::ListTagsForResourceResponse> instance

Returns a list of the tags available for the specified resource.


=head2 StartMeetingTranscription

=over

=item MeetingId => Str

=item TranscriptionConfiguration => L<Paws::ChimeSDKMeetings::TranscriptionConfiguration>


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::StartMeetingTranscription>

Returns: nothing

Starts transcription for the specified C<meetingId>. For more
information, refer to Using Amazon Chime SDK live transcription
(https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html)
in the I<Amazon Chime SDK Developer Guide>.

If you specify an invalid configuration, a C<TranscriptFailed> event
will be sent with the contents of the C<BadRequestException> generated
by Amazon Transcribe. For more information on each parameter and which
combinations are valid, refer to the StartStreamTranscription
(https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html)
API in the I<Amazon Transcribe Developer Guide>.

By default, Amazon Transcribe may use and store audio content processed
by the service to develop and improve Amazon Web Services AI/ML
services as further described in section 50 of the Amazon Web Services
Service Terms (https://aws.amazon.com/service-terms/). Using Amazon
Transcribe may be subject to federal and state laws or regulations
regarding the recording or interception of electronic communications.
It is your and your end usersE<rsquo> responsibility to comply with all
applicable laws regarding the recording, including properly notifying
all participants in a recorded session or communication that the
session or communication is being recorded, and obtaining all necessary
consents. You can opt out from Amazon Web Services using audio content
to develop and improve AWS AI/ML services by configuring an AI services
opt out policy using Amazon Web Services Organizations.


=head2 StopMeetingTranscription

=over

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::StopMeetingTranscription>

Returns: nothing

Stops transcription for the specified C<meetingId>. For more
information, refer to Using Amazon Chime SDK live transcription
(https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html)
in the I<Amazon Chime SDK Developer Guide>.

By default, Amazon Transcribe may use and store audio content processed
by the service to develop and improve Amazon Web Services AI/ML
services as further described in section 50 of the Amazon Web Services
Service Terms (https://aws.amazon.com/service-terms/). Using Amazon
Transcribe may be subject to federal and state laws or regulations
regarding the recording or interception of electronic communications.
It is your and your end usersE<rsquo> responsibility to comply with all
applicable laws regarding the recording, including properly notifying
all participants in a recorded session or communication that the
session or communication is being recorded, and obtaining all necessary
consents. You can opt out from Amazon Web Services using audio content
to develop and improve Amazon Web Services AI/ML services by
configuring an AI services opt out policy using Amazon Web Services
Organizations.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::ChimeSDKMeetings::Tag>]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::TagResource>

Returns: a L<Paws::ChimeSDKMeetings::TagResourceResponse> instance

The resource that supports tags.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::UntagResource>

Returns: a L<Paws::ChimeSDKMeetings::UntagResourceResponse> instance

Removes the specified tags from the specified resources. When you
specify a tag key, the action removes both that key and its associated
value. The operation succeeds even if you attempt to remove tags from a
resource that were already removed. Note the following:

=over

=item *

To remove tags from a resource, you need the necessary permissions for
the service that the resource belongs to as well as permissions for
removing tags. For more information, see the documentation for the
service whose resource you want to untag.

=item *

You can only tag resources that are located in the specified Amazon Web
Services Region for the calling Amazon Web Services account.

=back

B<Minimum permissions>

In addition to the C<tag:UntagResources> permission required by this
operation, you must also have the remove tags permission defined by the
service that created the resource. For example, to remove the tags from
an Amazon EC2 instance using the C<UntagResources> operation, you must
have both of the following permissions:

C<tag:UntagResource>

C<ChimeSDKMeetings:DeleteTags>


=head2 UpdateAttendeeCapabilities

=over

=item AttendeeId => Str

=item Capabilities => L<Paws::ChimeSDKMeetings::AttendeeCapabilities>

=item MeetingId => Str


=back

Each argument is described in detail in: L<Paws::ChimeSDKMeetings::UpdateAttendeeCapabilities>

Returns: a L<Paws::ChimeSDKMeetings::UpdateAttendeeCapabilitiesResponse> instance

The capabilities that you want to update.

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





=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

