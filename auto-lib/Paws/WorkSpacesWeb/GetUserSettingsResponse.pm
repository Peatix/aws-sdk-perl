
package Paws::WorkSpacesWeb::GetUserSettingsResponse;
  use Moose;
  has UserSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::UserSettings', traits => ['NameInRequest'], request_name => 'userSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetUserSettingsResponse

=head1 ATTRIBUTES


=head2 UserSettings => L<Paws::WorkSpacesWeb::UserSettings>

The user settings.


=head2 _request_id => Str


=cut

