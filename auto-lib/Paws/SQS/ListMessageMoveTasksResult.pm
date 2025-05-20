
package Paws::SQS::ListMessageMoveTasksResult;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::SQS::ListMessageMoveTasksResultEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SQS::ListMessageMoveTasksResult

=head1 ATTRIBUTES


=head2 Results => ArrayRef[L<Paws::SQS::ListMessageMoveTasksResultEntry>]

A list of message movement tasks and their attributes.


=head2 _request_id => Str


=cut

1;