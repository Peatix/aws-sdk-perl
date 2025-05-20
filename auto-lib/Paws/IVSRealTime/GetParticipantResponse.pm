
package Paws::IVSRealTime::GetParticipantResponse;
  use Moose;
  has Participant => (is => 'ro', isa => 'Paws::IVSRealTime::Participant', traits => ['NameInRequest'], request_name => 'participant');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::GetParticipantResponse

=head1 ATTRIBUTES


=head2 Participant => L<Paws::IVSRealTime::Participant>

The participant that is returned.


=head2 _request_id => Str


=cut

