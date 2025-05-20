
package Paws::WorkSpacesWeb::ListBrowserSettingsResponse;
  use Moose;
  has BrowserSettings => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::BrowserSettingsSummary]', traits => ['NameInRequest'], request_name => 'browserSettings');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListBrowserSettingsResponse

=head1 ATTRIBUTES


=head2 BrowserSettings => ArrayRef[L<Paws::WorkSpacesWeb::BrowserSettingsSummary>]

The browser settings.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

