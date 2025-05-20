
package Paws::NetworkManager::GetSiteToSiteVpnAttachmentResponse;
  use Moose;
  has SiteToSiteVpnAttachment => (is => 'ro', isa => 'Paws::NetworkManager::SiteToSiteVpnAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetSiteToSiteVpnAttachmentResponse

=head1 ATTRIBUTES


=head2 SiteToSiteVpnAttachment => L<Paws::NetworkManager::SiteToSiteVpnAttachment>

Describes the site-to-site attachment.


=head2 _request_id => Str


=cut

