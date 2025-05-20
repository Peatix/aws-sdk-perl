
package Paws::PCS::CreateComputeNodeGroup;
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'amiId' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has ClusterIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterIdentifier' , required => 1);
  has ComputeNodeGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'computeNodeGroupName' , required => 1);
  has CustomLaunchTemplate => (is => 'ro', isa => 'Paws::PCS::CustomLaunchTemplate', traits => ['NameInRequest'], request_name => 'customLaunchTemplate' , required => 1);
  has IamInstanceProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamInstanceProfileArn' , required => 1);
  has InstanceConfigs => (is => 'ro', isa => 'ArrayRef[Paws::PCS::InstanceConfig]', traits => ['NameInRequest'], request_name => 'instanceConfigs' , required => 1);
  has PurchaseOption => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'purchaseOption' );
  has ScalingConfiguration => (is => 'ro', isa => 'Paws::PCS::ScalingConfigurationRequest', traits => ['NameInRequest'], request_name => 'scalingConfiguration' , required => 1);
  has SlurmConfiguration => (is => 'ro', isa => 'Paws::PCS::ComputeNodeGroupSlurmConfigurationRequest', traits => ['NameInRequest'], request_name => 'slurmConfiguration' );
  has SpotOptions => (is => 'ro', isa => 'Paws::PCS::SpotOptions', traits => ['NameInRequest'], request_name => 'spotOptions' );
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds' , required => 1);
  has Tags => (is => 'ro', isa => 'Paws::PCS::RequestTagMap', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateComputeNodeGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PCS::CreateComputeNodeGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PCS::CreateComputeNodeGroup - Arguments for method CreateComputeNodeGroup on L<Paws::PCS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateComputeNodeGroup on the
L<AWS Parallel Computing Service|Paws::PCS> service. Use the attributes of this class
as arguments to method CreateComputeNodeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateComputeNodeGroup.

=head1 SYNOPSIS

    my $pcs = Paws->service('PCS');
    my $CreateComputeNodeGroupResponse = $pcs->CreateComputeNodeGroup(
      ClusterIdentifier    => 'MyClusterIdentifier',
      ComputeNodeGroupName => 'MyComputeNodeGroupName',
      CustomLaunchTemplate => {
        Id      => 'MyString',
        Version => 'MyString',

      },
      IamInstanceProfileArn => 'MyInstanceProfileArn',
      InstanceConfigs       => [ { InstanceType => 'MyString', }, ... ],
      ScalingConfiguration  => {
        MaxInstanceCount => 1,
        MinInstanceCount => 1,

      },
      SubnetIds          => [ 'MyString', ... ],
      AmiId              => 'MyAmiId',             # OPTIONAL
      ClientToken        => 'MySBClientToken',     # OPTIONAL
      PurchaseOption     => 'ONDEMAND',            # OPTIONAL
      SlurmConfiguration => {
        SlurmCustomSettings => [
          {
            ParameterName  => 'MyString',
            ParameterValue => 'MyString',

          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      SpotOptions => {
        AllocationStrategy => 'lowest-price'
        , # values: lowest-price, capacity-optimized, price-capacity-optimized; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $ComputeNodeGroup = $CreateComputeNodeGroupResponse->ComputeNodeGroup;

    # Returns a L<Paws::PCS::CreateComputeNodeGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pcs/CreateComputeNodeGroup>

=head1 ATTRIBUTES


=head2 AmiId => Str

The ID of the Amazon Machine Image (AMI) that Amazon Web Services PCS
uses to launch compute nodes (Amazon EC2 instances). If you don't
provide this value, Amazon Web Services PCS uses the AMI ID specified
in the custom launch template.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. Idempotency ensures that an API request
completes only once. With an idempotent request, if the original
request completes successfully, the subsequent retries with the same
client token return the result from the original successful request and
they have no additional effect. If you don't specify a client token,
the CLI and SDK automatically generate 1 for you.



=head2 B<REQUIRED> ClusterIdentifier => Str

The name or ID of the cluster to create a compute node group in.



=head2 B<REQUIRED> ComputeNodeGroupName => Str

A name to identify the cluster. Example: C<MyCluster>



=head2 B<REQUIRED> CustomLaunchTemplate => L<Paws::PCS::CustomLaunchTemplate>





=head2 B<REQUIRED> IamInstanceProfileArn => Str

The Amazon Resource Name (ARN) of the IAM instance profile used to pass
an IAM role when launching EC2 instances. The role contained in your
instance profile must have the C<pcs:RegisterComputeNodeGroupInstance>
permission. The resource identifier of the ARN must start with
C<AWSPCS> or it must have C</aws-pcs/> in its path.

B<Examples>

=over

=item *

C<arn:aws:iam::111122223333:instance-profile/AWSPCS-example-role-1>

=item *

C<arn:aws:iam::111122223333:instance-profile/aws-pcs/example-role-2>

=back




=head2 B<REQUIRED> InstanceConfigs => ArrayRef[L<Paws::PCS::InstanceConfig>]

A list of EC2 instance configurations that Amazon Web Services PCS can
provision in the compute node group.



=head2 PurchaseOption => Str

Specifies how EC2 instances are purchased on your behalf. Amazon Web
Services PCS supports On-Demand and Spot instances. For more
information, see Instance purchasing options
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-purchasing-options.html)
in the I<Amazon Elastic Compute Cloud User Guide>. If you don't provide
this option, it defaults to On-Demand.

Valid values are: C<"ONDEMAND">, C<"SPOT">

=head2 B<REQUIRED> ScalingConfiguration => L<Paws::PCS::ScalingConfigurationRequest>

Specifies the boundaries of the compute node group auto scaling.



=head2 SlurmConfiguration => L<Paws::PCS::ComputeNodeGroupSlurmConfigurationRequest>

Additional options related to the Slurm scheduler.



=head2 SpotOptions => L<Paws::PCS::SpotOptions>





=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The list of subnet IDs where the compute node group launches instances.
Subnets must be in the same VPC as the cluster.



=head2 Tags => L<Paws::PCS::RequestTagMap>

1 or more tags added to the resource. Each tag consists of a tag key
and tag value. The tag value is optional and can be an empty string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateComputeNodeGroup in L<Paws::PCS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

