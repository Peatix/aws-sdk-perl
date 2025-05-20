
package Paws::Evidently::GetExperimentResponse;
  use Moose;
  has Experiment => (is => 'ro', isa => 'Paws::Evidently::Experiment', traits => ['NameInRequest'], request_name => 'experiment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::GetExperimentResponse

=head1 ATTRIBUTES


=head2 Experiment => L<Paws::Evidently::Experiment>

A structure containing the configuration details of the experiment.


=head2 _request_id => Str


=cut

