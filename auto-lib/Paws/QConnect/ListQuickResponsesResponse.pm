
package Paws::QConnect::ListQuickResponsesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has QuickResponseSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::QuickResponseSummary]', traits => ['NameInRequest'], request_name => 'quickResponseSummaries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListQuickResponsesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 B<REQUIRED> QuickResponseSummaries => ArrayRef[L<Paws::QConnect::QuickResponseSummary>]

Summary information about the quick responses.


=head2 _request_id => Str


=cut

