
package Paws::EKS::ListInsightsResponse;
  use Moose;
  has Insights => (is => 'ro', isa => 'ArrayRef[Paws::EKS::InsightSummary]', traits => ['NameInRequest'], request_name => 'insights');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListInsightsResponse

=head1 ATTRIBUTES


=head2 Insights => ArrayRef[L<Paws::EKS::InsightSummary>]

The returned list of insights.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListInsights> request.
When the results of a C<ListInsights> request exceed C<maxResults>, you
can use this value to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

