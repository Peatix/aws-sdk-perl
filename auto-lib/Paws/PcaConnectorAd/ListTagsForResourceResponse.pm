
package Paws::PcaConnectorAd::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::PcaConnectorAd::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorAd::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::PcaConnectorAd::Tags>

The tags, if any, that are associated with your resource.


=head2 _request_id => Str


=cut

