
package Paws::Connect::StartWebRTCContactResponse;
  use Moose;
  has ConnectionData => (is => 'ro', isa => 'Paws::Connect::ConnectionData');
  has ContactId => (is => 'ro', isa => 'Str');
  has ParticipantId => (is => 'ro', isa => 'Str');
  has ParticipantToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartWebRTCContactResponse

=head1 ATTRIBUTES


=head2 ConnectionData => L<Paws::Connect::ConnectionData>

Information required for the client application (mobile application or
website) to connect to the call.


=head2 ContactId => Str

The identifier of the contact in this instance of Amazon Connect.


=head2 ParticipantId => Str

The identifier for a contact participant. The C<ParticipantId> for a
contact participant is the same throughout the contact lifecycle.


=head2 ParticipantToken => Str

The token used by the contact participant to call the
CreateParticipantConnection
(https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
API. The participant token is valid for the lifetime of a contact
participant.


=head2 _request_id => Str


=cut

