
package Paws::SageMaker::CreateClusterSchedulerConfig;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SchedulerConfig => (is => 'ro', isa => 'Paws::SageMaker::SchedulerConfig', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateClusterSchedulerConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateClusterSchedulerConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateClusterSchedulerConfig - Arguments for method CreateClusterSchedulerConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateClusterSchedulerConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateClusterSchedulerConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateClusterSchedulerConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateClusterSchedulerConfigResponse =
      $api . sagemaker->CreateClusterSchedulerConfig(
      ClusterArn      => 'MyClusterArn',
      Name            => 'MyEntityName',
      SchedulerConfig => {
        FairShare       => 'Enabled',    # values: Enabled, Disabled; OPTIONAL
        PriorityClasses => [
          {
            Name   => 'MyClusterSchedulerPriorityClassName',
            Weight => 1,                                       # max: 100

          },
          ...
        ],    # max: 10; OPTIONAL
      },
      Description => 'MyEntityDescription',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ClusterSchedulerConfigArn =
      $CreateClusterSchedulerConfigResponse->ClusterSchedulerConfigArn;
    my $ClusterSchedulerConfigId =
      $CreateClusterSchedulerConfigResponse->ClusterSchedulerConfigId;

    # Returns a L<Paws::SageMaker::CreateClusterSchedulerConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateClusterSchedulerConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

ARN of the cluster.



=head2 Description => Str

Description of the cluster policy.



=head2 B<REQUIRED> Name => Str

Name for the cluster policy.



=head2 B<REQUIRED> SchedulerConfig => L<Paws::SageMaker::SchedulerConfig>

Configuration about the monitoring schedule.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Tags of the cluster policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateClusterSchedulerConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

