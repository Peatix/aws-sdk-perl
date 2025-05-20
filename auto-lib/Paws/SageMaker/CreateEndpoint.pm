
package Paws::SageMaker::CreateEndpoint;
  use Moose;
  has DeploymentConfig => (is => 'ro', isa => 'Paws::SageMaker::DeploymentConfig');
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);
  has EndpointName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateEndpointOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateEndpoint - Arguments for method CreateEndpoint on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpoint on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpoint.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateEndpointOutput = $api . sagemaker->CreateEndpoint(
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
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $EndpointArn = $CreateEndpointOutput->EndpointArn;

    # Returns a L<Paws::SageMaker::CreateEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateEndpoint>

=head1 ATTRIBUTES


=head2 DeploymentConfig => L<Paws::SageMaker::DeploymentConfig>





=head2 B<REQUIRED> EndpointConfigName => Str

The name of an endpoint configuration. For more information, see
CreateEndpointConfig
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateEndpointConfig.html).



=head2 B<REQUIRED> EndpointName => Str

The name of the endpoint.The name must be unique within an Amazon Web
Services Region in your Amazon Web Services account. The name is
case-insensitive in C<CreateEndpoint>, but the case is preserved and
must be matched in InvokeEndpoint
(https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_runtime_InvokeEndpoint.html).



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

An array of key-value pairs. You can use tags to categorize your Amazon
Web Services resources in different ways, for example, by purpose,
owner, or environment. For more information, see Tagging Amazon Web
Services Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

