
package Paws::WorkSpacesWeb::CreateBrowserSettingsResponse;
  use Moose;
  has BrowserSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'browserSettingsArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateBrowserSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrowserSettingsArn => Str

The ARN of the browser settings.


=head2 _request_id => Str


=cut

