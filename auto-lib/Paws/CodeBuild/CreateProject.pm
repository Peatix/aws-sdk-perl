
package Paws::CodeBuild::CreateProject;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifacts' , required => 1);
  has AutoRetryLimit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'autoRetryLimit' );
  has BadgeEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'badgeEnabled' );
  has BuildBatchConfig => (is => 'ro', isa => 'Paws::CodeBuild::ProjectBuildBatchConfig', traits => ['NameInRequest'], request_name => 'buildBatchConfig' );
  has Cache => (is => 'ro', isa => 'Paws::CodeBuild::ProjectCache', traits => ['NameInRequest'], request_name => 'cache' );
  has ConcurrentBuildLimit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'concurrentBuildLimit' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', traits => ['NameInRequest'], request_name => 'environment' , required => 1);
  has FileSystemLocations => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectFileSystemLocation]', traits => ['NameInRequest'], request_name => 'fileSystemLocations' );
  has LogsConfig => (is => 'ro', isa => 'Paws::CodeBuild::LogsConfig', traits => ['NameInRequest'], request_name => 'logsConfig' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has QueuedTimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'queuedTimeoutInMinutes' );
  has SecondaryArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectArtifacts]', traits => ['NameInRequest'], request_name => 'secondaryArtifacts' );
  has SecondarySources => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSource]', traits => ['NameInRequest'], request_name => 'secondarySources' );
  has SecondarySourceVersions => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ProjectSourceVersion]', traits => ['NameInRequest'], request_name => 'secondarySourceVersions' );
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole' , required => 1);
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', traits => ['NameInRequest'], request_name => 'source' , required => 1);
  has SourceVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceVersion' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutes' );
  has VpcConfig => (is => 'ro', isa => 'Paws::CodeBuild::VpcConfig', traits => ['NameInRequest'], request_name => 'vpcConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::CreateProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::CreateProject - Arguments for method CreateProject on L<Paws::CodeBuild>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<AWS CodeBuild|Paws::CodeBuild> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $codebuild = Paws->service('CodeBuild');
    my $CreateProjectOutput = $codebuild->CreateProject(
      Artifacts => {
        Type => 'CODEPIPELINE',        # values: CODEPIPELINE, S3, NO_ARTIFACTS
        ArtifactIdentifier => 'MyString',    # OPTIONAL
        BucketOwnerAccess  => 'NONE',  # values: NONE, READ_ONLY, FULL; OPTIONAL
        EncryptionDisabled => 1,       # OPTIONAL
        Location             => 'MyString',   # OPTIONAL
        Name                 => 'MyString',   # OPTIONAL
        NamespaceType        => 'NONE',       # values: NONE, BUILD_ID; OPTIONAL
        OverrideArtifactName => 1,            # OPTIONAL
        Packaging            => 'NONE',       # values: NONE, ZIP; OPTIONAL
        Path                 => 'MyString',   # OPTIONAL
      },
      Environment => {
        ComputeType => 'BUILD_GENERAL1_SMALL'
        , # values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
        Image => 'MyNonEmptyString',    # min: 1
        Type  => 'WINDOWS_CONTAINER'
        , # values: WINDOWS_CONTAINER, LINUX_CONTAINER, LINUX_GPU_CONTAINER, ARM_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, WINDOWS_SERVER_2022_CONTAINER, LINUX_LAMBDA_CONTAINER, ARM_LAMBDA_CONTAINER, LINUX_EC2, ARM_EC2, WINDOWS_EC2, MAC_ARM
        Certificate          => 'MyString',    # OPTIONAL
        ComputeConfiguration => {
          Disk         => 1,                   # OPTIONAL
          InstanceType => 'MyNonEmptyString',  # min: 1
          MachineType  => 'GENERAL',           # values: GENERAL, NVME; OPTIONAL
          Memory       => 1,                   # OPTIONAL
          VCpu         => 1,                   # OPTIONAL
        },    # OPTIONAL
        DockerServer => {
          ComputeType => 'BUILD_GENERAL1_SMALL'
          , # values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_XLARGE, BUILD_GENERAL1_2XLARGE, BUILD_LAMBDA_1GB, BUILD_LAMBDA_2GB, BUILD_LAMBDA_4GB, BUILD_LAMBDA_8GB, BUILD_LAMBDA_10GB, ATTRIBUTE_BASED_COMPUTE, CUSTOM_INSTANCE_TYPE
          SecurityGroupIds => [
            'MyNonEmptyString', ...    # min: 1
          ],    # max: 5; OPTIONAL
          Status => {
            Message => 'MyString',    # OPTIONAL
            Status  => 'MyString',    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        EnvironmentVariables => [
          {
            Name  => 'MyNonEmptyString',    # min: 1
            Value => 'MyString',            # OPTIONAL
            Type  => 'PLAINTEXT'
            ,    # values: PLAINTEXT, PARAMETER_STORE, SECRETS_MANAGER; OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Fleet => {
          FleetArn => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        ImagePullCredentialsType =>
          'CODEBUILD',    # values: CODEBUILD, SERVICE_ROLE; OPTIONAL
        PrivilegedMode     => 1,    # OPTIONAL
        RegistryCredential => {
          Credential         => 'MyNonEmptyString',    # min: 1
          CredentialProvider => 'SECRETS_MANAGER',     # values: SECRETS_MANAGER

        },    # OPTIONAL
      },
      Name        => 'MyProjectName',
      ServiceRole => 'MyNonEmptyString',
      Source      => {
        Type => 'CODECOMMIT'
        , # values: CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
        Auth => {
          Type     => 'OAUTH', # values: OAUTH, CODECONNECTIONS, SECRETS_MANAGER
          Resource => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        BuildStatusConfig => {
          Context   => 'MyString',    # OPTIONAL
          TargetUrl => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        Buildspec           => 'MyString',    # OPTIONAL
        GitCloneDepth       => 1,             # OPTIONAL
        GitSubmodulesConfig => {
          FetchSubmodules => 1,               # OPTIONAL

        },    # OPTIONAL
        InsecureSsl       => 1,             # OPTIONAL
        Location          => 'MyString',    # OPTIONAL
        ReportBuildStatus => 1,             # OPTIONAL
        SourceIdentifier  => 'MyString',    # OPTIONAL
      },
      AutoRetryLimit   => 1,                # OPTIONAL
      BadgeEnabled     => 1,                # OPTIONAL
      BuildBatchConfig => {
        BatchReportMode => 'REPORT_INDIVIDUAL_BUILDS'
        ,  # values: REPORT_INDIVIDUAL_BUILDS, REPORT_AGGREGATED_BATCH; OPTIONAL
        CombineArtifacts => 1,    # OPTIONAL
        Restrictions     => {
          ComputeTypesAllowed => [
            'MyNonEmptyString', ...    # min: 1
          ],    # OPTIONAL
          FleetsAllowed => [
            'MyNonEmptyString', ...    # min: 1
          ],    # OPTIONAL
          MaximumBuildsAllowed => 1,
        },    # OPTIONAL
        ServiceRole   => 'MyNonEmptyString',    # min: 1
        TimeoutInMins => 1,
      },    # OPTIONAL
      Cache => {
        Type           => 'NO_CACHE',    # values: NO_CACHE, S3, LOCAL
        CacheNamespace => 'MyString',    # OPTIONAL
        Location       => 'MyString',    # OPTIONAL
        Modes          => [
          'LOCAL_DOCKER_LAYER_CACHE',
          ... # values: LOCAL_DOCKER_LAYER_CACHE, LOCAL_SOURCE_CACHE, LOCAL_CUSTOM_CACHE
        ],    # OPTIONAL
      },    # OPTIONAL
      ConcurrentBuildLimit => 1,                         # OPTIONAL
      Description          => 'MyProjectDescription',    # OPTIONAL
      EncryptionKey        => 'MyNonEmptyString',        # OPTIONAL
      FileSystemLocations  => [
        {
          Identifier   => 'MyString',    # OPTIONAL
          Location     => 'MyString',    # OPTIONAL
          MountOptions => 'MyString',    # OPTIONAL
          MountPoint   => 'MyString',    # OPTIONAL
          Type         => 'EFS',         # values: EFS; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      LogsConfig => {
        CloudWatchLogs => {
          Status     => 'ENABLED',     # values: ENABLED, DISABLED
          GroupName  => 'MyString',    # OPTIONAL
          StreamName => 'MyString',    # OPTIONAL
        },    # OPTIONAL
        S3Logs => {
          Status            => 'ENABLED',      # values: ENABLED, DISABLED
          BucketOwnerAccess => 'NONE', # values: NONE, READ_ONLY, FULL; OPTIONAL
          EncryptionDisabled => 1,             # OPTIONAL
          Location           => 'MyString',    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      QueuedTimeoutInMinutes => 1,    # OPTIONAL
      SecondaryArtifacts     => [
        {
          Type => 'CODEPIPELINE',      # values: CODEPIPELINE, S3, NO_ARTIFACTS
          ArtifactIdentifier => 'MyString',    # OPTIONAL
          BucketOwnerAccess => 'NONE', # values: NONE, READ_ONLY, FULL; OPTIONAL
          EncryptionDisabled   => 1,          # OPTIONAL
          Location             => 'MyString', # OPTIONAL
          Name                 => 'MyString', # OPTIONAL
          NamespaceType        => 'NONE',     # values: NONE, BUILD_ID; OPTIONAL
          OverrideArtifactName => 1,          # OPTIONAL
          Packaging            => 'NONE',     # values: NONE, ZIP; OPTIONAL
          Path                 => 'MyString', # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SecondarySourceVersions => [
        {
          SourceIdentifier => 'MyString',    # OPTIONAL
          SourceVersion    => 'MyString',    # OPTIONAL

        },
        ...
      ],    # OPTIONAL
      SecondarySources => [
        {
          Type => 'CODECOMMIT'
          , # values: CODECOMMIT, CODEPIPELINE, GITHUB, GITLAB, GITLAB_SELF_MANAGED, S3, BITBUCKET, GITHUB_ENTERPRISE, NO_SOURCE
          Auth => {
            Type => 'OAUTH',   # values: OAUTH, CODECONNECTIONS, SECRETS_MANAGER
            Resource => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          BuildStatusConfig => {
            Context   => 'MyString',    # OPTIONAL
            TargetUrl => 'MyString',    # OPTIONAL
          },    # OPTIONAL
          Buildspec           => 'MyString',    # OPTIONAL
          GitCloneDepth       => 1,             # OPTIONAL
          GitSubmodulesConfig => {
            FetchSubmodules => 1,               # OPTIONAL

          },    # OPTIONAL
          InsecureSsl       => 1,             # OPTIONAL
          Location          => 'MyString',    # OPTIONAL
          ReportBuildStatus => 1,             # OPTIONAL
          SourceIdentifier  => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      SourceVersion => 'MyString',    # OPTIONAL
      Tags          => [
        {
          Key   => 'MyKeyInput',      # min: 1, max: 127; OPTIONAL
          Value => 'MyValueInput',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TimeoutInMinutes => 1,    # OPTIONAL
      VpcConfig        => {
        SecurityGroupIds => [
          'MyNonEmptyString', ...    # min: 1
        ],    # max: 5; OPTIONAL
        Subnets => [
          'MyNonEmptyString', ...    # min: 1
        ],    # max: 16; OPTIONAL
        VpcId => 'MyNonEmptyString',    # min: 1
      },    # OPTIONAL
    );

    # Results:
    my $Project = $CreateProjectOutput->Project;

    # Returns a L<Paws::CodeBuild::CreateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codebuild/CreateProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

Information about the build output artifacts for the build project.



=head2 AutoRetryLimit => Int

The maximum number of additional automatic retries after a failed
build. For example, if the auto-retry limit is set to 2, CodeBuild will
call the C<RetryBuild> API to automatically retry your build for up to
2 additional times.



=head2 BadgeEnabled => Bool

Set this to true to generate a publicly accessible URL for your
project's build badge.



=head2 BuildBatchConfig => L<Paws::CodeBuild::ProjectBuildBatchConfig>

A ProjectBuildBatchConfig object that defines the batch build options
for the project.



=head2 Cache => L<Paws::CodeBuild::ProjectCache>

Stores recently used information so that it can be quickly accessed at
a later time.



=head2 ConcurrentBuildLimit => Int

The maximum number of concurrent builds that are allowed for this
project.

New builds are only started if the current number of builds is less
than or equal to this limit. If the current build count meets this
limit, new builds are throttled and are not run.



=head2 Description => Str

A description that makes the build project easy to identify.



=head2 EncryptionKey => Str

The Key Management Service customer master key (CMK) to be used for
encrypting the build output artifacts.

You can use a cross-account KMS key to encrypt the build output
artifacts if your service role has permission to that key.

You can specify either the Amazon Resource Name (ARN) of the CMK or, if
available, the CMK's alias (using the format
C<alias/E<lt>alias-nameE<gt>>).



=head2 B<REQUIRED> Environment => L<Paws::CodeBuild::ProjectEnvironment>

Information about the build environment for the build project.



=head2 FileSystemLocations => ArrayRef[L<Paws::CodeBuild::ProjectFileSystemLocation>]

An array of C<ProjectFileSystemLocation> objects for a CodeBuild build
project. A C<ProjectFileSystemLocation> object specifies the
C<identifier>, C<location>, C<mountOptions>, C<mountPoint>, and C<type>
of a file system created using Amazon Elastic File System.



=head2 LogsConfig => L<Paws::CodeBuild::LogsConfig>

Information about logs for the build project. These can be logs in
CloudWatch Logs, logs uploaded to a specified S3 bucket, or both.



=head2 B<REQUIRED> Name => Str

The name of the build project.



=head2 QueuedTimeoutInMinutes => Int

The number of minutes a build is allowed to be queued before it times
out.



=head2 SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ProjectArtifacts>]

An array of C<ProjectArtifacts> objects.



=head2 SecondarySources => ArrayRef[L<Paws::CodeBuild::ProjectSource>]

An array of C<ProjectSource> objects.



=head2 SecondarySourceVersions => ArrayRef[L<Paws::CodeBuild::ProjectSourceVersion>]

An array of C<ProjectSourceVersion> objects. If
C<secondarySourceVersions> is specified at the build level, then they
take precedence over these C<secondarySourceVersions> (at the project
level).



=head2 B<REQUIRED> ServiceRole => Str

The ARN of the IAM role that enables CodeBuild to interact with
dependent Amazon Web Services services on behalf of the Amazon Web
Services account.



=head2 B<REQUIRED> Source => L<Paws::CodeBuild::ProjectSource>

Information about the build input source code for the build project.



=head2 SourceVersion => Str

A version of the build input to be built for this project. If not
specified, the latest version is used. If specified, it must be one of:

=over

=item *

For CodeCommit: the commit ID, branch, or Git tag to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.

=item *

For GitLab: the commit ID, branch, or Git tag to use.

=item *

For Bitbucket: the commit ID, branch name, or tag name that corresponds
to the version of the source code you want to build. If a branch name
is specified, the branch's HEAD commit ID is used. If not specified,
the default branch's HEAD commit ID is used.

=item *

For Amazon S3: the version ID of the object that represents the build
input ZIP file to use.

=back

If C<sourceVersion> is specified at the build level, then that version
takes precedence over this C<sourceVersion> (at the project level).

For more information, see Source Version Sample with CodeBuild
(https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html)
in the I<CodeBuild User Guide>.



=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

A list of tag key and value pairs associated with this build project.

These tags are available for use by Amazon Web Services services that
support CodeBuild build project tags.



=head2 TimeoutInMinutes => Int

How long, in minutes, from 5 to 2160 (36 hours), for CodeBuild to wait
before it times out any build that has not been marked as completed.
The default is 60 minutes.



=head2 VpcConfig => L<Paws::CodeBuild::VpcConfig>

VpcConfig enables CodeBuild to access resources in an Amazon VPC.

If you're using compute fleets during project creation, do not provide
vpcConfig.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

