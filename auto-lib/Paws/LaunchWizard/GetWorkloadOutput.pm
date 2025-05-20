
package Paws::LaunchWizard::GetWorkloadOutput;
  use Moose;
  has Workload => (is => 'ro', isa => 'Paws::LaunchWizard::WorkloadData', traits => ['NameInRequest'], request_name => 'workload');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::GetWorkloadOutput

=head1 ATTRIBUTES


=head2 Workload => L<Paws::LaunchWizard::WorkloadData>

Information about the workload.


=head2 _request_id => Str


=cut

