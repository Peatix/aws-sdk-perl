
package Paws::NetworkManager::CreateVpcAttachmentResponse;
  use Moose;
  has VpcAttachment => (is => 'ro', isa => 'Paws::NetworkManager::VpcAttachment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateVpcAttachmentResponse

=head1 ATTRIBUTES


=head2 VpcAttachment => L<Paws::NetworkManager::VpcAttachment>

Provides details about the VPC attachment.


=head2 _request_id => Str


=cut

