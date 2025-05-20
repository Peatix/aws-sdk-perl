
package Paws::SageMaker::UpdateClusterSoftware;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has DeploymentConfig => (is => 'ro', isa => 'Paws::SageMaker::DeploymentConfiguration');
  has InstanceGroups => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::UpdateClusterSoftwareInstanceGroupSpecification]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClusterSoftware');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateClusterSoftwareResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateClusterSoftware - Arguments for method UpdateClusterSoftware on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterSoftware on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateClusterSoftware.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterSoftware.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateClusterSoftwareResponse = $api . sagemaker->UpdateClusterSoftware(
      ClusterName      => 'MyClusterNameOrArn',
      DeploymentConfig => {
        AutoRollbackConfiguration => [
          {
            AlarmName => 'MyAlarmName',    # min: 1, max: 255

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        RollingUpdatePolicy => {
          MaximumBatchSize => {
            Type =>
              'INSTANCE_COUNT',    # values: INSTANCE_COUNT, CAPACITY_PERCENTAGE
            Value => 1,            # min: 1

          },
          RollbackMaximumBatchSize => {
            Type =>
              'INSTANCE_COUNT',    # values: INSTANCE_COUNT, CAPACITY_PERCENTAGE
            Value => 1,            # min: 1

          },
        },    # OPTIONAL
        WaitIntervalInSeconds => 1,    # max: 3600; OPTIONAL
      },    # OPTIONAL
      InstanceGroups => [
        {
          InstanceGroupName => 'MyClusterInstanceGroupName',   # min: 1, max: 63

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ClusterArn = $UpdateClusterSoftwareResponse->ClusterArn;

    # Returns a L<Paws::SageMaker::UpdateClusterSoftwareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateClusterSoftware>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

Specify the name or the Amazon Resource Name (ARN) of the SageMaker
HyperPod cluster you want to update for security patching.



=head2 DeploymentConfig => L<Paws::SageMaker::DeploymentConfiguration>

The configuration to use when updating the AMI versions.



=head2 InstanceGroups => ArrayRef[L<Paws::SageMaker::UpdateClusterSoftwareInstanceGroupSpecification>]

The array of instance groups for which to update AMI versions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterSoftware in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

