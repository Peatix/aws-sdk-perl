
package Paws::NotificationsContacts::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::NotificationsContacts::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NotificationsContacts::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::NotificationsContacts::TagMap>

Key-value pairs that are assigned to a resource, usually for the
purpose of grouping and searching for items. Tags are metadata that you
define.


=head2 _request_id => Str


=cut

