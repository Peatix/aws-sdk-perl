
package Paws::Evidently::StartExperimentResponse;
  use Moose;
  has StartedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedTime');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::StartExperimentResponse

=head1 ATTRIBUTES


=head2 StartedTime => Str

A timestamp that indicates when the experiment started.


=head2 _request_id => Str


=cut

