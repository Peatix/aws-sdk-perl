
package Paws::WAFV2::ListTagsForResourceResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has TagInfoForResource => (is => 'ro', isa => 'Paws::WAFV2::TagInfoForResource');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

When you request a list of objects with a C<Limit> setting, if the
number of objects that are still available for retrieval exceeds the
limit, WAF returns a C<NextMarker> value in the response. To retrieve
the next batch of objects, provide the marker from the prior call in
your next request.


=head2 TagInfoForResource => L<Paws::WAFV2::TagInfoForResource>

The collection of tagging definitions for the resource. If you
specified a C<Limit> in your request, this might not be the full list.


=head2 _request_id => Str


=cut

1;