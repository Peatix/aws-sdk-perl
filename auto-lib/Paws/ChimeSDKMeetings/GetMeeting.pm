
package Paws::ChimeSDKMeetings::GetMeeting;
  use Moose;
  has MeetingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'MeetingId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMeeting');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/meetings/{MeetingId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ChimeSDKMeetings::GetMeetingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ChimeSDKMeetings::GetMeeting - Arguments for method GetMeeting on L<Paws::ChimeSDKMeetings>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMeeting on the
L<Amazon Chime SDK Meetings|Paws::ChimeSDKMeetings> service. Use the attributes of this class
as arguments to method GetMeeting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMeeting.

=head1 SYNOPSIS

    my $meetings-chime = Paws->service('ChimeSDKMeetings');
    my $GetMeetingResponse = $meetings -chime->GetMeeting(
      MeetingId => 'MyGuidString',

    );

    # Results:
    my $Meeting = $GetMeetingResponse->Meeting;

    # Returns a L<Paws::ChimeSDKMeetings::GetMeetingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/meetings-chime/GetMeeting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MeetingId => Str

The Amazon Chime SDK meeting ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMeeting in L<Paws::ChimeSDKMeetings>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

