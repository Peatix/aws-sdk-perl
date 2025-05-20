
package Paws::WorkSpacesWeb::AssociateNetworkSettingsResponse;
  use Moose;
  has NetworkSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkSettingsArn', required => 1);
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::AssociateNetworkSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkSettingsArn => Str

The ARN of the network settings.


=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.


=head2 _request_id => Str


=cut

