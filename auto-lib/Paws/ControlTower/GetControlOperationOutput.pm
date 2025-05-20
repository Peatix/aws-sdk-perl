
package Paws::ControlTower::GetControlOperationOutput;
  use Moose;
  has ControlOperation => (is => 'ro', isa => 'Paws::ControlTower::ControlOperation', traits => ['NameInRequest'], request_name => 'controlOperation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlTower::GetControlOperationOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlOperation => L<Paws::ControlTower::ControlOperation>

An operation performed by the control.


=head2 _request_id => Str


=cut

