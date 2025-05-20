
package Paws::PcaConnectorScep::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::PcaConnectorScep::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::PcaConnectorScep::Tags>

The key-value pairs to associate with the resource.


=head2 _request_id => Str


=cut

