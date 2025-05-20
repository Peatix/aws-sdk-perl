
package Paws::MediaPackageV2::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::MediaPackageV2::TagMap>

Contains a map of the key-value pairs for the resource tag or tags
assigned to the resource.


=head2 _request_id => Str


=cut

