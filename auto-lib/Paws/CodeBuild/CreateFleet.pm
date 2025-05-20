
package Paws::CodeBuild::CreateFleet;
  use Moose;
  has BaseCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'baseCapacity' , required => 1);
  has ComputeConfiguration => (is => 'ro', isa => 'Paws::CodeBuild::ComputeConfiguration', traits => ['NameInRequest'], request_name => 'computeConfiguration' );
  has ComputeType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeType' , required => 1);
  has EnvironmentType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentType' , required => 1);
  has FleetServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetServiceRole' );
  has ImageId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'imageId' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has OverflowBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'overflowBehavior' );
  has ProxyConfiguration => (is => 'ro', isa => 'Paws::CodeBuild::ProxyConfiguration', traits => ['NameInRequest'], request_name => 'proxyConfiguration' );
  has ScalingConfiguration => (is => 'ro', isa => 'Paws::CodeBuild::ScalingConfigurationInput', traits => ['NameInRequest'], request_name => 'scalingConfiguration' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has VpcConfig => (is => 'ro', isa => 'Paws::CodeBuild::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::CreateFleetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateFleet - Arguments for method CreateFleet on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFleet on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method CreateFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFleet.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $CreateFleetOutput = $codebuild->CreateFleet(
      BaseCapacity         => 1,
      ComputeType          => 'BUILD_GENERAL1_SMALL',
      EnvironmentType      => 'WINDOWS_CONTAINER',
      Name                 => 'MyFleetName',
      ComputeConfiguration => {
        Disk         => 1,                     # OPTIONAL
        InstanceType => 'MyNonEmptyString',    # min: 1; OPTIONAL
        MachineType  => 'GENERAL',             # values: GENERAL, NVME; OPTIONAL
        Memory       => 1,                     # OPTIONAL
        VCpu         => 1,                     # OPTIONAL
      },    # OPTIONAL
      FleetServiceRole   => 'MyNonEmptyString',    # OPTIONAL
      ImageId            => 'MyNonEmptyString',    # OPTIONAL
      OverflowBehavior   => 'QUEUE',               # OPTIONAL
      ProxyConfiguration => {
        DefaultBehavior => 'ALLOW_ALL',  # values: ALLOW_ALL, DENY_ALL; OPTIONAL
        OrderedProxyRules => [
          {
            Effect   => 'ALLOW',                # values: ALLOW, DENY
            Entities => [ 'MyString', ... ],    # min: 1, max: 100
            Type     => 'DOMAIN',               # values: DOMAIN, IP

          },
          ...
        ],    # max: 100; OPTIONAL
      },    # OPTIONAL
      ScalingConfiguration => {
        MaxCapacity => 1,
        ScalingType =>
          'TARGET_TRACKING_SCALING', # values: TARGET_TRACKING_SCALING; OPTIONAL
        TargetTrackingScalingConfigs => [
          {
            MetricType => 'FLEET_UTILIZATION_RATE'
            ,                    # values: FLEET_UTILIZATION_RATE; OPTIONAL
            TargetValue => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyKeyInput',      # min: 1, max: 127; OPTIONAL
          Value => 'MyValueInput',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      VpcConfig => {
        SecurityGroupIds => [
          'MyNonEmptyString', ...    # min: 1; OPTIONAL
        ],    # max: 5; OPTIONAL
        Subnets => [
          'MyNonEmptyString', ...    # min: 1; OPTIONAL
        ],    # max: 16; OPTIONAL
        VpcId => 'MyNonEmptyString',    # min: 1; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Fleet = $CreateFleetOutput->Fleet;

    # Returns a L<Paws::CodeBuild::CreateFleetOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/CreateFleet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaseCapacity => Int

The initial number of machines allocated to the eet, which denes the
number of builds that can run in parallel.



=head2 ComputeConfiguration => L<Paws::CodeBuild::ComputeConfiguration>

The compute configuration of the compute fleet. This is only required
if C<computeType> is set to C<ATTRIBUTE_BASED_COMPUTE> or
C<CUSTOM_INSTANCE_TYPE>.



=head2 B<REQUIRED> ComputeType => Str

Information about the compute resources the compute fleet uses.
Available values include:

=over

=item *

C<ATTRIBUTE_BASED_COMPUTE>: Specify the amount of vCPUs, memory, disk
space, and the type of machine.

If you use C<ATTRIBUTE_BASED_COMPUTE>, you must define your attributes
by using C<computeConfiguration>. CodeBuild will select the cheapest
instance that satisfies your specified attributes. For more
information, see Reserved capacity environment types
(https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.types)
in the I<CodeBuild User Guide>.

=item *

C<CUSTOM_INSTANCE_TYPE>: Specify the instance type for your compute
fleet. For a list of supported instance types, see Supported instance
families
(https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment-reserved-capacity.instance-types)
in the I<CodeBuild User Guide>.

=item *

C<BUILD_GENERAL1_SMALL>: Use up to 4 GiB memory and 2 vCPUs for builds.

=item *

C<BUILD_GENERAL1_MEDIUM>: Use up to 8 GiB memory and 4 vCPUs for
builds.

=item *

C<BUILD_GENERAL1_LARGE>: Use up to 16 GiB memory and 8 vCPUs for
builds, depending on your environment type.

=item *

C<BUILD_GENERAL1_XLARGE>: Use up to 72 GiB memory and 36 vCPUs for
builds, depending on your environment type.

=item *

C<BUILD_GENERAL1_2XLARGE>: Use up to 144 GiB memory, 72 vCPUs, and 824
GB of SSD storage for builds. This compute type supports Docker images
up to 100 GB uncompressed.

=item *

C<BUILD_LAMBDA_1GB>: Use up to 1 GiB memory for builds. Only available
for environment type C<LINUX_LAMBDA_CONTAINER> and
C<ARM_LAMBDA_CONTAINER>.

=item *

C<BUILD_LAMBDA_2GB>: Use up to 2 GiB memory for builds. Only available
for environment type C<LINUX_LAMBDA_CONTAINER> and
C<ARM_LAMBDA_CONTAINER>.

=item *

C<BUILD_LAMBDA_4GB>: Use up to 4 GiB memory for builds. Only available
for environment type C<LINUX_LAMBDA_CONTAINER> and
C<ARM_LAMBDA_CONTAINER>.

=item *

C<BUILD_LAMBDA_8GB>: Use up to 8 GiB memory for builds. Only available
for environment type C<LINUX_LAMBDA_CONTAINER> and
C<ARM_LAMBDA_CONTAINER>.

=item *

C<BUILD_LAMBDA_10GB>: Use up to 10 GiB memory for builds. Only
available for environment type C<LINUX_LAMBDA_CONTAINER> and
C<ARM_LAMBDA_CONTAINER>.

=back

If you use C<BUILD_GENERAL1_SMALL>:

=over

=item *

For environment type C<LINUX_CONTAINER>, you can use up to 4 GiB memory
and 2 vCPUs for builds.

=item *

For environment type C<LINUX_GPU_CONTAINER>, you can use up to 16 GiB
memory, 4 vCPUs, and 1 NVIDIA A10G Tensor Core GPU for builds.

=item *

For environment type C<ARM_CONTAINER>, you can use up to 4 GiB memory
and 2 vCPUs on ARM-based processors for builds.

=back

If you use C<BUILD_GENERAL1_LARGE>:

=over

=item *

For environment type C<LINUX_CONTAINER>, you can use up to 16 GiB
memory and 8 vCPUs for builds.

=item *

For environment type C<LINUX_GPU_CONTAINER>, you can use up to 255 GiB
memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.

=item *

For environment type C<ARM_CONTAINER>, you can use up to 16 GiB memory
and 8 vCPUs on ARM-based processors for builds.

=back

For more information, see On-demand environment types
(https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html#environment.types)
in the I<CodeBuild User Guide.>

Valid values are: C<"BUILD_GENERAL1_SMALL">, C<"BUILD_GENERAL1_MEDIUM">, C<"BUILD_GENERAL1_LARGE">, C<"BUILD_GENERAL1_XLARGE">, C<"BUILD_GENERAL1_2XLARGE">, C<"BUILD_LAMBDA_1GB">, C<"BUILD_LAMBDA_2GB">, C<"BUILD_LAMBDA_4GB">, C<"BUILD_LAMBDA_8GB">, C<"BUILD_LAMBDA_10GB">, C<"ATTRIBUTE_BASED_COMPUTE">, C<"CUSTOM_INSTANCE_TYPE">

=head2 B<REQUIRED> EnvironmentType => Str

The environment type of the compute fleet.

=over

=item *

The environment type C<ARM_CONTAINER> is available only in regions US
East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Singapore),
Asia Pacific (Sydney), EU (Frankfurt), and South America (SE<atilde>o
Paulo).

=item *

The environment type C<ARM_EC2> is available only in regions US East
(N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU
(Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
Pacific (Sydney), South America (SE<atilde>o Paulo), and Asia Pacific
(Mumbai).

=item *

The environment type C<LINUX_CONTAINER> is available only in regions US
East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU
(Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
Pacific (Sydney), South America (SE<atilde>o Paulo), and Asia Pacific
(Mumbai).

=item *

The environment type C<LINUX_EC2> is available only in regions US East
(N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU
(Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
Pacific (Sydney), South America (SE<atilde>o Paulo), and Asia Pacific
(Mumbai).

=item *

The environment type C<LINUX_GPU_CONTAINER> is available only in
regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU
(Ireland), EU (Frankfurt), Asia Pacific (Tokyo), and Asia Pacific
(Sydney).

=item *

The environment type C<MAC_ARM> is available for Medium fleets only in
regions US East (N. Virginia), US East (Ohio), US West (Oregon), Asia
Pacific (Sydney), and EU (Frankfurt)

=item *

The environment type C<MAC_ARM> is available for Large fleets only in
regions US East (N. Virginia), US East (Ohio), US West (Oregon), and
Asia Pacific (Sydney).

=item *

The environment type C<WINDOWS_EC2> is available only in regions US
East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland), EU
(Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Singapore), Asia
Pacific (Sydney), South America (SE<atilde>o Paulo), and Asia Pacific
(Mumbai).

=item *

The environment type C<WINDOWS_SERVER_2019_CONTAINER> is available only
in regions US East (N. Virginia), US East (Ohio), US West (Oregon),
Asia Pacific (Sydney), Asia Pacific (Tokyo), Asia Pacific (Mumbai) and
EU (Ireland).

=item *

The environment type C<WINDOWS_SERVER_2022_CONTAINER> is available only
in regions US East (N. Virginia), US East (Ohio), US West (Oregon), EU
(Ireland), EU (Frankfurt), Asia Pacific (Sydney), Asia Pacific
(Singapore), Asia Pacific (Tokyo), South America (SE<atilde>o Paulo)
and Asia Pacific (Mumbai).

=back

For more information, see Build environment compute types
(https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html)
in the I<CodeBuild user guide>.

Valid values are: C<"WINDOWS_CONTAINER">, C<"LINUX_CONTAINER">, C<"LINUX_GPU_CONTAINER">, C<"ARM_CONTAINER">, C<"WINDOWS_SERVER_2019_CONTAINER">, C<"WINDOWS_SERVER_2022_CONTAINER">, C<"LINUX_LAMBDA_CONTAINER">, C<"ARM_LAMBDA_CONTAINER">, C<"LINUX_EC2">, C<"ARM_EC2">, C<"WINDOWS_EC2">, C<"MAC_ARM">

=head2 FleetServiceRole => Str

The service role associated with the compute fleet. For more
information, see Allow a user to add a permission policy for a fleet
service role
(https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-permission-policy-fleet-service-role.html)
in the I<CodeBuild User Guide>.



=head2 ImageId => Str

The Amazon Machine Image (AMI) of the compute fleet.



=head2 B<REQUIRED> Name => Str

The name of the compute fleet.



=head2 OverflowBehavior => Str

The compute fleet overflow behavior.

=over

=item *

For overflow behavior C<QUEUE>, your overflow builds need to wait on
the existing fleet instance to become available.

=item *

For overflow behavior C<ON_DEMAND>, your overflow builds run on
CodeBuild on-demand.

If you choose to set your overflow behavior to on-demand while creating
a VPC-connected fleet, make sure that you add the required VPC
permissions to your project service role. For more information, see
Example policy statement to allow CodeBuild access to Amazon Web
Services services required to create a VPC network interface
(https://docs.aws.amazon.com/codebuild/latest/userguide/auth-and-access-control-iam-identity-based-access-control.html#customer-managed-policies-example-create-vpc-network-interface).

=back


Valid values are: C<"QUEUE">, C<"ON_DEMAND">

=head2 ProxyConfiguration => L<Paws::CodeBuild::ProxyConfiguration>

The proxy configuration of the compute fleet.



=head2 ScalingConfiguration => L<Paws::CodeBuild::ScalingConfigurationInput>

The scaling configuration of the compute fleet.



=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

A list of tag key and value pairs associated with this compute fleet.

These tags are available for use by Amazon Web Services services that
support CodeBuild build project tags.



=head2 VpcConfig => L<Paws::CodeBuild::VpcConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFleet in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

