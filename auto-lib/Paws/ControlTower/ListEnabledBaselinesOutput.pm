
package Paws::ControlTower::ListEnabledBaselinesOutput;
  use Moose;
  has EnabledBaselines => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::EnabledBaselineSummary]', traits => ['NameInRequest'], request_name => 'enabledBaselines', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListEnabledBaselinesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnabledBaselines => ArrayRef[L<Paws::ControlTower::EnabledBaselineSummary>]

Retuens a list of summaries of C<EnabledBaseline> resources.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

