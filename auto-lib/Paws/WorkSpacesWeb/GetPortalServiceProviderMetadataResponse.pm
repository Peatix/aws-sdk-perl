
package Paws::WorkSpacesWeb::GetPortalServiceProviderMetadataResponse;
  use Moose;
  has PortalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalArn', required => 1);
  has ServiceProviderSamlMetadata => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceProviderSamlMetadata');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetPortalServiceProviderMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PortalArn => Str

The ARN of the web portal.


=head2 ServiceProviderSamlMetadata => Str

The service provider SAML metadata.


=head2 _request_id => Str


=cut

