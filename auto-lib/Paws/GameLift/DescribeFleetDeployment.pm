
package Paws::GameLift::DescribeFleetDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeFleetDeploymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetDeployment - Arguments for method DescribeFleetDeployment on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetDeployment on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeFleetDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetDeployment.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeFleetDeploymentOutput = $gamelift->DescribeFleetDeployment(
      FleetId      => 'MyFleetIdOrArn',
      DeploymentId => 'MyDeploymentId',    # OPTIONAL
    );

    # Results:
    my $FleetDeployment = $DescribeFleetDeploymentOutput->FleetDeployment;
    my $LocationalDeployments =
      $DescribeFleetDeploymentOutput->LocationalDeployments;

    # Returns a L<Paws::GameLift::DescribeFleetDeploymentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeFleetDeployment>

=head1 ATTRIBUTES


=head2 DeploymentId => Str

A unique identifier for the deployment to return information for.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the container fleet. You can use either the
fleet ID or ARN value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetDeployment in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

