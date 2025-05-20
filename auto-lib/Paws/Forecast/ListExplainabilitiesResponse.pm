
package Paws::Forecast::ListExplainabilitiesResponse;
  use Moose;
  has Explainabilities => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::ExplainabilitySummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListExplainabilitiesResponse

=head1 ATTRIBUTES


=head2 Explainabilities => ArrayRef[L<Paws::Forecast::ExplainabilitySummary>]

An array of objects that summarize the properties of each
Explainability resource.


=head2 NextToken => Str

Returns this token if the response is truncated. To retrieve the next
set of results, use the token in the next request.


=head2 _request_id => Str


=cut

1;