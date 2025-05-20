
package Paws::ChimeSDKMeetings::CreateMeetingWithAttendees;
  use Moose;
  has Attendees => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMeetings::CreateAttendeeRequestItem]', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has ExternalMeetingId => (is => 'ro', isa => 'Str', required => 1);
  has MediaRegion => (is => 'ro', isa => 'Str', required => 1);
  has MeetingFeatures => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration');
  has MeetingHostId => (is => 'ro', isa => 'Str');
  has NotificationsConfiguration => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::NotificationsConfiguration');
  has PrimaryMeetingId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMeetings::Tag]');
  has TenantIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMeetingWithAttendees');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings?operation=create-attendees');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMeetings::CreateMeetingWithAttendeesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::CreateMeetingWithAttendees - Arguments for method CreateMeetingWithAttendees on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMeetingWithAttendees on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method CreateMeetingWithAttendees.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMeetingWithAttendees.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    my $CreateMeetingWithAttendeesResponse =
      $meetings -chime->CreateMeetingWithAttendees(
      Attendees => [
        {
          ExternalUserId => 'MyExternalUserId',    # min: 2, max: 64
          Capabilities   => {
            Audio   => 'SendReceive', # values: SendReceive, Send, Receive, None
            Content => 'SendReceive', # values: SendReceive, Send, Receive, None
            Video   => 'SendReceive', # values: SendReceive, Send, Receive, None

          },    # OPTIONAL
        },
        ...
      ],
      ClientRequestToken => 'MyClientRequestToken',
      ExternalMeetingId  => 'MyExternalMeetingId',
      MediaRegion        => 'MyMediaRegion',
      MeetingFeatures    => {
        Attendee => {
          MaxCount => 1,    # min: 1, max: 250; OPTIONAL
        },    # OPTIONAL
        Audio => {
          EchoReduction =>
            'AVAILABLE',    # values: AVAILABLE, UNAVAILABLE; OPTIONAL
        },    # OPTIONAL
        Content => {
          MaxResolution => 'None',    # values: None, FHD, UHD; OPTIONAL
        },    # OPTIONAL
        Video => {
          MaxResolution => 'None',    # values: None, HD, FHD; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MeetingHostId              => 'MyExternalUserId',    # OPTIONAL
      NotificationsConfiguration => {
        LambdaFunctionArn => 'MyArn',    # min: 1, max: 1024; OPTIONAL
        SnsTopicArn       => 'MyArn',    # min: 1, max: 1024; OPTIONAL
        SqsQueueArn       => 'MyArn',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      PrimaryMeetingId => 'MyPrimaryMeetingId',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TenantIds => [
        'MyTenantId', ...    # min: 2, max: 256
      ],    # OPTIONAL
      );

    # Results:
    my $Attendees = $CreateMeetingWithAttendeesResponse->Attendees;
    my $Errors    = $CreateMeetingWithAttendeesResponse->Errors;
    my $Meeting   = $CreateMeetingWithAttendeesResponse->Meeting;

# Returns a L<Paws::ChimeSDKMeetings::CreateMeetingWithAttendeesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/CreateMeetingWithAttendees>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attendees => ArrayRef[L<Paws::ChimeSDKMeetings::CreateAttendeeRequestItem>]

The attendee information, including attendees' IDs and join tokens.



=head2 B<REQUIRED> ClientRequestToken => Str

The unique identifier for the client request. Use a different token for
different meetings.



=head2 B<REQUIRED> ExternalMeetingId => Str

The external meeting ID.

Pattern:
C<[-_&@+=,(){}\[\]\/E<lchevron>E<rchevron>.:|'"#a-zA-Z0-9E<Agrave>-E<yuml>\s]*>

Values that begin with C<aws:> are reserved. You can't configure a
value that uses this prefix. Case insensitive.



=head2 B<REQUIRED> MediaRegion => Str

The Region in which to create the meeting.

Available values: C<af-south-1>, C<ap-northeast-1>, C<ap-northeast-2>,
C<ap-south-1>, C<ap-southeast-1>, C<ap-southeast-2>, C<ca-central-1>,
C<eu-central-1>, C<eu-north-1>, C<eu-south-1>, C<eu-west-1>,
C<eu-west-2>, C<eu-west-3>, C<sa-east-1>, C<us-east-1>, C<us-east-2>,
C<us-west-1>, C<us-west-2>.

Available values in Amazon Web Services GovCloud (US) Regions:
C<us-gov-east-1>, C<us-gov-west-1>.



=head2 MeetingFeatures => L<Paws::ChimeSDKMeetings::MeetingFeaturesConfiguration>

Lists the audio and video features enabled for a meeting, such as echo
reduction.



=head2 MeetingHostId => Str

Reserved.



=head2 NotificationsConfiguration => L<Paws::ChimeSDKMeetings::NotificationsConfiguration>

The configuration for resource targets to receive notifications when
meeting and attendee events occur.



=head2 PrimaryMeetingId => Str

When specified, replicates the media from the primary meeting to the
new meeting.



=head2 Tags => ArrayRef[L<Paws::ChimeSDKMeetings::Tag>]

The tags in the request.



=head2 TenantIds => ArrayRef[Str|Undef]

A consistent and opaque identifier, created and maintained by the
builder to represent a segment of their users.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMeetingWithAttendees in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

