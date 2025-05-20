
package Paws::Inspector2::ListCisScanResultsAggregatedByTargetResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TargetResourceAggregations => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::CisTargetResourceAggregation]', traits => ['NameInRequest'], request_name => 'targetResourceAggregations');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCisScanResultsAggregatedByTargetResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.


=head2 TargetResourceAggregations => ArrayRef[L<Paws::Inspector2::CisTargetResourceAggregation>]

The resource aggregations.


=head2 _request_id => Str


=cut

