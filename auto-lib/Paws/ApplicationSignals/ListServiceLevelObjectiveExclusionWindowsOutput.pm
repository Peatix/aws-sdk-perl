
package Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindowsOutput;
  use Moose;
  has ExclusionWindows => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::ExclusionWindow]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::ListServiceLevelObjectiveExclusionWindowsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExclusionWindows => ArrayRef[L<Paws::ApplicationSignals::ExclusionWindow>]

A list of exclusion windows configured for the SLO.


=head2 NextToken => Str

Include this value, if it was returned by the previous operation, to
get the next set of service level objectives.

 </p>


=head2 _request_id => Str


=cut

