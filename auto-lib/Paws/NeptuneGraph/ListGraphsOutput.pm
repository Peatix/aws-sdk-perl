
package Paws::NeptuneGraph::ListGraphsOutput;
  use Moose;
  has Graphs => (is => 'ro', isa => 'ArrayRef[Paws::NeptuneGraph::GraphSummary]', traits => ['NameInRequest'], request_name => 'graphs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListGraphsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Graphs => ArrayRef[L<Paws::NeptuneGraph::GraphSummary>]

A list of the graphs.


=head2 NextToken => Str

Pagination token used to paginate output.

When this value is provided as input, the service returns results from
where the previous response left off. When this value is present in
output, it indicates that there are more results to retrieve.


=head2 _request_id => Str


=cut

