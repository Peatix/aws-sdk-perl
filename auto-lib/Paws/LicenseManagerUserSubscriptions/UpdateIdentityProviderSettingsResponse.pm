
package Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettingsResponse;
  use Moose;
  has IdentityProviderSummary => (is => 'ro', isa => 'Paws::LicenseManagerUserSubscriptions::IdentityProviderSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerUserSubscriptions::UpdateIdentityProviderSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityProviderSummary => L<Paws::LicenseManagerUserSubscriptions::IdentityProviderSummary>




=head2 _request_id => Str


=cut

