
package Paws::NetworkManager::CreateSiteToSiteVpnAttachmentResponse;
  use Moose;
  has SiteToSiteVpnAttachment => (is => 'ro', isa => 'Paws::NetworkManager::SiteToSiteVpnAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateSiteToSiteVpnAttachmentResponse

=head1 ATTRIBUTES


=head2 SiteToSiteVpnAttachment => L<Paws::NetworkManager::SiteToSiteVpnAttachment>

Details about a site-to-site VPN attachment.


=head2 _request_id => Str


=cut

