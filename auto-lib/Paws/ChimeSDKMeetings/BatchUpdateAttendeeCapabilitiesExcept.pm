
package Paws::ChimeSDKMeetings::BatchUpdateAttendeeCapabilitiesExcept;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'Paws::ChimeSDKMeetings::AttendeeCapabilities', required => 1);
  has ExcludedAttendeeIds => (is => 'ro', isa => 'ArrayRef[Paws::ChimeSDKMeetings::AttendeeIdItem]', required => 1);
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MeetingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateAttendeeCapabilitiesExcept');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{MeetingId}/attendees/capabilities?operation=batch-update-except');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::BatchUpdateAttendeeCapabilitiesExcept - Arguments for method BatchUpdateAttendeeCapabilitiesExcept on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateAttendeeCapabilitiesExcept on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method BatchUpdateAttendeeCapabilitiesExcept.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateAttendeeCapabilitiesExcept.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    $meetings -chime->BatchUpdateAttendeeCapabilitiesExcept(
      Capabilities => {
        Audio   => 'SendReceive',    # values: SendReceive, Send, Receive, None
        Content => 'SendReceive',    # values: SendReceive, Send, Receive, None
        Video   => 'SendReceive',    # values: SendReceive, Send, Receive, None

      },
      ExcludedAttendeeIds => [
        {
          AttendeeId => 'MyGuidString',

        },
        ...
      ],
      MeetingId => 'MyGuidString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/BatchUpdateAttendeeCapabilitiesExcept>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Capabilities => L<Paws::ChimeSDKMeetings::AttendeeCapabilities>

The capabilities (C<audio>, C<video>, or C<content>) that you want to
update.



=head2 B<REQUIRED> ExcludedAttendeeIds => ArrayRef[L<Paws::ChimeSDKMeetings::AttendeeIdItem>]

The C<AttendeeIDs> that you want to exclude from one or more
capabilities.



=head2 B<REQUIRED> MeetingId => Str

The ID of the meeting associated with the update request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateAttendeeCapabilitiesExcept in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

