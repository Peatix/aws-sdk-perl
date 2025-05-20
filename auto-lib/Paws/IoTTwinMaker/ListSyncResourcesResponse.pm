
package Paws::IoTTwinMaker::ListSyncResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SyncResources => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::SyncResourceSummary]', traits => ['NameInRequest'], request_name => 'syncResources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListSyncResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 SyncResources => ArrayRef[L<Paws::IoTTwinMaker::SyncResourceSummary>]

The sync resources.


=head2 _request_id => Str


=cut

