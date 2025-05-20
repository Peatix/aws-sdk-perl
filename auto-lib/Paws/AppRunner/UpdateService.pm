
package Paws::AppRunner::UpdateService;
  use Moose;
  has AutoScalingConfigurationArn => (is => 'ro', isa => 'Str');
  has HealthCheckConfiguration => (is => 'ro', isa => 'Paws::AppRunner::HealthCheckConfiguration');
  has InstanceConfiguration => (is => 'ro', isa => 'Paws::AppRunner::InstanceConfiguration');
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::AppRunner::NetworkConfiguration');
  has ObservabilityConfiguration => (is => 'ro', isa => 'Paws::AppRunner::ServiceObservabilityConfiguration');
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceConfiguration => (is => 'ro', isa => 'Paws::AppRunner::SourceConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::UpdateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::UpdateService - Arguments for method UpdateService on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateService on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method UpdateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateService.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $UpdateServiceResponse = $apprunner->UpdateService(
      ServiceArn                  => 'MyAppRunnerResourceArn',
      AutoScalingConfigurationArn => 'MyAppRunnerResourceArn',    # OPTIONAL
      HealthCheckConfiguration    => {
        HealthyThreshold   => 1,                   # min: 1, max: 20; OPTIONAL
        Interval           => 1,                   # min: 1, max: 20; OPTIONAL
        Path               => 'MyHealthCheckPath', # min: 1; OPTIONAL
        Protocol           => 'TCP',               # values: TCP, HTTP; OPTIONAL
        Timeout            => 1,                   # min: 1, max: 20; OPTIONAL
        UnhealthyThreshold => 1,                   # min: 1, max: 20; OPTIONAL
      },    # OPTIONAL
      InstanceConfiguration => {
        Cpu             => 'MyCpu',        # min: 3, max: 9; OPTIONAL
        InstanceRoleArn => 'MyRoleArn',    # min: 29, max: 1024; OPTIONAL
        Memory          => 'MyMemory',     # min: 3, max: 6; OPTIONAL
      },    # OPTIONAL
      NetworkConfiguration => {
        EgressConfiguration => {
          EgressType      => 'DEFAULT',    # values: DEFAULT, VPC; OPTIONAL
          VpcConnectorArn => 'MyAppRunnerResourceArn',    # min: 1, max: 1011
        },    # OPTIONAL
        IngressConfiguration => {
          IsPubliclyAccessible => 1,    # OPTIONAL
        },    # OPTIONAL
        IpAddressType => 'IPV4',    # values: IPV4, DUAL_STACK; OPTIONAL
      },    # OPTIONAL
      ObservabilityConfiguration => {
        ObservabilityEnabled          => 1,    # OPTIONAL
        ObservabilityConfigurationArn =>
          'MyAppRunnerResourceArn',            # min: 1, max: 1011
      },    # OPTIONAL
      SourceConfiguration => {
        AuthenticationConfiguration => {
          AccessRoleArn => 'MyRoleArn',    # min: 29, max: 1024; OPTIONAL
          ConnectionArn => 'MyAppRunnerResourceArn',    # min: 1, max: 1011
        },    # OPTIONAL
        AutoDeploymentsEnabled => 1,    # OPTIONAL
        CodeRepository         => {
          RepositoryUrl     => 'MyString',    # max: 51200
          SourceCodeVersion => {
            Type  => 'BRANCH',                # values: BRANCH
            Value => 'MyString',              # max: 51200

          },
          CodeConfiguration => {
            ConfigurationSource     => 'REPOSITORY',   # values: REPOSITORY, API
            CodeConfigurationValues => {
              Runtime => 'PYTHON_3'
              , # values: PYTHON_3, NODEJS_12, NODEJS_14, CORRETTO_8, CORRETTO_11, NODEJS_16, GO_1, DOTNET_6, PHP_81, RUBY_31, PYTHON_311, NODEJS_18, NODEJS_22
              BuildCommand              => 'MyBuildCommand',    # OPTIONAL
              Port                      => 'MyString',          # max: 51200
              RuntimeEnvironmentSecrets => {
                'MyRuntimeEnvironmentSecretsName' =>
                  'MyRuntimeEnvironmentSecretsValue'
                ,    # key: min: 1, max: 2048, value: min: 1, max: 2048
              },    # OPTIONAL
              RuntimeEnvironmentVariables => {
                'MyRuntimeEnvironmentVariablesKey' =>
                  'MyRuntimeEnvironmentVariablesValue'
                ,    # key: min: 1, max: 51200, value: max: 51200
              },    # OPTIONAL
              StartCommand => 'MyStartCommand',    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SourceDirectory => 'MySourceDirectory',  # min: 1, max: 4096; OPTIONAL
        },    # OPTIONAL
        ImageRepository => {
          ImageIdentifier     => 'MyImageIdentifier',  # min: 1, max: 1024
          ImageRepositoryType => 'ECR',                # values: ECR, ECR_PUBLIC
          ImageConfiguration  => {
            Port                      => 'MyString',    # max: 51200
            RuntimeEnvironmentSecrets => {
              'MyRuntimeEnvironmentSecretsName' =>
                'MyRuntimeEnvironmentSecretsValue'
              ,    # key: min: 1, max: 2048, value: min: 1, max: 2048
            },    # OPTIONAL
            RuntimeEnvironmentVariables => {
              'MyRuntimeEnvironmentVariablesKey' =>
                'MyRuntimeEnvironmentVariablesValue'
              ,    # key: min: 1, max: 51200, value: max: 51200
            },    # OPTIONAL
            StartCommand => 'MyStartCommand',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $OperationId = $UpdateServiceResponse->OperationId;
    my $Service     = $UpdateServiceResponse->Service;

    # Returns a L<Paws::AppRunner::UpdateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/UpdateService>

=head1 ATTRIBUTES


=head2 AutoScalingConfigurationArn => Str

The Amazon Resource Name (ARN) of an App Runner automatic scaling
configuration resource that you want to associate with the App Runner
service.



=head2 HealthCheckConfiguration => L<Paws::AppRunner::HealthCheckConfiguration>

The settings for the health check that App Runner performs to monitor
the health of the App Runner service.



=head2 InstanceConfiguration => L<Paws::AppRunner::InstanceConfiguration>

The runtime configuration to apply to instances (scaling units) of your
service.



=head2 NetworkConfiguration => L<Paws::AppRunner::NetworkConfiguration>

Configuration settings related to network traffic of the web
application that the App Runner service runs.



=head2 ObservabilityConfiguration => L<Paws::AppRunner::ServiceObservabilityConfiguration>

The observability configuration of your service.



=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) of the App Runner service that you want
to update.



=head2 SourceConfiguration => L<Paws::AppRunner::SourceConfiguration>

The source configuration to apply to the App Runner service.

You can change the configuration of the code or image repository that
the service uses. However, you can't switch from code to image or the
other way around. This means that you must provide the same structure
member of C<SourceConfiguration> that you originally included when you
created the service. Specifically, you can include either
C<CodeRepository> or C<ImageRepository>. To update the source
configuration, set the values to members of the structure that you
include.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateService in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

