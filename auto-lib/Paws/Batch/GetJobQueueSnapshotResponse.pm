
package Paws::Batch::GetJobQueueSnapshotResponse;
  use Moose;
  has FrontOfQueue => (is => 'ro', isa => 'Paws::Batch::FrontOfQueueDetail', traits => ['NameInRequest'], request_name => 'frontOfQueue');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::GetJobQueueSnapshotResponse

=head1 ATTRIBUTES


=head2 FrontOfQueue => L<Paws::Batch::FrontOfQueueDetail>

The list of the first 100 C<RUNNABLE> jobs in each job queue. For
first-in-first-out (FIFO) job queues, jobs are ordered based on their
submission time. For fair-share scheduling (FSS) job queues, jobs are
ordered based on their job priority and share usage.


=head2 _request_id => Str


=cut

