
package Paws::IoTTwinMaker::ListComponentTypesResponse;
  use Moose;
  has ComponentTypeSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::ComponentTypeSummary]', traits => ['NameInRequest'], request_name => 'componentTypeSummaries', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkspaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workspaceId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListComponentTypesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComponentTypeSummaries => ArrayRef[L<Paws::IoTTwinMaker::ComponentTypeSummary>]

A list of objects that contain information about the component types.


=head2 MaxResults => Int

Specifies the maximum number of results to display.


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 B<REQUIRED> WorkspaceId => Str

The ID of the workspace.


=head2 _request_id => Str


=cut

