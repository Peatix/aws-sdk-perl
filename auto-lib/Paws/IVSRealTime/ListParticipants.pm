
package Paws::IVSRealTime::ListParticipants;
  use Moose;
  has FilterByPublished => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'filterByPublished');
  has FilterByRecordingState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByRecordingState');
  has FilterByState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByState');
  has FilterByUserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterByUserId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);
  has StageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListParticipants');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListParticipants');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::ListParticipantsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListParticipants - Arguments for method ListParticipants on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListParticipants on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method ListParticipants.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListParticipants.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $ListParticipantsResponse = $ivsrealtime->ListParticipants(
      SessionId              => 'MyStageSessionId',
      StageArn               => 'MyStageArn',
      FilterByPublished      => 1,                      # OPTIONAL
      FilterByRecordingState => 'STARTING',             # OPTIONAL
      FilterByState          => 'CONNECTED',            # OPTIONAL
      FilterByUserId         => 'MyUserId',             # OPTIONAL
      MaxResults             => 1,                      # OPTIONAL
      NextToken              => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListParticipantsResponse->NextToken;
    my $Participants = $ListParticipantsResponse->Participants;

    # Returns a L<Paws::IVSRealTime::ListParticipantsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/ListParticipants>

=head1 ATTRIBUTES


=head2 FilterByPublished => Bool

Filters the response list to only show participants who published
during the stage session. Only one of C<filterByUserId>,
C<filterByPublished>, C<filterByState>, or C<filterByRecordingState>
can be provided per request.



=head2 FilterByRecordingState => Str

Filters the response list to only show participants with the specified
recording state. Only one of C<filterByUserId>, C<filterByPublished>,
C<filterByState>, or C<filterByRecordingState> can be provided per
request.

Valid values are: C<"STARTING">, C<"ACTIVE">, C<"STOPPING">, C<"STOPPED">, C<"FAILED">

=head2 FilterByState => Str

Filters the response list to only show participants in the specified
state. Only one of C<filterByUserId>, C<filterByPublished>,
C<filterByState>, or C<filterByRecordingState> can be provided per
request.

Valid values are: C<"CONNECTED">, C<"DISCONNECTED">

=head2 FilterByUserId => Str

Filters the response list to match the specified user ID. Only one of
C<filterByUserId>, C<filterByPublished>, C<filterByState>, or
C<filterByRecordingState> can be provided per request. A C<userId> is a
customer-assigned name to help identify the token; this can be used to
link a participant to a user in the customerE<rsquo>s own systems.



=head2 MaxResults => Int

Maximum number of results to return. Default: 50.



=head2 NextToken => Str

The first participant to retrieve. This is used for pagination; see the
C<nextToken> response field.



=head2 B<REQUIRED> SessionId => Str

ID of the session within the stage.



=head2 B<REQUIRED> StageArn => Str

Stage ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListParticipants in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

