
package Paws::EC2::DescribeMacModificationTasksResult;
  use Moose;
  has MacModificationTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::MacModificationTask]', request_name => 'macModificationTaskSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeMacModificationTasksResult

=head1 ATTRIBUTES


=head2 MacModificationTasks => ArrayRef[L<Paws::EC2::MacModificationTask>]

Information about the tasks.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

