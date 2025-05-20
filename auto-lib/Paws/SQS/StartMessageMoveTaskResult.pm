
package Paws::SQS::StartMessageMoveTaskResult;
  use Moose;
  has TaskHandle => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SQS::StartMessageMoveTaskResult

=head1 ATTRIBUTES


=head2 TaskHandle => Str

An identifier associated with a message movement task. You can use this
identifier to cancel a specified message movement task using the
C<CancelMessageMoveTask> action.


=head2 _request_id => Str


=cut

1;