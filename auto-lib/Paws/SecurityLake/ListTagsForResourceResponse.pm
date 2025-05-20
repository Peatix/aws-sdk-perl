
package Paws::SecurityLake::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SecurityLake::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::SecurityLake::Tag>]

An array of objects, one for each tag (key and value) thatE<rsquo>s
associated with the Amazon Security Lake resource.


=head2 _request_id => Str


=cut

