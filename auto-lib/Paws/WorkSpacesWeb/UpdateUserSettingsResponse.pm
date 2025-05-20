
package Paws::WorkSpacesWeb::UpdateUserSettingsResponse;
  use Moose;
  has UserSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::UserSettings', traits => ['NameInRequest'], request_name => 'userSettings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdateUserSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserSettings => L<Paws::WorkSpacesWeb::UserSettings>

The user settings.


=head2 _request_id => Str


=cut

