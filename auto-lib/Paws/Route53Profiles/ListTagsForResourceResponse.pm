
package Paws::Route53Profiles::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Route53Profiles::TagMap', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::Route53Profiles::TagMap>

The tags that are associated with the resource that you specified in
the C<ListTagsForResource> request.


=head2 _request_id => Str


=cut

