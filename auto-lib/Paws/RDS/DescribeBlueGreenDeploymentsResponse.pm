
package Paws::RDS::DescribeBlueGreenDeploymentsResponse;
  use Moose;
  has BlueGreenDeployments => (is => 'ro', isa => 'ArrayRef[Paws::RDS::BlueGreenDeployment]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DescribeBlueGreenDeploymentsResponse

=head1 ATTRIBUTES


=head2 BlueGreenDeployments => ArrayRef[L<Paws::RDS::BlueGreenDeployment>]

A list of blue/green deployments in the current account and Amazon Web
Services Region.


=head2 Marker => Str

A pagination token that can be used in a later
C<DescribeBlueGreenDeployments> request.


=head2 _request_id => Str


=cut

