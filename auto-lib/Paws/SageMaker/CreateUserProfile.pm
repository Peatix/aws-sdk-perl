
package Paws::SageMaker::CreateUserProfile;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', required => 1);
  has SingleSignOnUserIdentifier => (is => 'ro', isa => 'Str');
  has SingleSignOnUserValue => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has UserProfileName => (is => 'ro', isa => 'Str', required => 1);
  has UserSettings => (is => 'ro', isa => 'Paws::SageMaker::UserSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUserProfile');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateUserProfileResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateUserProfile - Arguments for method CreateUserProfile on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUserProfile on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateUserProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUserProfile.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateUserProfileResponse = $api . sagemaker->CreateUserProfile(
      DomainId                   => 'MyDomainId',
      UserProfileName            => 'MyUserProfileName',
      SingleSignOnUserIdentifier => 'MySingleSignOnUserIdentifier',   # OPTIONAL
      SingleSignOnUserValue      => 'MyString256',                    # OPTIONAL
      Tags                       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      UserSettings => {
        AutoMountHomeEFS =>
          'Enabled',    # values: Enabled, Disabled, DefaultAsDomain; OPTIONAL
        CanvasAppSettings => {
          DirectDeploySettings => {
            Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          },    # OPTIONAL
          EmrServerlessSettings => {
            ExecutionRoleArn => 'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
            Status           => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
          },    # OPTIONAL
          GenerativeAiSettings => {
            AmazonBedrockRoleArn => 'MyRoleArn',  # min: 20, max: 2048; OPTIONAL
          },    # OPTIONAL
          IdentityProviderOAuthSettings => [
            {
              DataSourceName => 'SalesforceGenie'
              ,    # values: SalesforceGenie, Snowflake; OPTIONAL
              SecretArn => 'MySecretArn',  # min: 1, max: 2048; OPTIONAL
              Status    => 'ENABLED',      # values: ENABLED, DISABLED; OPTIONAL
            },
            ...
          ],    # max: 20; OPTIONAL
          KendraSettings => {
            Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          },    # OPTIONAL
          ModelRegisterSettings => {
            CrossAccountModelRegisterRoleArn =>
              'MyRoleArn',    # min: 20, max: 2048; OPTIONAL
            Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          },    # OPTIONAL
          TimeSeriesForecastingSettings => {
            AmazonForecastRoleArn => 'MyRoleArn', # min: 20, max: 2048; OPTIONAL
            Status => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          },    # OPTIONAL
          WorkspaceSettings => {
            S3ArtifactPath => 'MyS3Uri',       # max: 1024; OPTIONAL
            S3KmsKeyId     => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        CodeEditorAppSettings => {
          AppLifecycleManagement => {
            IdleSettings => {
              IdleTimeoutInMinutes => 1,    # min: 60, max: 525600; OPTIONAL
              LifecycleManagement  =>
                'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              MaxIdleTimeoutInMinutes => 1,    # min: 60, max: 525600; OPTIONAL
              MinIdleTimeoutInMinutes => 1,    # min: 60, max: 525600; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          BuiltInLifecycleConfigArn =>
            'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
          CustomImages => [
            {
              AppImageConfigName => 'MyAppImageConfigName',    # max: 63
              ImageName          => 'MyImageName',             # min: 1, max: 63
              ImageVersionNumber => 1,                         # OPTIONAL
            },
            ...
          ],    # max: 200; OPTIONAL
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
            LifecycleConfigArn =>
              'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
            SageMakerImageArn          => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionAlias =>
              'MyImageVersionAlias',    # min: 1, max: 128; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',      # max: 256; OPTIONAL
          },    # OPTIONAL
          LifecycleConfigArns => [
            'MyStudioLifecycleConfigArn', ...    # max: 256; OPTIONAL
          ],    # OPTIONAL
        },    # OPTIONAL
        CustomFileSystemConfigs => [
          {
            EFSFileSystemConfig => {
              FileSystemId   => 'MyFileSystemId',   # min: 11, max: 21
              FileSystemPath => 'MyFileSystemPath', # min: 1, max: 256; OPTIONAL
            },    # OPTIONAL
            FSxLustreFileSystemConfig => {
              FileSystemId   => 'MyFileSystemId',   # min: 11, max: 21
              FileSystemPath => 'MyFileSystemPath', # min: 1, max: 256; OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
        CustomPosixUserConfig => {
          Gid => 1,    # min: 1001, max: 4000000
          Uid => 1,    # min: 10000, max: 4000000

        },    # OPTIONAL
        DefaultLandingUri     => 'MyLandingUri',  # max: 1023; OPTIONAL
        ExecutionRole         => 'MyRoleArn',     # min: 20, max: 2048; OPTIONAL
        JupyterLabAppSettings => {
          AppLifecycleManagement => {
            IdleSettings => {
              IdleTimeoutInMinutes => 1,    # min: 60, max: 525600; OPTIONAL
              LifecycleManagement  =>
                'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
              MaxIdleTimeoutInMinutes => 1,    # min: 60, max: 525600; OPTIONAL
              MinIdleTimeoutInMinutes => 1,    # min: 60, max: 525600; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          BuiltInLifecycleConfigArn =>
            'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
          CodeRepositories => [
            {
              RepositoryUrl => 'MyRepositoryUrl',    # max: 1024

            },
            ...
          ],    # max: 10; OPTIONAL
          CustomImages => [
            {
              AppImageConfigName => 'MyAppImageConfigName',    # max: 63
              ImageName          => 'MyImageName',             # min: 1, max: 63
              ImageVersionNumber => 1,                         # OPTIONAL
            },
            ...
          ],    # max: 200; OPTIONAL
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
            LifecycleConfigArn =>
              'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
            SageMakerImageArn          => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionAlias =>
              'MyImageVersionAlias',    # min: 1, max: 128; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',      # max: 256; OPTIONAL
          },    # OPTIONAL
          EmrSettings => {
            AssumableRoleArns => [
              'MyRoleArn', ...    # min: 20, max: 2048; OPTIONAL
            ],    # max: 5; OPTIONAL
            ExecutionRoleArns => [
              'MyRoleArn', ...    # min: 20, max: 2048; OPTIONAL
            ],    # max: 5; OPTIONAL
          },    # OPTIONAL
          LifecycleConfigArns => [
            'MyStudioLifecycleConfigArn', ...    # max: 256; OPTIONAL
          ],    # OPTIONAL
        },    # OPTIONAL
        JupyterServerAppSettings => {
          CodeRepositories => [
            {
              RepositoryUrl => 'MyRepositoryUrl',    # max: 1024

            },
            ...
          ],    # max: 10; OPTIONAL
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
            LifecycleConfigArn =>
              'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
            SageMakerImageArn          => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionAlias =>
              'MyImageVersionAlias',    # min: 1, max: 128; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',      # max: 256; OPTIONAL
          },    # OPTIONAL
          LifecycleConfigArns => [
            'MyStudioLifecycleConfigArn', ...    # max: 256; OPTIONAL
          ],    # OPTIONAL
        },    # OPTIONAL
        KernelGatewayAppSettings => {
          CustomImages => [
            {
              AppImageConfigName => 'MyAppImageConfigName',    # max: 63
              ImageName          => 'MyImageName',             # min: 1, max: 63
              ImageVersionNumber => 1,                         # OPTIONAL
            },
            ...
          ],    # max: 200; OPTIONAL
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
            LifecycleConfigArn =>
              'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
            SageMakerImageArn          => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionAlias =>
              'MyImageVersionAlias',    # min: 1, max: 128; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',      # max: 256; OPTIONAL
          },    # OPTIONAL
          LifecycleConfigArns => [
            'MyStudioLifecycleConfigArn', ...    # max: 256; OPTIONAL
          ],    # OPTIONAL
        },    # OPTIONAL
        RSessionAppSettings => {
          CustomImages => [
            {
              AppImageConfigName => 'MyAppImageConfigName',    # max: 63
              ImageName          => 'MyImageName',             # min: 1, max: 63
              ImageVersionNumber => 1,                         # OPTIONAL
            },
            ...
          ],    # max: 200; OPTIONAL
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
            LifecycleConfigArn =>
              'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
            SageMakerImageArn          => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionAlias =>
              'MyImageVersionAlias',    # min: 1, max: 128; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',      # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        RStudioServerProAppSettings => {
          AccessStatus => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          UserGroup    =>
            'R_STUDIO_ADMIN',  # values: R_STUDIO_ADMIN, R_STUDIO_USER; OPTIONAL
        },    # OPTIONAL
        SecurityGroups => [
          'MySecurityGroupId', ...    # max: 32
        ],    # max: 5; OPTIONAL
        SharingSettings => {
          NotebookOutputOption =>
            'Allowed',    # values: Allowed, Disabled; OPTIONAL
          S3KmsKeyId   => 'MyKmsKeyId',    # max: 2048; OPTIONAL
          S3OutputPath => 'MyS3Uri',       # max: 1024; OPTIONAL
        },    # OPTIONAL
        SpaceStorageSettings => {
          DefaultEbsStorageSettings => {
            DefaultEbsVolumeSizeInGb => 1,    # min: 5, max: 16384
            MaximumEbsVolumeSizeInGb => 1,    # min: 5, max: 16384

          },    # OPTIONAL
        },    # OPTIONAL
        StudioWebPortal => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        StudioWebPortalSettings => {
          HiddenAppTypes => [
            'JupyterServer',
            ... # values: JupyterServer, KernelGateway, DetailedProfiler, TensorBoard, CodeEditor, JupyterLab, RStudioServerPro, RSessionGateway, Canvas
          ],    # OPTIONAL
          HiddenInstanceTypes => [
            'system',
            ... # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
          ],    # OPTIONAL
          HiddenMlTools => [
            'DataWrangler',
            ... # values: DataWrangler, FeatureStore, EmrClusters, AutoMl, Experiments, Training, ModelEvaluation, Pipelines, Models, JumpStart, InferenceRecommender, Endpoints, Projects, InferenceOptimization, PerformanceEvaluation, LakeraGuard, Comet, DeepchecksLLMEvaluation, Fiddler, HyperPodClusters
          ],    # OPTIONAL
          HiddenSageMakerImageVersionAliases => [
            {
              SageMakerImageName => 'sagemaker_distribution'
              ,    # values: sagemaker_distribution; OPTIONAL
              VersionAliases => [
                'MyImageVersionAliasPattern', ...    # min: 1, max: 128
              ],    # max: 20; OPTIONAL
            },
            ...
          ],    # max: 5; OPTIONAL
        },    # OPTIONAL
        TensorBoardAppSettings => {
          DefaultResourceSpec => {
            InstanceType => 'system'
            , # values: system, ml.t3.micro, ml.t3.small, ml.t3.medium, ml.t3.large, ml.t3.xlarge, ml.t3.2xlarge, ml.m5.large, ml.m5.xlarge, ml.m5.2xlarge, ml.m5.4xlarge, ml.m5.8xlarge, ml.m5.12xlarge, ml.m5.16xlarge, ml.m5.24xlarge, ml.m5d.large, ml.m5d.xlarge, ml.m5d.2xlarge, ml.m5d.4xlarge, ml.m5d.8xlarge, ml.m5d.12xlarge, ml.m5d.16xlarge, ml.m5d.24xlarge, ml.c5.large, ml.c5.xlarge, ml.c5.2xlarge, ml.c5.4xlarge, ml.c5.9xlarge, ml.c5.12xlarge, ml.c5.18xlarge, ml.c5.24xlarge, ml.p3.2xlarge, ml.p3.8xlarge, ml.p3.16xlarge, ml.p3dn.24xlarge, ml.g4dn.xlarge, ml.g4dn.2xlarge, ml.g4dn.4xlarge, ml.g4dn.8xlarge, ml.g4dn.12xlarge, ml.g4dn.16xlarge, ml.r5.large, ml.r5.xlarge, ml.r5.2xlarge, ml.r5.4xlarge, ml.r5.8xlarge, ml.r5.12xlarge, ml.r5.16xlarge, ml.r5.24xlarge, ml.g5.xlarge, ml.g5.2xlarge, ml.g5.4xlarge, ml.g5.8xlarge, ml.g5.16xlarge, ml.g5.12xlarge, ml.g5.24xlarge, ml.g5.48xlarge, ml.g6.xlarge, ml.g6.2xlarge, ml.g6.4xlarge, ml.g6.8xlarge, ml.g6.12xlarge, ml.g6.16xlarge, ml.g6.24xlarge, ml.g6.48xlarge, ml.g6e.xlarge, ml.g6e.2xlarge, ml.g6e.4xlarge, ml.g6e.8xlarge, ml.g6e.12xlarge, ml.g6e.16xlarge, ml.g6e.24xlarge, ml.g6e.48xlarge, ml.geospatial.interactive, ml.p4d.24xlarge, ml.p4de.24xlarge, ml.trn1.2xlarge, ml.trn1.32xlarge, ml.trn1n.32xlarge, ml.p5.48xlarge, ml.p5en.48xlarge, ml.m6i.large, ml.m6i.xlarge, ml.m6i.2xlarge, ml.m6i.4xlarge, ml.m6i.8xlarge, ml.m6i.12xlarge, ml.m6i.16xlarge, ml.m6i.24xlarge, ml.m6i.32xlarge, ml.m7i.large, ml.m7i.xlarge, ml.m7i.2xlarge, ml.m7i.4xlarge, ml.m7i.8xlarge, ml.m7i.12xlarge, ml.m7i.16xlarge, ml.m7i.24xlarge, ml.m7i.48xlarge, ml.c6i.large, ml.c6i.xlarge, ml.c6i.2xlarge, ml.c6i.4xlarge, ml.c6i.8xlarge, ml.c6i.12xlarge, ml.c6i.16xlarge, ml.c6i.24xlarge, ml.c6i.32xlarge, ml.c7i.large, ml.c7i.xlarge, ml.c7i.2xlarge, ml.c7i.4xlarge, ml.c7i.8xlarge, ml.c7i.12xlarge, ml.c7i.16xlarge, ml.c7i.24xlarge, ml.c7i.48xlarge, ml.r6i.large, ml.r6i.xlarge, ml.r6i.2xlarge, ml.r6i.4xlarge, ml.r6i.8xlarge, ml.r6i.12xlarge, ml.r6i.16xlarge, ml.r6i.24xlarge, ml.r6i.32xlarge, ml.r7i.large, ml.r7i.xlarge, ml.r7i.2xlarge, ml.r7i.4xlarge, ml.r7i.8xlarge, ml.r7i.12xlarge, ml.r7i.16xlarge, ml.r7i.24xlarge, ml.r7i.48xlarge, ml.m6id.large, ml.m6id.xlarge, ml.m6id.2xlarge, ml.m6id.4xlarge, ml.m6id.8xlarge, ml.m6id.12xlarge, ml.m6id.16xlarge, ml.m6id.24xlarge, ml.m6id.32xlarge, ml.c6id.large, ml.c6id.xlarge, ml.c6id.2xlarge, ml.c6id.4xlarge, ml.c6id.8xlarge, ml.c6id.12xlarge, ml.c6id.16xlarge, ml.c6id.24xlarge, ml.c6id.32xlarge, ml.r6id.large, ml.r6id.xlarge, ml.r6id.2xlarge, ml.r6id.4xlarge, ml.r6id.8xlarge, ml.r6id.12xlarge, ml.r6id.16xlarge, ml.r6id.24xlarge, ml.r6id.32xlarge; OPTIONAL
            LifecycleConfigArn =>
              'MyStudioLifecycleConfigArn',    # max: 256; OPTIONAL
            SageMakerImageArn          => 'MyImageArn',    # max: 256; OPTIONAL
            SageMakerImageVersionAlias =>
              'MyImageVersionAlias',    # min: 1, max: 128; OPTIONAL
            SageMakerImageVersionArn =>
              'MyImageVersionArn',      # max: 256; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $UserProfileArn = $CreateUserProfileResponse->UserProfileArn;

    # Returns a L<Paws::SageMaker::CreateUserProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateUserProfile>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainId => Str

The ID of the associated Domain.



=head2 SingleSignOnUserIdentifier => Str

A specifier for the type of value specified in SingleSignOnUserValue.
Currently, the only supported value is "UserName". If the Domain's
AuthMode is IAM Identity Center, this field is required. If the
Domain's AuthMode is not IAM Identity Center, this field cannot be
specified.



=head2 SingleSignOnUserValue => Str

The username of the associated Amazon Web Services Single Sign-On User
for this UserProfile. If the Domain's AuthMode is IAM Identity Center,
this field is required, and must match a valid username of a user in
your directory. If the Domain's AuthMode is not IAM Identity Center,
this field cannot be specified.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

Each tag consists of a key and an optional value. Tag keys must be
unique per resource.

Tags that you specify for the User Profile are also added to all Apps
that the User Profile launches.



=head2 B<REQUIRED> UserProfileName => Str

A name for the UserProfile. This value is not case sensitive.



=head2 UserSettings => L<Paws::SageMaker::UserSettings>

A collection of settings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUserProfile in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

