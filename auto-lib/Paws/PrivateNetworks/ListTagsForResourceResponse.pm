
package Paws::PrivateNetworks::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::PrivateNetworks::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PrivateNetworks::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::PrivateNetworks::TagMap>

The resource tags.


=head2 _request_id => Str


=cut

