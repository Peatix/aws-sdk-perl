
package Paws::TimestreamWrite::ListBatchLoadTasksResponse;
  use Moose;
  has BatchLoadTasks => (is => 'ro', isa => 'ArrayRef[Paws::TimestreamWrite::BatchLoadTask]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::ListBatchLoadTasksResponse

=head1 ATTRIBUTES


=head2 BatchLoadTasks => ArrayRef[L<Paws::TimestreamWrite::BatchLoadTask>]

A list of batch load task details.


=head2 NextToken => Str

A token to specify where to start paginating. Provide the next
ListBatchLoadTasksRequest.


=head2 _request_id => Str


=cut

1;