
package Paws::WorkSpacesWeb::CreateUserAccessLoggingSettingsResponse;
  use Moose;
  has UserAccessLoggingSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userAccessLoggingSettingsArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateUserAccessLoggingSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserAccessLoggingSettingsArn => Str

The ARN of the user access logging settings.


=head2 _request_id => Str


=cut

