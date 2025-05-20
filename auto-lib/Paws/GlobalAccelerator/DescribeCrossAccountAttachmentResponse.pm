
package Paws::GlobalAccelerator::DescribeCrossAccountAttachmentResponse;
  use Moose;
  has CrossAccountAttachment => (is => 'ro', isa => 'Paws::GlobalAccelerator::Attachment');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::DescribeCrossAccountAttachmentResponse

=head1 ATTRIBUTES


=head2 CrossAccountAttachment => L<Paws::GlobalAccelerator::Attachment>

Information about the cross-account attachment.


=head2 _request_id => Str


=cut

1;