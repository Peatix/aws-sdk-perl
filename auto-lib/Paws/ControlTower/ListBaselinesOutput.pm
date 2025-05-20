
package Paws::ControlTower::ListBaselinesOutput;
  use Moose;
  has Baselines => (is => 'ro', isa => 'ArrayRef[Paws::ControlTower::BaselineSummary]', traits => ['NameInRequest'], request_name => 'baselines', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::ListBaselinesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Baselines => ArrayRef[L<Paws::ControlTower::BaselineSummary>]

A list of C<Baseline> object details.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

