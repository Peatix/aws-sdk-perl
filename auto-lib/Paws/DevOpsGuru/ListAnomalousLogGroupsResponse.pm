
package Paws::DevOpsGuru::ListAnomalousLogGroupsResponse;
  use Moose;
  has AnomalousLogGroups => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::AnomalousLogGroup]', required => 1);
  has InsightId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListAnomalousLogGroupsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnomalousLogGroups => ArrayRef[L<Paws::DevOpsGuru::AnomalousLogGroup>]

The list of Amazon CloudWatch log groups that are related to an
insight.


=head2 B<REQUIRED> InsightId => Str

The ID of the insight containing the log groups.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

