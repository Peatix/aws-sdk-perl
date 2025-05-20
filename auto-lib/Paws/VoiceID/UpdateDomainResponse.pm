
package Paws::VoiceID::UpdateDomainResponse;
  use Moose;
  has Domain => (is => 'ro', isa => 'Paws::VoiceID::Domain');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::UpdateDomainResponse

=head1 ATTRIBUTES


=head2 Domain => L<Paws::VoiceID::Domain>

Details about the updated domain


=head2 _request_id => Str


=cut

1;