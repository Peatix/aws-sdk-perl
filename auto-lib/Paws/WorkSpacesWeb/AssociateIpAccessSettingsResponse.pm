
package Paws::WorkSpacesWeb::AssociateIpAccessSettingsResponse;
  use Moose;
  has IpAccessSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAccessSettingsArn', required => 1);
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::AssociateIpAccessSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpAccessSettingsArn => Str

The ARN of the IP access settings resource.


=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.


=head2 _request_id => Str


=cut

