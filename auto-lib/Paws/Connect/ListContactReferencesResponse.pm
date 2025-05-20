
package Paws::Connect::ListContactReferencesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ReferenceSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::Connect::ReferenceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListContactReferencesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.

This is always returned as null in the response.


=head2 ReferenceSummaryList => ArrayRef[L<Paws::Connect::ReferenceSummary>]

Information about the flows.


=head2 _request_id => Str


=cut

