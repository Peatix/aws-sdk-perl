
package Paws::WorkSpacesWeb::AssociateBrowserSettingsResponse;
  use Moose;
  has BrowserSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'browserSettingsArn', required => 1);
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::AssociateBrowserSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrowserSettingsArn => Str

The ARN of the browser settings.


=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.


=head2 _request_id => Str


=cut

