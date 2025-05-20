
package Paws::SQS::CancelMessageMoveTaskResult;
  use Moose;
  has ApproximateNumberOfMessagesMoved => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SQS::CancelMessageMoveTaskResult

=head1 ATTRIBUTES


=head2 ApproximateNumberOfMessagesMoved => Int

The approximate number of messages already moved to the destination
queue.


=head2 _request_id => Str


=cut

1;