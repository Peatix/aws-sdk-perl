
package Paws::IVSRealTime::DisconnectParticipant;
  use Moose;
  has ParticipantId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'participantId', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');
  has StageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisconnectParticipant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DisconnectParticipant');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVSRealTime::DisconnectParticipantResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::DisconnectParticipant - Arguments for method DisconnectParticipant on L<Paws::IVSRealTime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisconnectParticipant on the
L<Amazon Interactive Video Service RealTime|Paws::IVSRealTime> service. Use the attributes of this class
as arguments to method DisconnectParticipant.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisconnectParticipant.

=head1 SYNOPSIS

    my $ivsrealtime = Paws->service('IVSRealTime');
    my $DisconnectParticipantResponse = $ivsrealtime->DisconnectParticipant(
      ParticipantId => 'MyParticipantTokenId',
      StageArn      => 'MyStageArn',
      Reason        => 'MyDisconnectParticipantReason',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivsrealtime/DisconnectParticipant>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ParticipantId => Str

Identifier of the participant to be disconnected. IVS assigns this; it
is returned by CreateParticipantToken (for streams using WebRTC ingest)
or CreateIngestConfiguration (for streams using RTMP ingest).



=head2 Reason => Str

Description of why this participant is being disconnected.



=head2 B<REQUIRED> StageArn => Str

ARN of the stage to which the participant is attached.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisconnectParticipant in L<Paws::IVSRealTime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

