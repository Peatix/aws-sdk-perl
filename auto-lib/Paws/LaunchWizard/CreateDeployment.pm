
package Paws::LaunchWizard::CreateDeployment;
  use Moose;
  has DeploymentPatternName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentPatternName', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Specifications => (is => 'ro', isa => 'Paws::LaunchWizard::DeploymentSpecifications', traits => ['NameInRequest'], request_name => 'specifications', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LaunchWizard::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has WorkloadName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workloadName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createDeployment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LaunchWizard::CreateDeploymentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::CreateDeployment - Arguments for method CreateDeployment on L<Paws::LaunchWizard>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWS Launch Wizard|Paws::LaunchWizard> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $launchwizard = Paws->service('LaunchWizard');
    my $CreateDeploymentOutput = $launchwizard->CreateDeployment(
      DeploymentPatternName => 'MyDeploymentPatternName',
      Name                  => 'MyDeploymentName',
      Specifications        => {
        'MyKeyString' =>
          'MyValueString',    # key: min: 3, max: 256, value: min: 1, max: 1500
      },
      WorkloadName => 'MyWorkloadName',
      DryRun       => 1,                  # OPTIONAL
      Tags         => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DeploymentId = $CreateDeploymentOutput->DeploymentId;

    # Returns a L<Paws::LaunchWizard::CreateDeploymentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/launchwizard/CreateDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeploymentPatternName => Str

The name of the deployment pattern supported by a given workload. You
can use the C<ListWorkloadDeploymentPatterns>
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html)
operation to discover supported values for this parameter.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Name => Str

The name of the deployment.



=head2 B<REQUIRED> Specifications => L<Paws::LaunchWizard::DeploymentSpecifications>

The settings specified for the deployment. These settings define how to
deploy and configure your resources created by the deployment. For more
information about the specifications required for creating a deployment
for a SAP workload, see SAP deployment specifications
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/launch-wizard-specifications-sap.html).
To retrieve the specifications required to create a deployment for
other workloads, use the C<GetWorkloadDeploymentPattern>
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_GetWorkloadDeploymentPattern.html)
operation.



=head2 Tags => L<Paws::LaunchWizard::Tags>

The tags to add to the deployment.



=head2 B<REQUIRED> WorkloadName => Str

The name of the workload. You can use the C<ListWorkloads>
(https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html)
operation to discover supported values for this parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::LaunchWizard>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

