
package Paws::IVSRealTime::CreateStageResponse;
  use Moose;
  has ParticipantTokens => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::ParticipantToken]', traits => ['NameInRequest'], request_name => 'participantTokens');
  has Stage => (is => 'ro', isa => 'Paws::IVSRealTime::Stage', traits => ['NameInRequest'], request_name => 'stage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::CreateStageResponse

=head1 ATTRIBUTES


=head2 ParticipantTokens => ArrayRef[L<Paws::IVSRealTime::ParticipantToken>]

Participant tokens attached to the stage. These correspond to the
C<participants> in the request.


=head2 Stage => L<Paws::IVSRealTime::Stage>

The stage that was created.


=head2 _request_id => Str


=cut

