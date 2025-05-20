
package Paws::BCMPricingCalculator::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::BCMPricingCalculator::Tags', traits => ['NameInRequest'], request_name => 'tags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BCMPricingCalculator::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::BCMPricingCalculator::Tags>

The list of tags associated with the specified resource.


=head2 _request_id => Str


=cut

1;