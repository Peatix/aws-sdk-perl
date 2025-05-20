
package Paws::NeptuneGraph::ListImportTasksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::NeptuneGraph::ImportTaskSummary]', traits => ['NameInRequest'], request_name => 'tasks', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListImportTasksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token used to paginate output.

When this value is provided as input, the service returns results from
where the previous response left off. When this value is present in
output, it indicates that there are more results to retrieve.


=head2 B<REQUIRED> Tasks => ArrayRef[L<Paws::NeptuneGraph::ImportTaskSummary>]

The requested list of import tasks.


=head2 _request_id => Str


=cut

