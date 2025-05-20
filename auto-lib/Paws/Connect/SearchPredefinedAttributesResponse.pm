
package Paws::Connect::SearchPredefinedAttributesResponse;
  use Moose;
  has ApproximateTotalCount => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has PredefinedAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Connect::PredefinedAttribute]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::SearchPredefinedAttributesResponse

=head1 ATTRIBUTES


=head2 ApproximateTotalCount => Int

The approximate number of predefined attributes which matched your
search query.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 PredefinedAttributes => ArrayRef[L<Paws::Connect::PredefinedAttribute>]

Predefined attributes matched by the search criteria.


=head2 _request_id => Str


=cut

