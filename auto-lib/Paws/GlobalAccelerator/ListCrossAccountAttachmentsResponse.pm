
package Paws::GlobalAccelerator::ListCrossAccountAttachmentsResponse;
  use Moose;
  has CrossAccountAttachments => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Attachment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::ListCrossAccountAttachmentsResponse

=head1 ATTRIBUTES


=head2 CrossAccountAttachments => ArrayRef[L<Paws::GlobalAccelerator::Attachment>]

Information about the cross-account attachments.


=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.


=head2 _request_id => Str


=cut

1;