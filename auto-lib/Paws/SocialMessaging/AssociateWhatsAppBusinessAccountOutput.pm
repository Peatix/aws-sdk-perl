
package Paws::SocialMessaging::AssociateWhatsAppBusinessAccountOutput;
  use Moose;
  has SignupCallbackResult => (is => 'ro', isa => 'Paws::SocialMessaging::WhatsAppSignupCallbackResult', traits => ['NameInRequest'], request_name => 'signupCallbackResult');
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SocialMessaging::AssociateWhatsAppBusinessAccountOutput

=head1 ATTRIBUTES


=head2 SignupCallbackResult => L<Paws::SocialMessaging::WhatsAppSignupCallbackResult>

Contains your WhatsApp registration status.


=head2 StatusCode => Int

The status code for the response.


=head2 _request_id => Str


=cut

