
package Paws::CognitoIdp::CreateManagedLoginBrandingResponse;
  use Moose;
  has ManagedLoginBranding => (is => 'ro', isa => 'Paws::CognitoIdp::ManagedLoginBrandingType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateManagedLoginBrandingResponse

=head1 ATTRIBUTES


=head2 ManagedLoginBranding => L<Paws::CognitoIdp::ManagedLoginBrandingType>

The details of the branding style that you created.


=head2 _request_id => Str


=cut

1;