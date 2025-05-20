
package Paws::Chime::RegenerateSecurityTokenResponse;
  use Moose;
  has Bot => (is => 'ro', isa => 'Paws::Chime::Bot');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::RegenerateSecurityTokenResponse

=head1 ATTRIBUTES


=head2 Bot => L<Paws::Chime::Bot>

A resource that allows Enterprise account administrators to configure
an interface that receives events from Amazon Chime.


=head2 _request_id => Str


=cut

