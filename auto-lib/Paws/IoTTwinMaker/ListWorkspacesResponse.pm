
package Paws::IoTTwinMaker::ListWorkspacesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkspaceSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::WorkspaceSummary]', traits => ['NameInRequest'], request_name => 'workspaceSummaries');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListWorkspacesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 WorkspaceSummaries => ArrayRef[L<Paws::IoTTwinMaker::WorkspaceSummary>]

A list of objects that contain information about the workspaces.


=head2 _request_id => Str


=cut

