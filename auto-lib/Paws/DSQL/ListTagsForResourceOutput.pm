
package Paws::DSQL::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::DSQL::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DSQL::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::DSQL::TagMap>

A map of key and value pairs that you used to tag your resource.


=head2 _request_id => Str


=cut

