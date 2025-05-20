
package Paws::LaunchWizard::ListDeploymentsOutput;
  use Moose;
  has Deployments => (is => 'ro', isa => 'ArrayRef[Paws::LaunchWizard::DeploymentDataSummary]', traits => ['NameInRequest'], request_name => 'deployments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListDeploymentsOutput

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[L<Paws::LaunchWizard::DeploymentDataSummary>]

Lists the deployments.


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 _request_id => Str


=cut

