
package Paws::NetworkManager::ListAttachmentsResponse;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Attachment]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListAttachmentsResponse

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::NetworkManager::Attachment>]

Describes the list of attachments.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

