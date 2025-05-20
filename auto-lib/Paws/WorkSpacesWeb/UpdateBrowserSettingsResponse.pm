
package Paws::WorkSpacesWeb::UpdateBrowserSettingsResponse;
  use Moose;
  has BrowserSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::BrowserSettings', traits => ['NameInRequest'], request_name => 'browserSettings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdateBrowserSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrowserSettings => L<Paws::WorkSpacesWeb::BrowserSettings>

The browser settings.


=head2 _request_id => Str


=cut

