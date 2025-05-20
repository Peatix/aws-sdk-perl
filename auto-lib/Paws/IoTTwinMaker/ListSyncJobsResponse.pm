
package Paws::IoTTwinMaker::ListSyncJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SyncJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::SyncJobSummary]', traits => ['NameInRequest'], request_name => 'syncJobSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListSyncJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 SyncJobSummaries => ArrayRef[L<Paws::IoTTwinMaker::SyncJobSummary>]

The listed SyncJob summaries.


=head2 _request_id => Str


=cut

