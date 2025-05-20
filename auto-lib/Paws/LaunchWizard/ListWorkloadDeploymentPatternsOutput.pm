
package Paws::LaunchWizard::ListWorkloadDeploymentPatternsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has WorkloadDeploymentPatterns => (is => 'ro', isa => 'ArrayRef[Paws::LaunchWizard::WorkloadDeploymentPatternDataSummary]', traits => ['NameInRequest'], request_name => 'workloadDeploymentPatterns');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListWorkloadDeploymentPatternsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to include in another request to get the next page of items.
This value is C<null> when there are no more items to return.


=head2 WorkloadDeploymentPatterns => ArrayRef[L<Paws::LaunchWizard::WorkloadDeploymentPatternDataSummary>]

Describes the workload deployment patterns.


=head2 _request_id => Str


=cut

