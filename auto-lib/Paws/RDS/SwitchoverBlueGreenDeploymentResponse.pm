
package Paws::RDS::SwitchoverBlueGreenDeploymentResponse;
  use Moose;
  has BlueGreenDeployment => (is => 'ro', isa => 'Paws::RDS::BlueGreenDeployment');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::SwitchoverBlueGreenDeploymentResponse

=head1 ATTRIBUTES


=head2 BlueGreenDeployment => L<Paws::RDS::BlueGreenDeployment>




=head2 _request_id => Str


=cut

