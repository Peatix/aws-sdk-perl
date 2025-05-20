
package Paws::WorkSpacesWeb::CreateUserSettingsResponse;
  use Moose;
  has UserSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userSettingsArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateUserSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserSettingsArn => Str

The ARN of the user settings.


=head2 _request_id => Str


=cut

