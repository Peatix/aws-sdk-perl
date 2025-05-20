
package Paws::VoiceID::EvaluateSessionResponse;
  use Moose;
  has AuthenticationResult => (is => 'ro', isa => 'Paws::VoiceID::AuthenticationResult');
  has DomainId => (is => 'ro', isa => 'Str');
  has FraudDetectionResult => (is => 'ro', isa => 'Paws::VoiceID::FraudDetectionResult');
  has SessionId => (is => 'ro', isa => 'Str');
  has SessionName => (is => 'ro', isa => 'Str');
  has StreamingStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::EvaluateSessionResponse

=head1 ATTRIBUTES


=head2 AuthenticationResult => L<Paws::VoiceID::AuthenticationResult>

Details resulting from the authentication process, such as
authentication decision and authentication score.


=head2 DomainId => Str

The identifier of the domain that contains the session.


=head2 FraudDetectionResult => L<Paws::VoiceID::FraudDetectionResult>

Details resulting from the fraud detection process, such as fraud
detection decision and risk score.


=head2 SessionId => Str

The service-generated identifier of the session.


=head2 SessionName => Str

The client-provided name of the session.


=head2 StreamingStatus => Str

The current status of audio streaming for this session. This field is
useful to infer next steps when the Authentication or Fraud Detection
results are empty or the decision is C<NOT_ENOUGH_SPEECH>. In this
situation, if the C<StreamingStatus> is
C<ONGOING/PENDING_CONFIGURATION>, it can mean that the client should
call the API again later, after Voice ID has enough audio to produce a
result. If the decision remains C<NOT_ENOUGH_SPEECH> even after
C<StreamingStatus> is C<ENDED>, it means that the previously streamed
session did not have enough speech to perform evaluation, and a new
streaming session is needed to try again.

Valid values are: C<"PENDING_CONFIGURATION">, C<"ONGOING">, C<"ENDED">
=head2 _request_id => Str


=cut

1;