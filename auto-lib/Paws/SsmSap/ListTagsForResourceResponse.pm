
package Paws::SsmSap::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::SsmSap::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::SsmSap::TagMap>




=head2 _request_id => Str


=cut

