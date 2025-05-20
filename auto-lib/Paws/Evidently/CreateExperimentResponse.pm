
package Paws::Evidently::CreateExperimentResponse;
  use Moose;
  has Experiment => (is => 'ro', isa => 'Paws::Evidently::Experiment', traits => ['NameInRequest'], request_name => 'experiment', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateExperimentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Experiment => L<Paws::Evidently::Experiment>

A structure containing the configuration details of the experiment that
you created.


=head2 _request_id => Str


=cut

