
package Paws::WorkSpacesWeb::AssociateUserSettingsResponse;
  use Moose;
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);
  has UserSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userSettingsArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::AssociateUserSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.


=head2 B<REQUIRED> UserSettingsArn => Str

The ARN of the user settings.


=head2 _request_id => Str


=cut

