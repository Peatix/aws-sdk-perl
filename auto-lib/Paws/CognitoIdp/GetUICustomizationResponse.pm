
package Paws::CognitoIdp::GetUICustomizationResponse;
  use Moose;
  has UICustomization => (is => 'ro', isa => 'Paws::CognitoIdp::UICustomizationType', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetUICustomizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UICustomization => L<Paws::CognitoIdp::UICustomizationType>

Information about the classic hosted UI custom CSS and logo-image
branding that you applied to the user pool or app client.


=head2 _request_id => Str


=cut

1;