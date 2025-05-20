
package Paws::Kendra::ListFeaturedResultsSetsResponse;
  use Moose;
  has FeaturedResultsSetSummaryItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FeaturedResultsSetSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListFeaturedResultsSetsResponse

=head1 ATTRIBUTES


=head2 FeaturedResultsSetSummaryItems => ArrayRef[L<Paws::Kendra::FeaturedResultsSetSummary>]

An array of summary information for one or more featured results sets.


=head2 NextToken => Str

If the response is truncated, Amazon Kendra returns a pagination token
in the response.


=head2 _request_id => Str


=cut

1;