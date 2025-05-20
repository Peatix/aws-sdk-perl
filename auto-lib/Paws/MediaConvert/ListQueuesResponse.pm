
package Paws::MediaConvert::ListQueuesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Queues => (is => 'ro', isa => 'ArrayRef[Paws::MediaConvert::Queue]', traits => ['NameInRequest'], request_name => 'queues');
  has TotalConcurrentJobs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'totalConcurrentJobs');
  has UnallocatedConcurrentJobs => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'unallocatedConcurrentJobs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListQueuesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Use this string to request the next batch of queues.


=head2 Queues => ArrayRef[L<Paws::MediaConvert::Queue>]

List of queues.


=head2 TotalConcurrentJobs => Int

The maximum number of jobs that MediaConvert can process at one time,
across all of your on-demand queues in the current AWS Region.


=head2 UnallocatedConcurrentJobs => Int

The remaining number of concurrent jobs that are not associated with a
queue and are available to allocate to a queue. You can allocate these
jobs when you create or update a queue.


=head2 _request_id => Str


=cut

