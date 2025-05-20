
package Paws::ECS::UpdateTaskProtectionResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Failure]', traits => ['NameInRequest'], request_name => 'failures' );
  has ProtectedTasks => (is => 'ro', isa => 'ArrayRef[Paws::ECS::ProtectedTask]', traits => ['NameInRequest'], request_name => 'protectedTasks' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::UpdateTaskProtectionResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::ECS::Failure>]

Any failures associated with the call.


=head2 ProtectedTasks => ArrayRef[L<Paws::ECS::ProtectedTask>]

A list of tasks with the following information.

=over

=item *

C<taskArn>: The task ARN.

=item *

C<protectionEnabled>: The protection status of the task. If scale-in
protection is turned on for a task, the value is C<true>. Otherwise, it
is C<false>.

=item *

C<expirationDate>: The epoch time when protection for the task will
expire.

=back



=head2 _request_id => Str


=cut

1;