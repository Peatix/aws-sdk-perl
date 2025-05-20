
package Paws::SageMaker::ListLineageGroupsResponse;
  use Moose;
  has LineageGroupSummaries => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::LineageGroupSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListLineageGroupsResponse

=head1 ATTRIBUTES


=head2 LineageGroupSummaries => ArrayRef[L<Paws::SageMaker::LineageGroupSummary>]

A list of lineage groups and their properties.


=head2 NextToken => Str

If the response is truncated, SageMaker returns this token. To retrieve
the next set of algorithms, use it in the subsequent request.


=head2 _request_id => Str


=cut

1;