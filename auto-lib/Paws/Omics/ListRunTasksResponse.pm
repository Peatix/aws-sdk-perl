
package Paws::Omics::ListRunTasksResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::Omics::TaskListItem]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListRunTasksResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::Omics::TaskListItem>]

A list of tasks.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

