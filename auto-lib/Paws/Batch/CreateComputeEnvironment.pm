
package Paws::Batch::CreateComputeEnvironment;
  use Moose;
  has ComputeEnvironmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeEnvironmentName', required => 1);
  has ComputeResources => (is => 'ro', isa => 'Paws::Batch::ComputeResource', traits => ['NameInRequest'], request_name => 'computeResources');
  has Context => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'context');
  has EksConfiguration => (is => 'ro', isa => 'Paws::Batch::EksConfiguration', traits => ['NameInRequest'], request_name => 'eksConfiguration');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::Batch::TagrisTagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has UnmanagedvCpus => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'unmanagedvCpus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComputeEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/createcomputeenvironment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::CreateComputeEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::CreateComputeEnvironment - Arguments for method CreateComputeEnvironment on L<Paws::Batch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComputeEnvironment on the
L<AWS Batch|Paws::Batch> service. Use the attributes of this class
as arguments to method CreateComputeEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComputeEnvironment.

=head1 SYNOPSIS

    my $batch = Paws->service('Batch');
  # To create a managed EC2 compute environment
  # This example creates a managed compute environment with specific C4 instance
  # types that are launched on demand. The compute environment is called
  # C4OnDemand.
    my $CreateComputeEnvironmentResponse = $batch->CreateComputeEnvironment(
      'ComputeEnvironmentName' => 'C4OnDemand',
      'ComputeResources'       => {
        'DesiredvCpus'  => 48,
        'Ec2KeyPair'    => 'id_rsa',
        'InstanceRole'  => 'ecsInstanceRole',
        'InstanceTypes' =>
          [ 'c4.large', 'c4.xlarge', 'c4.2xlarge', 'c4.4xlarge', 'c4.8xlarge' ],
        'MaxvCpus'         => 128,
        'MinvCpus'         => 0,
        'SecurityGroupIds' => ['sg-cf5093b2'],
        'Subnets'          =>
          [ 'subnet-220c0e0a', 'subnet-1a95556d', 'subnet-978f6dce' ],
        'Tags' => {
          'Name' => 'Batch Instance - C4OnDemand'
        },
        'Type' => 'EC2'
      },
      'ServiceRole' => 'arn:aws:iam::012345678910:role/AWSBatchServiceRole',
      'State'       => 'ENABLED',
      'Type'        => 'MANAGED'
    );

    # Results:
    my $computeEnvironmentArn =
      $CreateComputeEnvironmentResponse->computeEnvironmentArn;
    my $computeEnvironmentName =
      $CreateComputeEnvironmentResponse->computeEnvironmentName;

  # Returns a L<Paws::Batch::CreateComputeEnvironmentResponse> object.
  # To create a managed EC2 Spot compute environment
  # This example creates a managed compute environment with the M4 instance type
  # that is launched when the Spot bid price is at or below 20% of the On-Demand
  # price for the instance type. The compute environment is called M4Spot.
    my $CreateComputeEnvironmentResponse = $batch->CreateComputeEnvironment(
      'ComputeEnvironmentName' => 'M4Spot',
      'ComputeResources'       => {
        'BidPercentage'    => 20,
        'DesiredvCpus'     => 4,
        'Ec2KeyPair'       => 'id_rsa',
        'InstanceRole'     => 'ecsInstanceRole',
        'InstanceTypes'    => ['m4'],
        'MaxvCpus'         => 128,
        'MinvCpus'         => 0,
        'SecurityGroupIds' => ['sg-cf5093b2'],
        'SpotIamFleetRole' =>
          'arn:aws:iam::012345678910:role/aws-ec2-spot-fleet-role',
        'Subnets' =>
          [ 'subnet-220c0e0a', 'subnet-1a95556d', 'subnet-978f6dce' ],
        'Tags' => {
          'Name' => 'Batch Instance - M4Spot'
        },
        'Type' => 'SPOT'
      },
      'ServiceRole' => 'arn:aws:iam::012345678910:role/AWSBatchServiceRole',
      'State'       => 'ENABLED',
      'Type'        => 'MANAGED'
    );

    # Results:
    my $computeEnvironmentArn =
      $CreateComputeEnvironmentResponse->computeEnvironmentArn;
    my $computeEnvironmentName =
      $CreateComputeEnvironmentResponse->computeEnvironmentName;

    # Returns a L<Paws::Batch::CreateComputeEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/batch/CreateComputeEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeEnvironmentName => Str

