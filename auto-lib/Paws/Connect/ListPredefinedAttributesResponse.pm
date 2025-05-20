
package Paws::Connect::ListPredefinedAttributesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PredefinedAttributeSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::PredefinedAttributeSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListPredefinedAttributesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 PredefinedAttributeSummaryList => ArrayRef[L<Paws::Connect::PredefinedAttributeSummary>]

Summary of the predefined attributes.


=head2 _request_id => Str


=cut

