
package Paws::ApplicationSignals::UpdateServiceLevelObjectiveOutput;
  use Moose;
  has Slo => (is => 'ro', isa => 'Paws::ApplicationSignals::ServiceLevelObjective', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::UpdateServiceLevelObjectiveOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Slo => L<Paws::ApplicationSignals::ServiceLevelObjective>

A structure that contains information about the SLO that you just
updated.


=head2 _request_id => Str


=cut

