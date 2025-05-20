
package Paws::Inspector2::ListCisScanResultsAggregatedByChecksResponse;
  use Moose;
  has CheckAggregations => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::CisCheckAggregation]', traits => ['NameInRequest'], request_name => 'checkAggregations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCisScanResultsAggregatedByChecksResponse

=head1 ATTRIBUTES


=head2 CheckAggregations => ArrayRef[L<Paws::Inspector2::CisCheckAggregation>]

The check aggregations.


=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.


=head2 _request_id => Str


=cut

