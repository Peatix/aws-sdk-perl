
package Paws::Evidently::StopExperimentResponse;
  use Moose;
  has EndedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endedTime');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::StopExperimentResponse

=head1 ATTRIBUTES


=head2 EndedTime => Str

The date and time that the experiment stopped.


=head2 _request_id => Str


=cut

