
package Paws::MailManager::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::Tag]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::MailManager::Tag>]

The tags used to organize, track, or control access for the resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.


=head2 _request_id => Str


=cut

1;