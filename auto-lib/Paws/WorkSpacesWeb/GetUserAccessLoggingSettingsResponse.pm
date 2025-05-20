
package Paws::WorkSpacesWeb::GetUserAccessLoggingSettingsResponse;
  use Moose;
  has UserAccessLoggingSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::UserAccessLoggingSettings', traits => ['NameInRequest'], request_name => 'userAccessLoggingSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetUserAccessLoggingSettingsResponse

=head1 ATTRIBUTES


=head2 UserAccessLoggingSettings => L<Paws::WorkSpacesWeb::UserAccessLoggingSettings>

The user access logging settings.


=head2 _request_id => Str


=cut

