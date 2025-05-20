
package Paws::ControlTower::GetBaselineOperationOutput;
  use Moose;
  has BaselineOperation => (is => 'ro', isa => 'Paws::ControlTower::BaselineOperation', traits => ['NameInRequest'], request_name => 'baselineOperation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetBaselineOperationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineOperation => L<Paws::ControlTower::BaselineOperation>

A C<baselineOperation> object that shows information about the
specified operation ID.


=head2 _request_id => Str


=cut

