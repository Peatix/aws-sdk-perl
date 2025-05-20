
package Paws::Deadline::CreateQueueEnvironmentResponse;
  use Moose;
  has QueueEnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueEnvironmentId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateQueueEnvironmentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueueEnvironmentId => Str

The queue environment ID.


=head2 _request_id => Str


=cut

