
package Paws::ControlTower::GetBaselineOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetBaselineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The baseline ARN.


=head2 Description => Str

A description of the baseline.


=head2 B<REQUIRED> Name => Str

A user-friendly name for the baseline.


=head2 _request_id => Str


=cut

