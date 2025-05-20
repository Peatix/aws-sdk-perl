
package Paws::SSOAdmin::GetApplicationAuthenticationMethodResponse;
  use Moose;
  has AuthenticationMethod => (is => 'ro', isa => 'Paws::SSOAdmin::AuthenticationMethod');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetApplicationAuthenticationMethodResponse

=head1 ATTRIBUTES


=head2 AuthenticationMethod => L<Paws::SSOAdmin::AuthenticationMethod>

A structure that contains details about the requested authentication
method.


=head2 _request_id => Str


=cut

1;