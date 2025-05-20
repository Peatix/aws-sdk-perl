
package Paws::Chatbot::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::Chatbot::Tag>]

Key-value pairs that are assigned to a resource, usually for the
purpose of grouping and searching for items. Tags are metadata that you
define.


=head2 _request_id => Str


=cut

