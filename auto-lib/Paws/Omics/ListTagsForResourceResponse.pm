
package Paws::Omics::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::Omics::TagMap>

A list of tags.


=head2 _request_id => Str


=cut

