
package Paws::SageMaker::UpdateClusterSchedulerConfig;
  use Moose;
  has ClusterSchedulerConfigId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has SchedulerConfig => (is => 'ro', isa => 'Paws::SageMaker::SchedulerConfig');
  has TargetVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClusterSchedulerConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateClusterSchedulerConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateClusterSchedulerConfig - Arguments for method UpdateClusterSchedulerConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterSchedulerConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateClusterSchedulerConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterSchedulerConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateClusterSchedulerConfigResponse =
      $api . sagemaker->UpdateClusterSchedulerConfig(
      ClusterSchedulerConfigId => 'MyClusterSchedulerConfigId',
      TargetVersion            => 1,
      Description              => 'MyEntityDescription',          # OPTIONAL
      SchedulerConfig          => {
        FairShare       => 'Enabled',    # values: Enabled, Disabled; OPTIONAL
        PriorityClasses => [
          {
            Name   => 'MyClusterSchedulerPriorityClassName',
            Weight => 1,                                       # max: 100

          },
          ...
        ],    # max: 10; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ClusterSchedulerConfigArn =
      $UpdateClusterSchedulerConfigResponse->ClusterSchedulerConfigArn;
    my $ClusterSchedulerConfigVersion =
      $UpdateClusterSchedulerConfigResponse->ClusterSchedulerConfigVersion;

    # Returns a L<Paws::SageMaker::UpdateClusterSchedulerConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateClusterSchedulerConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterSchedulerConfigId => Str

ID of the cluster policy.



=head2 Description => Str

Description of the cluster policy.



=head2 SchedulerConfig => L<Paws::SageMaker::SchedulerConfig>

Cluster policy configuration.



=head2 B<REQUIRED> TargetVersion => Int

Target version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterSchedulerConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

