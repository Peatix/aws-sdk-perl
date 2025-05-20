
package Paws::WorkSpacesWeb::GetIdentityProviderResponse;
  use Moose;
  has IdentityProvider => (is => 'ro', isa => 'Paws::WorkSpacesWeb::IdentityProvider', traits => ['NameInRequest'], request_name => 'identityProvider');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetIdentityProviderResponse

=head1 ATTRIBUTES


=head2 IdentityProvider => L<Paws::WorkSpacesWeb::IdentityProvider>

The identity provider.


=head2 _request_id => Str


=cut

