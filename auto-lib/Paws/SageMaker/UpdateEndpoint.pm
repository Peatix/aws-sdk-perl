
package Paws::SageMaker::UpdateEndpoint;
  use Moose;
  has DeploymentConfig => (is => 'ro', isa => 'Paws::SageMaker::DeploymentConfig');
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has ExcludeRetainedVariantProperties => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::VariantProperty]');
  has RetainAllVariantProperties => (is => 'ro', isa => 'Bool');
  has RetainDeploymentConfig => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateEndpointOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateEndpoint - Arguments for method UpdateEndpoint on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEndpoint on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEndpoint.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateEndpointOutput = $api . sagemaker->UpdateEndpoint(
      EndpointConfigName => 'MyEndpointConfigName',
      EndpointName       => 'MyEndpointName',
      DeploymentConfig   => {
        AutoRollbackConfiguration => {
          Alarms => [
            {
              AlarmName => 'MyAlarmName',    # min: 1, max: 255; OPTIONAL
            },
            ...
          ],    # min: 1, max: 10; OPTIONAL
        },    # OPTIONAL
        BlueGreenUpdatePolicy => {
          TrafficRoutingConfiguration => {
            Type => 'ALL_AT_ONCE',    # values: ALL_AT_ONCE, CANARY, LINEAR
            WaitIntervalInSeconds => 1,    # max: 3600
            CanarySize            => {
              Type =>
                'INSTANCE_COUNT',    # values: INSTANCE_COUNT, CAPACITY_PERCENT
              Value => 1,            # min: 1

            },    # OPTIONAL
            LinearStepSize => {
              Type =>
                'INSTANCE_COUNT',    # values: INSTANCE_COUNT, CAPACITY_PERCENT
              Value => 1,            # min: 1

            },    # OPTIONAL
          },
          MaximumExecutionTimeoutInSeconds =>
            1,    # min: 600, max: 28800; OPTIONAL
          TerminationWaitInSeconds => 1,    # max: 3600; OPTIONAL
        },    # OPTIONAL
        RollingUpdatePolicy => {
          MaximumBatchSize => {
            Type => 'INSTANCE_COUNT', # values: INSTANCE_COUNT, CAPACITY_PERCENT
            Value => 1,               # min: 1

          },    # OPTIONAL
          WaitIntervalInSeconds            => 1,    # max: 3600
          MaximumExecutionTimeoutInSeconds =>
            1,    # min: 600, max: 28800; OPTIONAL
          RollbackMaximumBatchSize => {
            Type => 'INSTANCE_COUNT', # values: INSTANCE_COUNT, CAPACITY_PERCENT
            Value => 1,               # min: 1

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ExcludeRetainedVariantProperties => [
        {
          VariantPropertyType => 'DesiredInstanceCount'
          ,    # values: DesiredInstanceCount, DesiredWeight, DataCaptureConfig

        },
        ...
      ],    # OPTIONAL
      RetainAllVariantProperties => 1,    # OPTIONAL
      RetainDeploymentConfig     => 1,    # OPTIONAL
    );

    # Results:
    my $EndpointArn = $UpdateEndpointOutput->EndpointArn;

    # Returns a L<Paws::SageMaker::UpdateEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateEndpoint>

=head1 ATTRIBUTES


=head2 DeploymentConfig => L<Paws::SageMaker::DeploymentConfig>

The deployment configuration for an endpoint, which contains the
desired deployment strategy and rollback configurations.



=head2 B<REQUIRED> EndpointConfigName => Str

The name of the new endpoint configuration.



=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint whose configuration you want to update.



=head2 ExcludeRetainedVariantProperties => ArrayRef[L<Paws::SageMaker::VariantProperty>]

When you are updating endpoint resources with
C<RetainAllVariantProperties>, whose value is set to C<true>,
C<ExcludeRetainedVariantProperties> specifies the list of type
VariantProperty
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VariantProperty.html)
to override with the values provided by C<EndpointConfig>. If you don't
specify a value for C<ExcludeRetainedVariantProperties>, no variant
properties are overridden.



=head2 RetainAllVariantProperties => Bool

When updating endpoint resources, enables or disables the retention of
variant properties
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_VariantProperty.html),
such as the instance count or the variant weight. To retain the variant
properties of an endpoint when updating it, set
C<RetainAllVariantProperties> to C<true>. To use the variant properties
specified in a new C<EndpointConfig> call when updating an endpoint,
set C<RetainAllVariantProperties> to C<false>. The default is C<false>.



=head2 RetainDeploymentConfig => Bool

Specifies whether to reuse the last deployment configuration. The
default value is false (the configuration is not reused).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEndpoint in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