The name for your compute environment. It can be up to 128 characters
long. It can contain uppercase and lowercase letters, numbers, hyphens
(-), and underscores (_).



=head2 ComputeResources => L<Paws::Batch::ComputeResource>

Details about the compute resources managed by the compute environment.
This parameter is required for managed compute environments. For more
information, see Compute Environments
(https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html)
in the I<Batch User Guide>.



=head2 Context => Str

Reserved.



=head2 EksConfiguration => L<Paws::Batch::EksConfiguration>

The details for the Amazon EKS cluster that supports the compute
environment.



=head2 ServiceRole => Str

The full Amazon Resource Name (ARN) of the IAM role that allows Batch
to make calls to other Amazon Web Services services on your behalf. For
more information, see Batch service IAM role
(https://docs.aws.amazon.com/batch/latest/userguide/service_IAM_role.html)
in the I<Batch User Guide>.

If your account already created the Batch service-linked role, that
role is used by default for your compute environment unless you specify
a different role here. If the Batch service-linked role doesn't exist
in your account, and no role is specified here, the service attempts to
create the Batch service-linked role in your account.

If your specified role has a path other than C</>, then you must
specify either the full role ARN (recommended) or prefix the role name
with the path. For example, if a role with the name C<bar> has a path
of C</foo/>, specify C</foo/bar> as the role name. For more
information, see Friendly names and paths
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-friendly-names)
in the I<IAM User Guide>.

Depending on how you created your Batch service role, its ARN might
contain the C<service-role> path prefix. When you only specify the name
of the service role, Batch assumes that your ARN doesn't use the
C<service-role> path prefix. Because of this, we recommend that you
specify the full ARN of your service role when you create compute
environments.



=head2 State => Str

The state of the compute environment. If the state is C<ENABLED>, then
the compute environment accepts jobs from a queue and can scale out
automatically based on queues.

If the state is C<ENABLED>, then the Batch scheduler can attempt to
place jobs from an associated job queue on the compute resources within
the environment. If the compute environment is managed, then it can
scale its instances out or in automatically, based on the job queue
demand.

If the state is C<DISABLED>, then the Batch scheduler doesn't attempt
to place jobs within the environment. Jobs in a C<STARTING> or
C<RUNNING> state continue to progress normally. Managed compute
environments in the C<DISABLED> state don't scale out.

Compute environments in a C<DISABLED> state may continue to incur
billing charges. To prevent additional charges, turn off and then
delete the compute environment. For more information, see State
(https://docs.aws.amazon.com/batch/latest/userguide/compute_environment_parameters.html#compute_environment_state)
in the I<Batch User Guide>.

When an instance is idle, the instance scales down to the C<minvCpus>
value. However, the instance size doesn't change. For example, consider
a C<c5.8xlarge> instance with a C<minvCpus> value of C<4> and a
C<desiredvCpus> value of C<36>. This instance doesn't scale down to a
C<c5.large> instance.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => L<Paws::Batch::TagrisTagsMap>

The tags that you apply to the compute environment to help you
categorize and organize your resources. Each tag consists of a key and
an optional value. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
I<Amazon Web Services General Reference>.

These tags can be updated or removed using the TagResource
(https://docs.aws.amazon.com/batch/latest/APIReference/API_TagResource.html)
and UntagResource
(https://docs.aws.amazon.com/batch/latest/APIReference/API_UntagResource.html)
API operations. These tags don't propagate to the underlying compute
resources.



=head2 B<REQUIRED> Type => Str

The type of the compute environment: C<MANAGED> or C<UNMANAGED>. For
more information, see Compute Environments
(https://docs.aws.amazon.com/batch/latest/userguide/compute_environments.html)
in the I<Batch User Guide>.

Valid values are: C<"MANAGED">, C<"UNMANAGED">

=head2 UnmanagedvCpus => Int

The maximum number of vCPUs for an unmanaged compute environment. This
parameter is only used for fair-share scheduling to reserve vCPU
capacity for new share identifiers. If this parameter isn't provided
for a fair-share job queue, no vCPU capacity is reserved.

This parameter is only supported when the C<type> parameter is set to
C<UNMANAGED>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComputeEnvironment in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

