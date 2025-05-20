
package Paws::ChimeSDKMeetings::BatchCreateAttendee;
  use Moose;
  has Attendees => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMeetings::CreateAttendeeRequestItem]', required => 1);
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MeetingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateAttendee');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{MeetingId}/attendees?operation=batch-create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMeetings::BatchCreateAttendeeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::BatchCreateAttendee - Arguments for method BatchCreateAttendee on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateAttendee on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method BatchCreateAttendee.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateAttendee.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    my $BatchCreateAttendeeResponse = $meetings -chime->BatchCreateAttendee(
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
      MeetingId => 'MyGuidString',

    );

    # Results:
    my $Attendees = $BatchCreateAttendeeResponse->Attendees;
    my $Errors    = $BatchCreateAttendeeResponse->Errors;

    # Returns a L<Paws::ChimeSDKMeetings::BatchCreateAttendeeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/BatchCreateAttendee>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attendees => ArrayRef[L<Paws::ChimeSDKMeetings::CreateAttendeeRequestItem>]

The attendee information, including attendees' IDs and join tokens.



=head2 B<REQUIRED> MeetingId => Str

The Amazon Chime SDK ID of the meeting to which you're adding
attendees.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateAttendee in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

