
package Paws::WorkSpacesWeb::ListUserSettingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has UserSettings => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::UserSettingsSummary]', traits => ['NameInRequest'], request_name => 'userSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListUserSettingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 UserSettings => ArrayRef[L<Paws::WorkSpacesWeb::UserSettingsSummary>]

The user settings.


=head2 _request_id => Str


=cut

