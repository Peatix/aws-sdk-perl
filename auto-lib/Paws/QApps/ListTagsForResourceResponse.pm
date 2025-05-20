
package Paws::QApps::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::QApps::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::QApps::Tags>

The list of tags that are assigned to the resource.


=head2 _request_id => Str


=cut

