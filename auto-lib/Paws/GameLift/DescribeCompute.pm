
package Paws::GameLift::DescribeCompute;
  use Moose;
  has ComputeName => (is => 'ro', isa => 'Str', required => 1);
  has FleetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCompute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeComputeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeCompute - Arguments for method DescribeCompute on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCompute on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeCompute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCompute.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeComputeOutput = $gamelift->DescribeCompute(
      ComputeName => 'MyComputeNameOrArn',
      FleetId     => 'MyFleetIdOrArn',

    );

    # Results:
    my $Compute = $DescribeComputeOutput->Compute;

    # Returns a L<Paws::GameLift::DescribeComputeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeCompute>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeName => Str

The unique identifier of the compute resource to retrieve properties
for. For a managed container fleet or Anywhere fleet, use a compute
name. For an EC2 fleet, use an instance ID. To retrieve a fleet's
compute identifiers, call ListCompute
(https://docs.aws.amazon.com/gamelift/latest/apireference/API_ListCompute.html).



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet that the compute belongs to. You can
use either the fleet ID or ARN value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCompute in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

