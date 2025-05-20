
package Paws::NeptuneGraph::ListExportTasksOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Tasks => (is => 'ro', isa => 'ArrayRef[Paws::NeptuneGraph::ExportTaskSummary]', traits => ['NameInRequest'], request_name => 'tasks', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::ListExportTasksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token used to paginate output.


=head2 B<REQUIRED> Tasks => ArrayRef[L<Paws::NeptuneGraph::ExportTaskSummary>]

The requested list of export tasks.


=head2 _request_id => Str


=cut

