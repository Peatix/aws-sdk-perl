
package Paws::Billingconductor::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Billingconductor::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Billingconductor::TagMap>

The tags for the resource.


=head2 _request_id => Str


=cut

