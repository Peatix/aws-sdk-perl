
package Paws::Deadline::CreateQueueResponse;
  use Moose;
  has QueueId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queueId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateQueueResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueueId => Str

The queue ID.


=head2 _request_id => Str


=cut

