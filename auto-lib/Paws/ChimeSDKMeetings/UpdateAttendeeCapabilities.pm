
package Paws::ChimeSDKMeetings::UpdateAttendeeCapabilities;
  use Moose;
  has AttendeeId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AttendeeId', required => 1);
  has Capabilities => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::AttendeeCapabilities', required => 1);
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MeetingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAttendeeCapabilities');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{MeetingId}/attendees/{AttendeeId}/capabilities');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMeetings::UpdateAttendeeCapabilitiesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::UpdateAttendeeCapabilities - Arguments for method UpdateAttendeeCapabilities on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAttendeeCapabilities on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method UpdateAttendeeCapabilities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAttendeeCapabilities.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    my $UpdateAttendeeCapabilitiesResponse =
      $meetings -chime->UpdateAttendeeCapabilities(
      AttendeeId   => 'MyGuidString',
      Capabilities => {
        Audio   => 'SendReceive',    # values: SendReceive, Send, Receive, None
        Content => 'SendReceive',    # values: SendReceive, Send, Receive, None
        Video   => 'SendReceive',    # values: SendReceive, Send, Receive, None

      },
      MeetingId => 'MyGuidString',

      );

    # Results:
    my $Attendee = $UpdateAttendeeCapabilitiesResponse->Attendee;

# Returns a L<Paws::ChimeSDKMeetings::UpdateAttendeeCapabilitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/UpdateAttendeeCapabilities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttendeeId => Str

The ID of the attendee associated with the update request.



=head2 B<REQUIRED> Capabilities => L<Paws::ChimeSDKMeetings::AttendeeCapabilities>

The capabilities that you want to update.



=head2 B<REQUIRED> MeetingId => Str

The ID of the meeting associated with the update request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAttendeeCapabilities in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

