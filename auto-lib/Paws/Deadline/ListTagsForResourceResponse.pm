
package Paws::Deadline::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Deadline::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Deadline::Tags>

Each tag consists of a tag key and a tag value. Tag keys and values are
both required, but tag values can be empty strings.


=head2 _request_id => Str


=cut

