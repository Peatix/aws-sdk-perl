
package Paws::SimSpaceWeaver::DescribeSimulation;
  use Moose;
  has Simulation => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'simulation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSimulation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describesimulation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimSpaceWeaver::DescribeSimulationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::DescribeSimulation - Arguments for method DescribeSimulation on L<Paws::SimSpaceWeaver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSimulation on the
L<AWS SimSpace Weaver|Paws::SimSpaceWeaver> service. Use the attributes of this class
as arguments to method DescribeSimulation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSimulation.

=head1 SYNOPSIS

    my $simspaceweaver = Paws->service('SimSpaceWeaver');
    my $DescribeSimulationOutput = $simspaceweaver->DescribeSimulation(
      Simulation => 'MySimSpaceWeaverResourceName',

    );

    # Results:
    my $Arn                  = $DescribeSimulationOutput->Arn;
    my $CreationTime         = $DescribeSimulationOutput->CreationTime;
    my $Description          = $DescribeSimulationOutput->Description;
    my $ExecutionId          = $DescribeSimulationOutput->ExecutionId;
    my $LiveSimulationState  = $DescribeSimulationOutput->LiveSimulationState;
    my $LoggingConfiguration = $DescribeSimulationOutput->LoggingConfiguration;
    my $MaximumDuration      = $DescribeSimulationOutput->MaximumDuration;
    my $Name                 = $DescribeSimulationOutput->Name;
    my $RoleArn              = $DescribeSimulationOutput->RoleArn;
    my $SchemaError          = $DescribeSimulationOutput->SchemaError;
    my $SchemaS3Location     = $DescribeSimulationOutput->SchemaS3Location;
    my $SnapshotS3Location   = $DescribeSimulationOutput->SnapshotS3Location;
    my $StartError           = $DescribeSimulationOutput->StartError;
    my $Status               = $DescribeSimulationOutput->Status;
    my $TargetStatus         = $DescribeSimulationOutput->TargetStatus;

    # Returns a L<Paws::SimSpaceWeaver::DescribeSimulationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/simspaceweaver/DescribeSimulation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Simulation => Str

The name of the simulation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSimulation in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

