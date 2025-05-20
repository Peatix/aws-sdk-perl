
package Paws::ApplicationSignals::ListServiceLevelObjectivesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has SloSummaries => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::ServiceLevelObjectiveSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListServiceLevelObjectivesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

Include this value in your next use of this API to get next set of
service level objectives.


=head2 SloSummaries => ArrayRef[L<Paws::ApplicationSignals::ServiceLevelObjectiveSummary>]

An array of structures, where each structure contains information about
one SLO.


=head2 _request_id => Str


=cut

