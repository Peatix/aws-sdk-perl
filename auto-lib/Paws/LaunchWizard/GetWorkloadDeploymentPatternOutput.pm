
package Paws::LaunchWizard::GetWorkloadDeploymentPatternOutput;
  use Moose;
  has WorkloadDeploymentPattern => (is => 'ro', isa => 'Paws::LaunchWizard::WorkloadDeploymentPatternData', traits => ['NameInRequest'], request_name => 'workloadDeploymentPattern');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::GetWorkloadDeploymentPatternOutput

=head1 ATTRIBUTES


=head2 WorkloadDeploymentPattern => L<Paws::LaunchWizard::WorkloadDeploymentPatternData>

Details about the workload deployment pattern.


=head2 _request_id => Str


=cut

