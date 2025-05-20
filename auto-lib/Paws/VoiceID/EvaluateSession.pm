
package Paws::VoiceID::EvaluateSession;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SessionNameOrId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EvaluateSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VoiceID::EvaluateSessionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::EvaluateSession - Arguments for method EvaluateSession on L<Paws::VoiceID>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EvaluateSession on the
L<Amazon Voice ID|Paws::VoiceID> service. Use the attributes of this class
as arguments to method EvaluateSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EvaluateSession.

=head1 SYNOPSIS

    my $voiceid = Paws->service('VoiceID');
    my $EvaluateSessionResponse = $voiceid->EvaluateSession(
      DomainId        => 'MyDomainId',
      SessionNameOrId => 'MySessionNameOrId',

    );

    # Results:
    my $AuthenticationResult = $EvaluateSessionResponse->AuthenticationResult;
    my $DomainId             = $EvaluateSessionResponse->DomainId;
    my $FraudDetectionResult = $EvaluateSessionResponse->FraudDetectionResult;
    my $SessionId            = $EvaluateSessionResponse->SessionId;
    my $SessionName          = $EvaluateSessionResponse->SessionName;
    my $StreamingStatus      = $EvaluateSessionResponse->StreamingStatus;

    # Returns a L<Paws::VoiceID::EvaluateSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/voiceid/EvaluateSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The identifier of the domain where the session started.



=head2 B<REQUIRED> SessionNameOrId => Str

The session identifier, or name of the session, that you want to
evaluate. In Voice ID integration, this is the Contact-Id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EvaluateSession in L<Paws::VoiceID>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

