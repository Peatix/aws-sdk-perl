
package Paws::LaunchWizard::ListDeploymentEventsOutput;
  use Moose;
  has DeploymentEvents => (is => 'ro', isa => 'ArrayRef[Paws::LaunchWizard::DeploymentEventDataSummary]', traits => ['NameInRequest'], request_name => 'deploymentEvents');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListDeploymentEventsOutput

=head1 ATTRIBUTES


=head2 DeploymentEvents => ArrayRef[L<Paws::LaunchWizard::DeploymentEventDataSummary>]

Lists the deployment events.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut

