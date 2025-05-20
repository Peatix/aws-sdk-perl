
package Paws::SecurityHub::BatchImportFindings;
  use Moose;
  has Findings => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsSecurityFinding]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchImportFindings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/findings/import');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchImportFindingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchImportFindings - Arguments for method BatchImportFindings on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchImportFindings on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchImportFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchImportFindings.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchImportFindingsResponse = $securityhub->BatchImportFindings(
      Findings => [
        {
          AwsAccountId => 'MyNonEmptyString',
          CreatedAt    => 'MyNonEmptyString',
          Description  => 'MyNonEmptyString',
          GeneratorId  => 'MyNonEmptyString',
          Id           => 'MyNonEmptyString',
          ProductArn   => 'MyNonEmptyString',
          Resources    => [
            {
              Id                 => 'MyNonEmptyString',
              Type               => 'MyNonEmptyString',
              ApplicationArn     => 'MyNonEmptyString',
              ApplicationName    => 'MyNonEmptyString',
              DataClassification => {
                DetailedResultsLocation => 'MyNonEmptyString',
                Result                  => {
                  AdditionalOccurrences => 1,    # OPTIONAL
                  CustomDataIdentifiers => {
                    Detections => [
                      {
                        Arn         => 'MyNonEmptyString',
                        Count       => 1,                    # OPTIONAL
                        Name        => 'MyNonEmptyString',
                        Occurrences => {
                          Cells => [
                            {
                              CellReference => 'MyNonEmptyString',
                              Column        => 1,                    # OPTIONAL
                              ColumnName    => 'MyNonEmptyString',
                              Row           => 1,                    # OPTIONAL
                            },
                            ...
                          ],    # OPTIONAL
                          LineRanges => [
                            {
                              End         => 1,    # OPTIONAL
                              Start       => 1,    # OPTIONAL
                              StartColumn => 1,    # OPTIONAL
                            },
                            ...
                          ],    # OPTIONAL
                          OffsetRanges => [
                            {
                              End         => 1,    # OPTIONAL
                              Start       => 1,    # OPTIONAL
                              StartColumn => 1,    # OPTIONAL
                            },
                            ...
                          ],    # OPTIONAL
                          Pages => [
                            {
                              LineRange => {
                                End         => 1,    # OPTIONAL
                                Start       => 1,    # OPTIONAL
                                StartColumn => 1,    # OPTIONAL
                              },
                              OffsetRange => {
                                End         => 1,    # OPTIONAL
                                Start       => 1,    # OPTIONAL
                                StartColumn => 1,    # OPTIONAL
                              },
                              PageNumber => 1,       # OPTIONAL
                            },
                            ...
                          ],    # OPTIONAL
                          Records => [
                            {
                              JsonPath    => 'MyNonEmptyString',
                              RecordIndex => 1,                    # OPTIONAL
                            },
                            ...
                          ],    # OPTIONAL
                        },    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    TotalCount => 1,    # OPTIONAL
                  },    # OPTIONAL
                  MimeType      => 'MyNonEmptyString',
                  SensitiveData => [
                    {
                      Category   => 'MyNonEmptyString',
                      Detections => [
                        {
                          Count       => 1,    # OPTIONAL
                          Occurrences => {
                            Cells => [
                              {
                                CellReference => 'MyNonEmptyString',
                                Column        => 1,                   # OPTIONAL
                                ColumnName    => 'MyNonEmptyString',
                                Row           => 1,                   # OPTIONAL
                              },
                              ...
                            ],    # OPTIONAL
                            LineRanges => [
                              {
                                End         => 1,    # OPTIONAL
                                Start       => 1,    # OPTIONAL
                                StartColumn => 1,    # OPTIONAL
                              },
                              ...
                            ],    # OPTIONAL
                            OffsetRanges => [
                              {
                                End         => 1,    # OPTIONAL
                                Start       => 1,    # OPTIONAL
                                StartColumn => 1,    # OPTIONAL
                              },
                              ...
                            ],    # OPTIONAL
                            Pages => [
                              {
                                LineRange => {
                                  End         => 1,    # OPTIONAL
                                  Start       => 1,    # OPTIONAL
                                  StartColumn => 1,    # OPTIONAL
                                },
                                OffsetRange => {
                                  End         => 1,    # OPTIONAL
                                  Start       => 1,    # OPTIONAL
                                  StartColumn => 1,    # OPTIONAL
                                },
                                PageNumber => 1,       # OPTIONAL
                              },
                              ...
                            ],    # OPTIONAL
                            Records => [
                              {
                                JsonPath    => 'MyNonEmptyString',
                                RecordIndex => 1,                    # OPTIONAL
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                          Type => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      TotalCount => 1,    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  SizeClassified => 1,    # OPTIONAL
                  Status         => {
                    Code   => 'MyNonEmptyString',
                    Reason => 'MyNonEmptyString',
                  },                      # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Details => {
                AwsAmazonMqBroker => {
                  AuthenticationStrategy  => 'MyNonEmptyString',
                  AutoMinorVersionUpgrade => 1,                    # OPTIONAL
                  BrokerArn               => 'MyNonEmptyString',
                  BrokerId                => 'MyNonEmptyString',
                  BrokerName              => 'MyNonEmptyString',
                  DeploymentMode          => 'MyNonEmptyString',
                  EncryptionOptions       => {
                    KmsKeyId       => 'MyNonEmptyString',
                    UseAwsOwnedKey => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  EngineType         => 'MyNonEmptyString',
                  EngineVersion      => 'MyNonEmptyString',
                  HostInstanceType   => 'MyNonEmptyString',
                  LdapServerMetadata => {
                    Hosts    => [ 'MyNonEmptyString', ... ],        # OPTIONAL
                    RoleBase => 'MyNonEmptyString',
                    RoleName => 'MyNonEmptyString',
                    RoleSearchMatching     => 'MyNonEmptyString',
                    RoleSearchSubtree      => 1,                    # OPTIONAL
                    ServiceAccountUsername => 'MyNonEmptyString',
                    UserBase               => 'MyNonEmptyString',
                    UserRoleName           => 'MyNonEmptyString',
                    UserSearchMatching     => 'MyNonEmptyString',
                    UserSearchSubtree      => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  Logs => {
                    Audit           => 1,                    # OPTIONAL
                    AuditLogGroup   => 'MyNonEmptyString',
                    General         => 1,                    # OPTIONAL
                    GeneralLogGroup => 'MyNonEmptyString',
                    Pending         => {
                      Audit   => 1,                          # OPTIONAL
                      General => 1,                          # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  MaintenanceWindowStartTime => {
                    DayOfWeek => 'MyNonEmptyString',
                    TimeOfDay => 'MyNonEmptyString',
                    TimeZone  => 'MyNonEmptyString',
                  },    # OPTIONAL
                  PubliclyAccessible => 1,                            # OPTIONAL
                  SecurityGroups     => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  StorageType        => 'MyNonEmptyString',
                  SubnetIds          => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  Users              => [
                    {
                      PendingChange => 'MyNonEmptyString',
                      Username      => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                },    # OPTIONAL
                AwsApiGatewayRestApi => {
                  ApiKeySource     => 'MyNonEmptyString',
                  BinaryMediaTypes => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  CreatedDate      => 'MyNonEmptyString',
                  Description      => 'MyNonEmptyString',
                  EndpointConfiguration => {
                    Types => [ 'MyNonEmptyString', ... ],             # OPTIONAL
                  },    # OPTIONAL
                  Id                     => 'MyNonEmptyString',
                  MinimumCompressionSize => 1,                    # OPTIONAL
                  Name                   => 'MyNonEmptyString',
                  Version                => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsApiGatewayStage => {
                  AccessLogSettings => {
                    DestinationArn => 'MyNonEmptyString',
                    Format         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  CacheClusterEnabled => 1,                    # OPTIONAL
                  CacheClusterSize    => 'MyNonEmptyString',
                  CacheClusterStatus  => 'MyNonEmptyString',
                  CanarySettings      => {
                    DeploymentId           => 'MyNonEmptyString',
                    PercentTraffic         => 1,                    # OPTIONAL
                    StageVariableOverrides =>
                      { 'MyNonEmptyString' => 'MyNonEmptyString', },  # OPTIONAL
                    UseStageCache => 1,                               # OPTIONAL
                  },    # OPTIONAL
                  ClientCertificateId  => 'MyNonEmptyString',
                  CreatedDate          => 'MyNonEmptyString',
                  DeploymentId         => 'MyNonEmptyString',
                  Description          => 'MyNonEmptyString',
                  DocumentationVersion => 'MyNonEmptyString',
                  LastUpdatedDate      => 'MyNonEmptyString',
                  MethodSettings       => [
                    {
                      CacheDataEncrypted => 1,                      # OPTIONAL
                      CacheTtlInSeconds  => 1,                      # OPTIONAL
                      CachingEnabled     => 1,                      # OPTIONAL
                      DataTraceEnabled   => 1,                      # OPTIONAL
                      HttpMethod         => 'MyNonEmptyString',
                      LoggingLevel       => 'MyNonEmptyString',
                      MetricsEnabled     => 1,                      # OPTIONAL
                      RequireAuthorizationForCacheControl => 1,     # OPTIONAL
                      ResourcePath         => 'MyNonEmptyString',
                      ThrottlingBurstLimit => 1,                    # OPTIONAL
                      ThrottlingRateLimit  => 1,                    # OPTIONAL
                      UnauthorizedCacheControlHeaderStrategy =>
                        'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  StageName      => 'MyNonEmptyString',
                  TracingEnabled => 1,                    # OPTIONAL
                  Variables => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                  ,                                       # OPTIONAL
                  WebAclArn => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsApiGatewayV2Api => {
                  ApiEndpoint               => 'MyNonEmptyString',
                  ApiId                     => 'MyNonEmptyString',
                  ApiKeySelectionExpression => 'MyNonEmptyString',
                  CorsConfiguration         => {
                    AllowCredentials => 1,    # OPTIONAL
                    AllowHeaders     => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    AllowMethods     => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    AllowOrigins     => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    ExposeHeaders    => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    MaxAge           => 1,                            # OPTIONAL
                  },    # OPTIONAL
                  CreatedDate              => 'MyNonEmptyString',
                  Description              => 'MyNonEmptyString',
                  Name                     => 'MyNonEmptyString',
                  ProtocolType             => 'MyNonEmptyString',
                  RouteSelectionExpression => 'MyNonEmptyString',
                  Version                  => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsApiGatewayV2Stage => {
                  AccessLogSettings => {
                    DestinationArn => 'MyNonEmptyString',
                    Format         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  ApiGatewayManaged    => 1,                    # OPTIONAL
                  AutoDeploy           => 1,                    # OPTIONAL
                  ClientCertificateId  => 'MyNonEmptyString',
                  CreatedDate          => 'MyNonEmptyString',
                  DefaultRouteSettings => {
                    DataTraceEnabled       => 1,                    # OPTIONAL
                    DetailedMetricsEnabled => 1,                    # OPTIONAL
                    LoggingLevel           => 'MyNonEmptyString',
                    ThrottlingBurstLimit   => 1,                    # OPTIONAL
                    ThrottlingRateLimit    => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  DeploymentId                => 'MyNonEmptyString',
                  Description                 => 'MyNonEmptyString',
                  LastDeploymentStatusMessage => 'MyNonEmptyString',
                  LastUpdatedDate             => 'MyNonEmptyString',
                  RouteSettings               => {
                    DataTraceEnabled       => 1,                    # OPTIONAL
                    DetailedMetricsEnabled => 1,                    # OPTIONAL
                    LoggingLevel           => 'MyNonEmptyString',
                    ThrottlingBurstLimit   => 1,                    # OPTIONAL
                    ThrottlingRateLimit    => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  StageName      => 'MyNonEmptyString',
                  StageVariables =>
                    { 'MyNonEmptyString' => 'MyNonEmptyString', },    # OPTIONAL
                },    # OPTIONAL
                AwsAppSyncGraphQlApi => {
                  AdditionalAuthenticationProviders => [
                    {
                      AuthenticationType     => 'MyNonEmptyString',
                      LambdaAuthorizerConfig => {
                        AuthorizerResultTtlInSeconds => 1,    # OPTIONAL
                        AuthorizerUri                => 'MyNonEmptyString',
                        IdentityValidationExpression => 'MyNonEmptyString',
                      },    # OPTIONAL
                      OpenIdConnectConfig => {
                        AuthTtL  => 1,                    # OPTIONAL
                        ClientId => 'MyNonEmptyString',
                        IatTtL   => 1,                    # OPTIONAL
                        Issuer   => 'MyNonEmptyString',
                      },    # OPTIONAL
                      UserPoolConfig => {
                        AppIdClientRegex => 'MyNonEmptyString',
                        AwsRegion        => 'MyNonEmptyString',
                        DefaultAction    => 'MyNonEmptyString',
                        UserPoolId       => 'MyNonEmptyString',
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  ApiId                  => 'MyNonEmptyString',
                  Arn                    => 'MyNonEmptyString',
                  AuthenticationType     => 'MyNonEmptyString',
                  Id                     => 'MyNonEmptyString',
                  LambdaAuthorizerConfig => {
                    AuthorizerResultTtlInSeconds => 1,    # OPTIONAL
                    AuthorizerUri                => 'MyNonEmptyString',
                    IdentityValidationExpression => 'MyNonEmptyString',
                  },    # OPTIONAL
                  LogConfig => {
                    CloudWatchLogsRoleArn => 'MyNonEmptyString',
                    ExcludeVerboseContent => 1,                    # OPTIONAL
                    FieldLogLevel         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Name                => 'MyNonEmptyString',
                  OpenIdConnectConfig => {
                    AuthTtL  => 1,                    # OPTIONAL
                    ClientId => 'MyNonEmptyString',
                    IatTtL   => 1,                    # OPTIONAL
                    Issuer   => 'MyNonEmptyString',
                  },    # OPTIONAL
                  UserPoolConfig => {
                    AppIdClientRegex => 'MyNonEmptyString',
                    AwsRegion        => 'MyNonEmptyString',
                    DefaultAction    => 'MyNonEmptyString',
                    UserPoolId       => 'MyNonEmptyString',
                  },    # OPTIONAL
                  WafWebAclArn => 'MyNonEmptyString',
                  XrayEnabled  => 1,                    # OPTIONAL
                },    # OPTIONAL
                AwsAthenaWorkGroup => {
                  Configuration => {
                    ResultConfiguration => {
                      EncryptionConfiguration => {
                        EncryptionOption => 'MyNonEmptyString',
                        KmsKey           => 'MyNonEmptyString',
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Description => 'MyNonEmptyString',
                  Name        => 'MyNonEmptyString',
                  State       => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsAutoScalingAutoScalingGroup => {
                  AvailabilityZones =>
                    [ { Value => 'MyNonEmptyString', }, ... ],    # OPTIONAL
                  CapacityRebalance       => 1,                   # OPTIONAL
                  CreatedTime             => 'MyNonEmptyString',
                  HealthCheckGracePeriod  => 1,                   # OPTIONAL
                  HealthCheckType         => 'MyNonEmptyString',
                  LaunchConfigurationName => 'MyNonEmptyString',
                  LaunchTemplate          => {
                    LaunchTemplateId   => 'MyNonEmptyString',
                    LaunchTemplateName => 'MyNonEmptyString',
                    Version            => 'MyNonEmptyString',
                  },                                              # OPTIONAL
                  LoadBalancerNames => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                  MixedInstancesPolicy => {
                    InstancesDistribution => {
                      OnDemandAllocationStrategy          => 'MyNonEmptyString',
                      OnDemandBaseCapacity                => 1,    # OPTIONAL
                      OnDemandPercentageAboveBaseCapacity => 1,    # OPTIONAL
                      SpotAllocationStrategy => 'MyNonEmptyString',
                      SpotInstancePools      => 1,                    # OPTIONAL
                      SpotMaxPrice           => 'MyNonEmptyString',
                    },    # OPTIONAL
                    LaunchTemplate => {
                      LaunchTemplateSpecification => {
                        LaunchTemplateId   => 'MyNonEmptyString',
                        LaunchTemplateName => 'MyNonEmptyString',
                        Version            => 'MyNonEmptyString',
                      },    # OPTIONAL
                      Overrides => [
                        {
                          InstanceType     => 'MyNonEmptyString',
                          WeightedCapacity => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsAutoScalingLaunchConfiguration => {
                  AssociatePublicIpAddress => 1,    # OPTIONAL
                  BlockDeviceMappings      => [
                    {
                      DeviceName => 'MyNonEmptyString',
                      Ebs        => {
                        DeleteOnTermination => 1,                    # OPTIONAL
                        Encrypted           => 1,                    # OPTIONAL
                        Iops                => 1,                    # OPTIONAL
                        SnapshotId          => 'MyNonEmptyString',
                        VolumeSize          => 1,                    # OPTIONAL
                        VolumeType          => 'MyNonEmptyString',
                      },    # OPTIONAL
                      NoDevice    => 1,                    # OPTIONAL
                      VirtualName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ClassicLinkVpcId             => 'MyNonEmptyString',
                  ClassicLinkVpcSecurityGroups => [ 'MyNonEmptyString', ... ]
                  ,                                           # OPTIONAL
                  CreatedTime        => 'MyNonEmptyString',
                  EbsOptimized       => 1,                    # OPTIONAL
                  IamInstanceProfile => 'MyNonEmptyString',
                  ImageId            => 'MyNonEmptyString',
                  InstanceMonitoring => {
                    Enabled => 1,                             # OPTIONAL
                  },    # OPTIONAL
                  InstanceType            => 'MyNonEmptyString',
                  KernelId                => 'MyNonEmptyString',
                  KeyName                 => 'MyNonEmptyString',
                  LaunchConfigurationName => 'MyNonEmptyString',
                  MetadataOptions         => {
                    HttpEndpoint            => 'MyNonEmptyString',
                    HttpPutResponseHopLimit => 1,                    # OPTIONAL
                    HttpTokens              => 'MyNonEmptyString',
                  },    # OPTIONAL
                  PlacementTenancy => 'MyNonEmptyString',
                  RamdiskId        => 'MyNonEmptyString',
                  SecurityGroups   => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  SpotPrice        => 'MyNonEmptyString',
                  UserData         => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsBackupBackupPlan => {
                  BackupPlan => {
                    AdvancedBackupSettings => [
                      {
                        BackupOptions =>
                          { 'MyNonEmptyString' => 'MyNonEmptyString', }
                        ,    # OPTIONAL
                        ResourceType => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    BackupPlanName => 'MyNonEmptyString',
                    BackupPlanRule => [
                      {
                        CompletionWindowMinutes => 1,    # OPTIONAL
                        CopyActions             => [
                          {
                            DestinationBackupVaultArn => 'MyNonEmptyString',
                            Lifecycle                 => {
                              DeleteAfterDays            => 1,    # OPTIONAL
                              MoveToColdStorageAfterDays => 1,    # OPTIONAL
                            },    # OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                        EnableContinuousBackup => 1,    # OPTIONAL
                        Lifecycle              => {
                          DeleteAfterDays            => 1,    # OPTIONAL
                          MoveToColdStorageAfterDays => 1,    # OPTIONAL
                        },    # OPTIONAL
                        RuleId             => 'MyNonEmptyString',
                        RuleName           => 'MyNonEmptyString',
                        ScheduleExpression => 'MyNonEmptyString',
                        StartWindowMinutes => 1,                    # OPTIONAL
                        TargetBackupVault  => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  BackupPlanArn => 'MyNonEmptyString',
                  BackupPlanId  => 'MyNonEmptyString',
                  VersionId     => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsBackupBackupVault => {
                  AccessPolicy     => 'MyNonEmptyString',
                  BackupVaultArn   => 'MyNonEmptyString',
                  BackupVaultName  => 'MyNonEmptyString',
                  EncryptionKeyArn => 'MyNonEmptyString',
                  Notifications    => {
                    BackupVaultEvents => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    SnsTopicArn       => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsBackupRecoveryPoint => {
                  BackupSizeInBytes   => 1,                    # OPTIONAL
                  BackupVaultArn      => 'MyNonEmptyString',
                  BackupVaultName     => 'MyNonEmptyString',
                  CalculatedLifecycle => {
                    DeleteAt            => 'MyNonEmptyString',
                    MoveToColdStorageAt => 'MyNonEmptyString',
                  },                                           # OPTIONAL
                  CompletionDate => 'MyNonEmptyString',
                  CreatedBy      => {
                    BackupPlanArn     => 'MyNonEmptyString',
                    BackupPlanId      => 'MyNonEmptyString',
                    BackupPlanVersion => 'MyNonEmptyString',
                    BackupRuleId      => 'MyNonEmptyString',
                  },                                           # OPTIONAL
                  CreationDate     => 'MyNonEmptyString',
                  EncryptionKeyArn => 'MyNonEmptyString',
                  IamRoleArn       => 'MyNonEmptyString',
                  IsEncrypted      => 1,                       # OPTIONAL
                  LastRestoreTime  => 'MyNonEmptyString',
                  Lifecycle        => {
                    DeleteAfterDays            => 1,           # OPTIONAL
                    MoveToColdStorageAfterDays => 1,           # OPTIONAL
                  },    # OPTIONAL
                  RecoveryPointArn     => 'MyNonEmptyString',
                  ResourceArn          => 'MyNonEmptyString',
                  ResourceType         => 'MyNonEmptyString',
                  SourceBackupVaultArn => 'MyNonEmptyString',
                  Status               => 'MyNonEmptyString',
                  StatusMessage        => 'MyNonEmptyString',
                  StorageClass         => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCertificateManagerCertificate => {
                  CertificateAuthorityArn => 'MyNonEmptyString',
                  CreatedAt               => 'MyNonEmptyString',
                  DomainName              => 'MyNonEmptyString',
                  DomainValidationOptions => [
                    {
                      DomainName     => 'MyNonEmptyString',
                      ResourceRecord => {
                        Name  => 'MyNonEmptyString',
                        Type  => 'MyNonEmptyString',
                        Value => 'MyNonEmptyString',
                      },    # OPTIONAL
                      ValidationDomain => 'MyNonEmptyString',
                      ValidationEmails => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      ValidationMethod => 'MyNonEmptyString',
                      ValidationStatus => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ExtendedKeyUsages => [
                    {
                      Name => 'MyNonEmptyString',
                      OId  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  FailureReason => 'MyNonEmptyString',
                  ImportedAt    => 'MyNonEmptyString',
                  InUseBy       => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  IssuedAt      => 'MyNonEmptyString',
                  Issuer        => 'MyNonEmptyString',
                  KeyAlgorithm  => 'MyNonEmptyString',
                  KeyUsages     => [ { Name => 'MyNonEmptyString', }, ... ]
                  ,                                                # OPTIONAL
                  NotAfter  => 'MyNonEmptyString',
                  NotBefore => 'MyNonEmptyString',
                  Options   => {
                    CertificateTransparencyLoggingPreference =>
                      'MyNonEmptyString',
                  },                                               # OPTIONAL
                  RenewalEligibility => 'MyNonEmptyString',
                  RenewalSummary     => {
                    DomainValidationOptions => [
                      {
                        DomainName     => 'MyNonEmptyString',
                        ResourceRecord => {
                          Name  => 'MyNonEmptyString',
                          Type  => 'MyNonEmptyString',
                          Value => 'MyNonEmptyString',
                        },    # OPTIONAL
                        ValidationDomain => 'MyNonEmptyString',
                        ValidationEmails => [ 'MyNonEmptyString', ... ]
                        ,     # OPTIONAL
                        ValidationMethod => 'MyNonEmptyString',
                        ValidationStatus => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    RenewalStatus       => 'MyNonEmptyString',
                    RenewalStatusReason => 'MyNonEmptyString',
                    UpdatedAt           => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Serial                  => 'MyNonEmptyString',
                  SignatureAlgorithm      => 'MyNonEmptyString',
                  Status                  => 'MyNonEmptyString',
                  Subject                 => 'MyNonEmptyString',
                  SubjectAlternativeNames => [ 'MyNonEmptyString', ... ]
                  ,     # OPTIONAL
                  Type => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCloudFormationStack => {
                  Capabilities     => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  CreationTime     => 'MyNonEmptyString',
                  Description      => 'MyNonEmptyString',
                  DisableRollback  => 1,                              # OPTIONAL
                  DriftInformation =>
                    { StackDriftStatus => 'MyNonEmptyString', },      # OPTIONAL
                  EnableTerminationProtection => 1,                   # OPTIONAL
                  LastUpdatedTime             => 'MyNonEmptyString',
                  NotificationArns => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  Outputs          => [
                    {
                      Description => 'MyNonEmptyString',
                      OutputKey   => 'MyNonEmptyString',
                      OutputValue => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  RoleArn           => 'MyNonEmptyString',
                  StackId           => 'MyNonEmptyString',
                  StackName         => 'MyNonEmptyString',
                  StackStatus       => 'MyNonEmptyString',
                  StackStatusReason => 'MyNonEmptyString',
                  TimeoutInMinutes  => 1,                             # OPTIONAL
                },    # OPTIONAL
                AwsCloudFrontDistribution => {
                  CacheBehaviors => {
                    Items =>
                      [ { ViewerProtocolPolicy => 'MyNonEmptyString', }, ... ]
                    ,    # OPTIONAL
                  },    # OPTIONAL
                  DefaultCacheBehavior =>
                    { ViewerProtocolPolicy => 'MyNonEmptyString', },  # OPTIONAL
                  DefaultRootObject => 'MyNonEmptyString',
                  DomainName        => 'MyNonEmptyString',
                  ETag              => 'MyNonEmptyString',
                  LastModifiedTime  => 'MyNonEmptyString',
                  Logging           => {
                    Bucket         => 'MyNonEmptyString',
                    Enabled        => 1,                    # OPTIONAL
                    IncludeCookies => 1,                    # OPTIONAL
                    Prefix         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  OriginGroups => {
                    Items => [
                      {
                        FailoverCriteria => {
                          StatusCodes => {
                            Items => [
                              1, ...    # OPTIONAL
                            ],    # OPTIONAL
                            Quantity => 1,    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  Origins => {
                    Items => [
                      {
                        CustomOriginConfig => {
                          HttpPort               => 1,    # OPTIONAL
                          HttpsPort              => 1,    # OPTIONAL
                          OriginKeepaliveTimeout => 1,    # OPTIONAL
                          OriginProtocolPolicy => 'MyNonEmptyString',
                          OriginReadTimeout    => 1,                  # OPTIONAL
                          OriginSslProtocols   => {
                            Items    => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                            Quantity => 1,                            # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        DomainName     => 'MyNonEmptyString',
                        Id             => 'MyNonEmptyString',
                        OriginPath     => 'MyNonEmptyString',
                        S3OriginConfig =>
                          { OriginAccessIdentity => 'MyNonEmptyString', }
                        ,     # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  Status            => 'MyNonEmptyString',
                  ViewerCertificate => {
                    AcmCertificateArn            => 'MyNonEmptyString',
                    Certificate                  => 'MyNonEmptyString',
                    CertificateSource            => 'MyNonEmptyString',
                    CloudFrontDefaultCertificate => 1,    # OPTIONAL
                    IamCertificateId             => 'MyNonEmptyString',
                    MinimumProtocolVersion       => 'MyNonEmptyString',
                    SslSupportMethod             => 'MyNonEmptyString',
                  },    # OPTIONAL
                  WebAclId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCloudTrailTrail => {
                  CloudWatchLogsLogGroupArn  => 'MyNonEmptyString',
                  CloudWatchLogsRoleArn      => 'MyNonEmptyString',
                  HasCustomEventSelectors    => 1,                    # OPTIONAL
                  HomeRegion                 => 'MyNonEmptyString',
                  IncludeGlobalServiceEvents => 1,                    # OPTIONAL
                  IsMultiRegionTrail         => 1,                    # OPTIONAL
                  IsOrganizationTrail        => 1,                    # OPTIONAL
                  KmsKeyId                   => 'MyNonEmptyString',
                  LogFileValidationEnabled   => 1,                    # OPTIONAL
                  Name                       => 'MyNonEmptyString',
                  S3BucketName               => 'MyNonEmptyString',
                  S3KeyPrefix                => 'MyNonEmptyString',
                  SnsTopicArn                => 'MyNonEmptyString',
                  SnsTopicName               => 'MyNonEmptyString',
                  TrailArn                   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCloudWatchAlarm => {
                  ActionsEnabled => 1,                              # OPTIONAL
                  AlarmActions   => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  AlarmArn       => 'MyNonEmptyString',
                  AlarmConfigurationUpdatedTimestamp => 'MyNonEmptyString',
                  AlarmDescription                   => 'MyNonEmptyString',
                  AlarmName                          => 'MyNonEmptyString',
                  ComparisonOperator                 => 'MyNonEmptyString',
                  DatapointsToAlarm                  => 1,          # OPTIONAL
                  Dimensions                         => [
                    {
                      Name  => 'MyNonEmptyString',
                      Value => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                # OPTIONAL
                  EvaluateLowSampleCountPercentile => 'MyNonEmptyString',
                  EvaluationPeriods       => 1,                     # OPTIONAL
                  ExtendedStatistic       => 'MyNonEmptyString',
                  InsufficientDataActions => [ 'MyNonEmptyString', ... ]
                  ,                                                 # OPTIONAL
                  MetricName        => 'MyNonEmptyString',
                  Namespace         => 'MyNonEmptyString',
                  OkActions         => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                  Period            => 1,                             # OPTIONAL
                  Statistic         => 'MyNonEmptyString',
                  Threshold         => 1,                             # OPTIONAL
                  ThresholdMetricId => 'MyNonEmptyString',
                  TreatMissingData  => 'MyNonEmptyString',
                  Unit              => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsCodeBuildProject => {
                  Artifacts => [
                    {
                      ArtifactIdentifier   => 'MyNonEmptyString',
                      EncryptionDisabled   => 1,                    # OPTIONAL
                      Location             => 'MyNonEmptyString',
                      Name                 => 'MyNonEmptyString',
                      NamespaceType        => 'MyNonEmptyString',
                      OverrideArtifactName => 1,                    # OPTIONAL
                      Packaging            => 'MyNonEmptyString',
                      Path                 => 'MyNonEmptyString',
                      Type                 => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  EncryptionKey => 'MyNonEmptyString',
                  Environment   => {
                    Certificate          => 'MyNonEmptyString',
                    EnvironmentVariables => [
                      {
                        Name  => 'MyNonEmptyString',
                        Type  => 'MyNonEmptyString',
                        Value => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    ImagePullCredentialsType => 'MyNonEmptyString',
                    PrivilegedMode           => 1,                    # OPTIONAL
                    RegistryCredential       => {
                      Credential         => 'MyNonEmptyString',
                      CredentialProvider => 'MyNonEmptyString',
                    },                                                # OPTIONAL
                    Type => 'MyNonEmptyString',
                  },    # OPTIONAL
                  LogsConfig => {
                    CloudWatchLogs => {
                      GroupName  => 'MyNonEmptyString',
                      Status     => 'MyNonEmptyString',
                      StreamName => 'MyNonEmptyString',
                    },    # OPTIONAL
                    S3Logs => {
                      EncryptionDisabled => 1,                    # OPTIONAL
                      Location           => 'MyNonEmptyString',
                      Status             => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Name               => 'MyNonEmptyString',
                  SecondaryArtifacts => [
                    {
                      ArtifactIdentifier   => 'MyNonEmptyString',
                      EncryptionDisabled   => 1,                    # OPTIONAL
                      Location             => 'MyNonEmptyString',
                      Name                 => 'MyNonEmptyString',
                      NamespaceType        => 'MyNonEmptyString',
                      OverrideArtifactName => 1,                    # OPTIONAL
                      Packaging            => 'MyNonEmptyString',
                      Path                 => 'MyNonEmptyString',
                      Type                 => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ServiceRole => 'MyNonEmptyString',
                  Source      => {
                    GitCloneDepth => 1,                    # OPTIONAL
                    InsecureSsl   => 1,                    # OPTIONAL
                    Location      => 'MyNonEmptyString',
                    Type          => 'MyNonEmptyString',
                  },    # OPTIONAL
                  VpcConfig => {
                    SecurityGroupIds => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    Subnets          => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    VpcId            => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsDmsEndpoint => {
                  CertificateArn            => 'MyNonEmptyString',
                  DatabaseName              => 'MyNonEmptyString',
                  EndpointArn               => 'MyNonEmptyString',
                  EndpointIdentifier        => 'MyNonEmptyString',
                  EndpointType              => 'MyNonEmptyString',
                  EngineName                => 'MyNonEmptyString',
                  ExternalId                => 'MyNonEmptyString',
                  ExtraConnectionAttributes => 'MyNonEmptyString',
                  KmsKeyId                  => 'MyNonEmptyString',
                  Port                      => 1,                    # OPTIONAL
                  ServerName                => 'MyNonEmptyString',
                  SslMode                   => 'MyNonEmptyString',
                  Username                  => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsDmsReplicationInstance => {
                  AllocatedStorage              => 1,                 # OPTIONAL
                  AutoMinorVersionUpgrade       => 1,                 # OPTIONAL
                  AvailabilityZone              => 'MyNonEmptyString',
                  EngineVersion                 => 'MyNonEmptyString',
                  KmsKeyId                      => 'MyNonEmptyString',
                  MultiAZ                       => 1,                 # OPTIONAL
                  PreferredMaintenanceWindow    => 'MyNonEmptyString',
                  PubliclyAccessible            => 1,                 # OPTIONAL
                  ReplicationInstanceClass      => 'MyNonEmptyString',
                  ReplicationInstanceIdentifier => 'MyNonEmptyString',
                  ReplicationSubnetGroup        =>
                    { ReplicationSubnetGroupIdentifier => 'MyNonEmptyString', }
                  ,                                                   # OPTIONAL
                  VpcSecurityGroups =>
                    [ { VpcSecurityGroupId => 'MyNonEmptyString', }, ... ]
                  ,                                                   # OPTIONAL
                },    # OPTIONAL
                AwsDmsReplicationTask => {
                  CdcStartPosition          => 'MyNonEmptyString',
                  CdcStartTime              => 'MyNonEmptyString',
                  CdcStopPosition           => 'MyNonEmptyString',
                  Id                        => 'MyNonEmptyString',
                  MigrationType             => 'MyNonEmptyString',
                  ReplicationInstanceArn    => 'MyNonEmptyString',
                  ReplicationTaskIdentifier => 'MyNonEmptyString',
                  ReplicationTaskSettings   => 'MyNonEmptyString',
                  ResourceIdentifier        => 'MyNonEmptyString',
                  SourceEndpointArn         => 'MyNonEmptyString',
                  TableMappings             => 'MyNonEmptyString',
                  TargetEndpointArn         => 'MyNonEmptyString',
                  TaskData                  => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsDynamoDbTable => {
                  AttributeDefinitions => [
                    {
                      AttributeName => 'MyNonEmptyString',
                      AttributeType => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  BillingModeSummary => {
                    BillingMode                       => 'MyNonEmptyString',
                    LastUpdateToPayPerRequestDateTime => 'MyNonEmptyString',
                  },    # OPTIONAL
                  CreationDateTime          => 'MyNonEmptyString',
                  DeletionProtectionEnabled => 1,                    # OPTIONAL
                  GlobalSecondaryIndexes    => [
                    {
                      Backfilling    => 1,                    # OPTIONAL
                      IndexArn       => 'MyNonEmptyString',
                      IndexName      => 'MyNonEmptyString',
                      IndexSizeBytes => 1,                    # OPTIONAL
                      IndexStatus    => 'MyNonEmptyString',
                      ItemCount      => 1,                    # OPTIONAL
                      KeySchema      => [
                        {
                          AttributeName => 'MyNonEmptyString',
                          KeyType       => 'MyNonEmptyString',
                        },
                        ...
                      ],                                      # OPTIONAL
                      Projection => {
                        NonKeyAttributes => [ 'MyNonEmptyString', ... ]
                        ,                                     # OPTIONAL
                        ProjectionType => 'MyNonEmptyString',
                      },    # OPTIONAL
                      ProvisionedThroughput => {
                        LastDecreaseDateTime   => 'MyNonEmptyString',
                        LastIncreaseDateTime   => 'MyNonEmptyString',
                        NumberOfDecreasesToday => 1,                  # OPTIONAL
                        ReadCapacityUnits      => 1,                  # OPTIONAL
                        WriteCapacityUnits     => 1,                  # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  GlobalTableVersion => 'MyNonEmptyString',
                  ItemCount          => 1,                    # OPTIONAL
                  KeySchema          => [
                    {
                      AttributeName => 'MyNonEmptyString',
                      KeyType       => 'MyNonEmptyString',
                    },
                    ...
                  ],                                          # OPTIONAL
                  LatestStreamArn       => 'MyNonEmptyString',
                  LatestStreamLabel     => 'MyNonEmptyString',
                  LocalSecondaryIndexes => [
                    {
                      IndexArn  => 'MyNonEmptyString',
                      IndexName => 'MyNonEmptyString',
                      KeySchema => [
                        {
                          AttributeName => 'MyNonEmptyString',
                          KeyType       => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      Projection => {
                        NonKeyAttributes => [ 'MyNonEmptyString', ... ]
                        ,    # OPTIONAL
                        ProjectionType => 'MyNonEmptyString',
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  ProvisionedThroughput => {
                    LastDecreaseDateTime   => 'MyNonEmptyString',
                    LastIncreaseDateTime   => 'MyNonEmptyString',
                    NumberOfDecreasesToday => 1,                    # OPTIONAL
                    ReadCapacityUnits      => 1,                    # OPTIONAL
                    WriteCapacityUnits     => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  Replicas => [
                    {
                      GlobalSecondaryIndexes => [
                        {
                          IndexName                     => 'MyNonEmptyString',
                          ProvisionedThroughputOverride => {
                            ReadCapacityUnits => 1,    # OPTIONAL
                          },    # OPTIONAL
                        },
                        ...
                      ],    # OPTIONAL
                      KmsMasterKeyId                => 'MyNonEmptyString',
                      ProvisionedThroughputOverride => {
                        ReadCapacityUnits => 1,    # OPTIONAL
                      },    # OPTIONAL
                      RegionName               => 'MyNonEmptyString',
                      ReplicaStatus            => 'MyNonEmptyString',
                      ReplicaStatusDescription => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  RestoreSummary => {
                    RestoreDateTime   => 'MyNonEmptyString',
                    RestoreInProgress => 1,                    # OPTIONAL
                    SourceBackupArn   => 'MyNonEmptyString',
                    SourceTableArn    => 'MyNonEmptyString',
                  },    # OPTIONAL
                  SseDescription => {
                    InaccessibleEncryptionDateTime => 'MyNonEmptyString',
                    KmsMasterKeyArn                => 'MyNonEmptyString',
                    SseType                        => 'MyNonEmptyString',
                    Status                         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  StreamSpecification => {
                    StreamEnabled  => 1,                    # OPTIONAL
                    StreamViewType => 'MyNonEmptyString',
                  },    # OPTIONAL
                  TableId        => 'MyNonEmptyString',
                  TableName      => 'MyNonEmptyString',
                  TableSizeBytes => 1,                    # OPTIONAL
                  TableStatus    => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2ClientVpnEndpoint => {
                  AuthenticationOptions => [
                    {
                      ActiveDirectory => { DirectoryId => 'MyNonEmptyString', }
                      ,    # OPTIONAL
                      FederatedAuthentication => {
                        SamlProviderArn            => 'MyNonEmptyString',
                        SelfServiceSamlProviderArn => 'MyNonEmptyString',
                      },    # OPTIONAL
                      MutualAuthentication =>
                        { ClientRootCertificateChain => 'MyNonEmptyString', }
                      ,     # OPTIONAL
                      Type => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ClientCidrBlock      => 'MyNonEmptyString',
                  ClientConnectOptions => {
                    Enabled           => 1,                    # OPTIONAL
                    LambdaFunctionArn => 'MyNonEmptyString',
                    Status            => {
                      Code    => 'MyNonEmptyString',
                      Message => 'MyNonEmptyString',
                    },                                         # OPTIONAL
                  },    # OPTIONAL
                  ClientLoginBannerOptions => {
                    BannerText => 'MyNonEmptyString',
                    Enabled    => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  ClientVpnEndpointId  => 'MyNonEmptyString',
                  ConnectionLogOptions => {
                    CloudwatchLogGroup  => 'MyNonEmptyString',
                    CloudwatchLogStream => 'MyNonEmptyString',
                    Enabled             => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  Description        => 'MyNonEmptyString',
                  DnsServer          => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  SecurityGroupIdSet => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  SelfServicePortalUrl => 'MyNonEmptyString',
                  ServerCertificateArn => 'MyNonEmptyString',
                  SessionTimeoutHours  => 1,                          # OPTIONAL
                  SplitTunnel          => 1,                          # OPTIONAL
                  TransportProtocol    => 'MyNonEmptyString',
                  VpcId                => 'MyNonEmptyString',
                  VpnPort              => 1,                          # OPTIONAL
                },    # OPTIONAL
                AwsEc2Eip => {
                  AllocationId            => 'MyNonEmptyString',
                  AssociationId           => 'MyNonEmptyString',
                  Domain                  => 'MyNonEmptyString',
                  InstanceId              => 'MyNonEmptyString',
                  NetworkBorderGroup      => 'MyNonEmptyString',
                  NetworkInterfaceId      => 'MyNonEmptyString',
                  NetworkInterfaceOwnerId => 'MyNonEmptyString',
                  PrivateIpAddress        => 'MyNonEmptyString',
                  PublicIp                => 'MyNonEmptyString',
                  PublicIpv4Pool          => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Instance => {
                  IamInstanceProfileArn => 'MyNonEmptyString',
                  ImageId               => 'MyNonEmptyString',
                  IpV4Addresses   => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  IpV6Addresses   => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  KeyName         => 'MyNonEmptyString',
                  LaunchedAt      => 'MyNonEmptyString',
                  MetadataOptions => {
                    HttpEndpoint            => 'MyNonEmptyString',
                    HttpProtocolIpv6        => 'MyNonEmptyString',
                    HttpPutResponseHopLimit => 1,                    # OPTIONAL
                    HttpTokens              => 'MyNonEmptyString',
                    InstanceMetadataTags    => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Monitoring => { State => 'MyNonEmptyString', },    # OPTIONAL
                  NetworkInterfaces =>
                    [ { NetworkInterfaceId => 'MyNonEmptyString', }, ... ]
                  ,                                                  # OPTIONAL
                  SubnetId           => 'MyNonEmptyString',
                  Type               => 'MyNonEmptyString',
                  VirtualizationType => 'MyNonEmptyString',
                  VpcId              => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2LaunchTemplate => {
                  DefaultVersionNumber => 1,                    # OPTIONAL
                  Id                   => 'MyNonEmptyString',
                  LatestVersionNumber  => 1,                    # OPTIONAL
                  LaunchTemplateData   => {
                    BlockDeviceMappingSet => [
                      {
                        DeviceName => 'MyNonEmptyString',
                        Ebs        => {
                          DeleteOnTermination => 1,                   # OPTIONAL
                          Encrypted           => 1,                   # OPTIONAL
                          Iops                => 1,                   # OPTIONAL
                          KmsKeyId            => 'MyNonEmptyString',
                          SnapshotId          => 'MyNonEmptyString',
                          Throughput          => 1,                   # OPTIONAL
                          VolumeSize          => 1,                   # OPTIONAL
                          VolumeType          => 'MyNonEmptyString',
                        },    # OPTIONAL
                        NoDevice    => 'MyNonEmptyString',
                        VirtualName => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    CapacityReservationSpecification => {
                      CapacityReservationPreference => 'MyNonEmptyString',
                      CapacityReservationTarget     => {
                        CapacityReservationId => 'MyNonEmptyString',
                        CapacityReservationResourceGroupArn =>
                          'MyNonEmptyString',
                      },    # OPTIONAL
                    },    # OPTIONAL
                    CpuOptions => {
                      CoreCount      => 1,    # OPTIONAL
                      ThreadsPerCore => 1,    # OPTIONAL
                    },    # OPTIONAL
                    CreditSpecification =>
                      { CpuCredits => 'MyNonEmptyString', },    # OPTIONAL
                    DisableApiStop             => 1,            # OPTIONAL
                    DisableApiTermination      => 1,            # OPTIONAL
                    EbsOptimized               => 1,            # OPTIONAL
                    ElasticGpuSpecificationSet =>
                      [ { Type => 'MyNonEmptyString', }, ... ], # OPTIONAL
                    ElasticInferenceAcceleratorSet => [
                      {
                        Count => 1,                             # OPTIONAL
                        Type  => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    EnclaveOptions => {
                      Enabled => 1,    # OPTIONAL
                    },    # OPTIONAL
                    HibernationOptions => {
                      Configured => 1,    # OPTIONAL
                    },    # OPTIONAL
                    IamInstanceProfile => {
                      Arn  => 'MyNonEmptyString',
                      Name => 'MyNonEmptyString',
                    },    # OPTIONAL
                    ImageId                           => 'MyNonEmptyString',
                    InstanceInitiatedShutdownBehavior => 'MyNonEmptyString',
                    InstanceMarketOptions             => {
                      MarketType  => 'MyNonEmptyString',
                      SpotOptions => {
                        BlockDurationMinutes         => 1,    # OPTIONAL
                        InstanceInterruptionBehavior => 'MyNonEmptyString',
                        MaxPrice                     => 'MyNonEmptyString',
                        SpotInstanceType             => 'MyNonEmptyString',
                        ValidUntil                   => 'MyNonEmptyString',
                      },    # OPTIONAL
                    },    # OPTIONAL
                    InstanceRequirements => {
                      AcceleratorCount => {
                        Max => 1,    # OPTIONAL
                        Min => 1,    # OPTIONAL
                      },    # OPTIONAL
                      AcceleratorManufacturers => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      AcceleratorNames => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      AcceleratorTotalMemoryMiB => {
                        Max => 1,    # OPTIONAL
                        Min => 1,    # OPTIONAL
                      },    # OPTIONAL
                      AcceleratorTypes => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      BareMetal                => 'MyNonEmptyString',
                      BaselineEbsBandwidthMbps => {
                        Max => 1,    # OPTIONAL
                        Min => 1,    # OPTIONAL
                      },    # OPTIONAL
                      BurstablePerformance => 'MyNonEmptyString',
                      CpuManufacturers     => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      ExcludedInstanceTypes => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      InstanceGenerations => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      LocalStorage      => 'MyNonEmptyString',
                      LocalStorageTypes => [ 'MyNonEmptyString', ... ]
                      ,     # OPTIONAL
                      MemoryGiBPerVCpu => {
                        Max => 1,    # OPTIONAL
                        Min => 1,    # OPTIONAL
                      },    # OPTIONAL
                      MemoryMiB => {
                        Max => 1,    # OPTIONAL
                        Min => 1,    # OPTIONAL
                      },    # OPTIONAL
                      NetworkInterfaceCount => {
                        Max => 1,    # OPTIONAL
                        Min => 1,    # OPTIONAL
                      },    # OPTIONAL
                      OnDemandMaxPricePercentageOverLowestPrice => 1, # OPTIONAL
                      RequireHibernateSupport                   => 1, # OPTIONAL
                      SpotMaxPricePercentageOverLowestPrice     => 1, # OPTIONAL
                      TotalLocalStorageGB                       => {
                        Max => 1,                                     # OPTIONAL
                        Min => 1,                                     # OPTIONAL
                      },    # OPTIONAL
                      VCpuCount => {
                        Max => 1,    # OPTIONAL
                        Min => 1,    # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    InstanceType => 'MyNonEmptyString',
                    KernelId     => 'MyNonEmptyString',
                    KeyName      => 'MyNonEmptyString',
                    LicenseSet   => [
                      { LicenseConfigurationArn => 'MyNonEmptyString', }, ...
                    ],    # OPTIONAL
                    MaintenanceOptions =>
                      { AutoRecovery => 'MyNonEmptyString', },    # OPTIONAL
                    MetadataOptions => {
                      HttpEndpoint            => 'MyNonEmptyString',
                      HttpProtocolIpv6        => 'MyNonEmptyString',
                      HttpPutResponseHopLimit => 1,                   # OPTIONAL
                      HttpTokens              => 'MyNonEmptyString',
                      InstanceMetadataTags    => 'MyNonEmptyString',
                    },    # OPTIONAL
                    Monitoring => {
                      Enabled => 1,    # OPTIONAL
                    },    # OPTIONAL
                    NetworkInterfaceSet => [
                      {
                        AssociateCarrierIpAddress => 1,    # OPTIONAL
                        AssociatePublicIpAddress  => 1,    # OPTIONAL
                        DeleteOnTermination       => 1,    # OPTIONAL
                        Description   => 'MyNonEmptyString',
                        DeviceIndex   => 1,                           # OPTIONAL
                        Groups        => [ 'MyNonEmptyString', ... ], # OPTIONAL
                        InterfaceType => 'MyNonEmptyString',
                        Ipv4PrefixCount => 1,                         # OPTIONAL
                        Ipv4Prefixes    =>
                          [ { Ipv4Prefix => 'MyNonEmptyString', }, ... ]
                        ,                                             # OPTIONAL
                        Ipv6AddressCount => 1,                        # OPTIONAL
                        Ipv6Addresses    =>
                          [ { Ipv6Address => 'MyNonEmptyString', }, ... ]
                        ,                                             # OPTIONAL
                        Ipv6PrefixCount => 1,                         # OPTIONAL
                        Ipv6Prefixes    =>
                          [ { Ipv6Prefix => 'MyNonEmptyString', }, ... ]
                        ,                                             # OPTIONAL
                        NetworkCardIndex   => 1,                      # OPTIONAL
                        NetworkInterfaceId => 'MyNonEmptyString',
                        PrivateIpAddress   => 'MyNonEmptyString',
                        PrivateIpAddresses => [
                          {
                            Primary          => 1,                    # OPTIONAL
                            PrivateIpAddress => 'MyNonEmptyString',
                          },
                          ...
                        ],    # OPTIONAL
                        SecondaryPrivateIpAddressCount => 1,    # OPTIONAL
                        SubnetId                       => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    Placement => {
                      Affinity             => 'MyNonEmptyString',
                      AvailabilityZone     => 'MyNonEmptyString',
                      GroupName            => 'MyNonEmptyString',
                      HostId               => 'MyNonEmptyString',
                      HostResourceGroupArn => 'MyNonEmptyString',
                      PartitionNumber      => 1,                    # OPTIONAL
                      SpreadDomain         => 'MyNonEmptyString',
                      Tenancy              => 'MyNonEmptyString',
                    },    # OPTIONAL
                    PrivateDnsNameOptions => {
                      EnableResourceNameDnsAAAARecord => 1,    # OPTIONAL
                      EnableResourceNameDnsARecord    => 1,    # OPTIONAL
                      HostnameType                    => 'MyNonEmptyString',
                    },    # OPTIONAL
                    RamDiskId          => 'MyNonEmptyString',
                    SecurityGroupIdSet => [ 'MyNonEmptyString', ... ]
                    ,     # OPTIONAL
                    SecurityGroupSet => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    UserData         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  LaunchTemplateName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2NetworkAcl => {
                  Associations => [
                    {
                      NetworkAclAssociationId => 'MyNonEmptyString',
                      NetworkAclId            => 'MyNonEmptyString',
                      SubnetId                => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  Entries => [
                    {
                      CidrBlock    => 'MyNonEmptyString',
                      Egress       => 1,                    # OPTIONAL
                      IcmpTypeCode => {
                        Code => 1,                          # OPTIONAL
                        Type => 1,                          # OPTIONAL
                      },    # OPTIONAL
                      Ipv6CidrBlock => 'MyNonEmptyString',
                      PortRange     => {
                        From => 1,    # OPTIONAL
                        To   => 1,    # OPTIONAL
                      },    # OPTIONAL
                      Protocol   => 'MyNonEmptyString',
                      RuleAction => 'MyNonEmptyString',
                      RuleNumber => 1,                    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  IsDefault    => 1,                    # OPTIONAL
                  NetworkAclId => 'MyNonEmptyString',
                  OwnerId      => 'MyNonEmptyString',
                  VpcId        => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2NetworkInterface => {
                  Attachment => {
                    AttachTime          => 'MyNonEmptyString',
                    AttachmentId        => 'MyNonEmptyString',
                    DeleteOnTermination => 1,                    # OPTIONAL
                    DeviceIndex         => 1,                    # OPTIONAL
                    InstanceId          => 'MyNonEmptyString',
                    InstanceOwnerId     => 'MyNonEmptyString',
                    Status              => 'MyNonEmptyString',
                  },    # OPTIONAL
                  IpV6Addresses =>
                    [ { IpV6Address => 'MyNonEmptyString', }, ... ],  # OPTIONAL
                  NetworkInterfaceId => 'MyNonEmptyString',
                  PrivateIpAddresses => [
                    {
                      PrivateDnsName   => 'MyNonEmptyString',
                      PrivateIpAddress => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  PublicDnsName  => 'MyNonEmptyString',
                  PublicIp       => 'MyNonEmptyString',
                  SecurityGroups => [
                    {
                      GroupId   => 'MyNonEmptyString',
                      GroupName => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  SourceDestCheck => 1,                               # OPTIONAL
                },    # OPTIONAL
                AwsEc2RouteTable => {
                  AssociationSet => [
                    {
                      AssociationState => {
                        State         => 'MyNonEmptyString',
                        StatusMessage => 'MyNonEmptyString',
                      },    # OPTIONAL
                      GatewayId               => 'MyNonEmptyString',
                      Main                    => 1,                   # OPTIONAL
                      RouteTableAssociationId => 'MyNonEmptyString',
                      RouteTableId            => 'MyNonEmptyString',
                      SubnetId                => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  OwnerId           => 'MyNonEmptyString',
                  PropagatingVgwSet =>
                    [ { GatewayId => 'MyNonEmptyString', }, ... ],    # OPTIONAL
                  RouteSet => [
                    {
                      CarrierGatewayId            => 'MyNonEmptyString',
                      CoreNetworkArn              => 'MyNonEmptyString',
                      DestinationCidrBlock        => 'MyNonEmptyString',
                      DestinationIpv6CidrBlock    => 'MyNonEmptyString',
                      DestinationPrefixListId     => 'MyNonEmptyString',
                      EgressOnlyInternetGatewayId => 'MyNonEmptyString',
                      GatewayId                   => 'MyNonEmptyString',
                      InstanceId                  => 'MyNonEmptyString',
                      InstanceOwnerId             => 'MyNonEmptyString',
                      LocalGatewayId              => 'MyNonEmptyString',
                      NatGatewayId                => 'MyNonEmptyString',
                      NetworkInterfaceId          => 'MyNonEmptyString',
                      Origin                      => 'MyNonEmptyString',
                      State                       => 'MyNonEmptyString',
                      TransitGatewayId            => 'MyNonEmptyString',
                      VpcPeeringConnectionId      => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  RouteTableId => 'MyNonEmptyString',
                  VpcId        => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2SecurityGroup => {
                  GroupId       => 'MyNonEmptyString',
                  GroupName     => 'MyNonEmptyString',
                  IpPermissions => [
                    {
                      FromPort   => 1,                    # OPTIONAL
                      IpProtocol => 'MyNonEmptyString',
                      IpRanges   => [ { CidrIp => 'MyNonEmptyString', }, ... ]
                      ,                                   # OPTIONAL
                      Ipv6Ranges =>
                        [ { CidrIpv6 => 'MyNonEmptyString', }, ... ], # OPTIONAL
                      PrefixListIds =>
                        [ { PrefixListId => 'MyNonEmptyString', }, ... ]
                      ,                                               # OPTIONAL
                      ToPort           => 1,                          # OPTIONAL
                      UserIdGroupPairs => [
                        {
                          GroupId                => 'MyNonEmptyString',
                          GroupName              => 'MyNonEmptyString',
                          PeeringStatus          => 'MyNonEmptyString',
                          UserId                 => 'MyNonEmptyString',
                          VpcId                  => 'MyNonEmptyString',
                          VpcPeeringConnectionId => 'MyNonEmptyString',
                        },
                        ...
                      ],                                              # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  IpPermissionsEgress => [
                    {
                      FromPort   => 1,                    # OPTIONAL
                      IpProtocol => 'MyNonEmptyString',
                      IpRanges   => [ { CidrIp => 'MyNonEmptyString', }, ... ]
                      ,                                   # OPTIONAL
                      Ipv6Ranges =>
                        [ { CidrIpv6 => 'MyNonEmptyString', }, ... ], # OPTIONAL
                      PrefixListIds =>
                        [ { PrefixListId => 'MyNonEmptyString', }, ... ]
                      ,                                               # OPTIONAL
                      ToPort           => 1,                          # OPTIONAL
                      UserIdGroupPairs => [
                        {
                          GroupId                => 'MyNonEmptyString',
                          GroupName              => 'MyNonEmptyString',
                          PeeringStatus          => 'MyNonEmptyString',
                          UserId                 => 'MyNonEmptyString',
                          VpcId                  => 'MyNonEmptyString',
                          VpcPeeringConnectionId => 'MyNonEmptyString',
                        },
                        ...
                      ],                                              # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  OwnerId => 'MyNonEmptyString',
                  VpcId   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Subnet => {
                  AssignIpv6AddressOnCreation => 1,                   # OPTIONAL
                  AvailabilityZone            => 'MyNonEmptyString',
                  AvailabilityZoneId          => 'MyNonEmptyString',
                  AvailableIpAddressCount     => 1,                   # OPTIONAL
                  CidrBlock                   => 'MyNonEmptyString',
                  DefaultForAz                => 1,                   # OPTIONAL
                  Ipv6CidrBlockAssociationSet => [
                    {
                      AssociationId  => 'MyNonEmptyString',
                      CidrBlockState => 'MyNonEmptyString',
                      Ipv6CidrBlock  => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  MapPublicIpOnLaunch => 1,                           # OPTIONAL
                  OwnerId             => 'MyNonEmptyString',
                  State               => 'MyNonEmptyString',
                  SubnetArn           => 'MyNonEmptyString',
                  SubnetId            => 'MyNonEmptyString',
                  VpcId               => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2TransitGateway => {
                  AmazonSideAsn                  => 1,    # OPTIONAL
                  AssociationDefaultRouteTableId => 'MyNonEmptyString',
                  AutoAcceptSharedAttachments    => 'MyNonEmptyString',
                  DefaultRouteTableAssociation   => 'MyNonEmptyString',
                  DefaultRouteTablePropagation   => 'MyNonEmptyString',
                  Description                    => 'MyNonEmptyString',
                  DnsSupport                     => 'MyNonEmptyString',
                  Id                             => 'MyNonEmptyString',
                  MulticastSupport               => 'MyNonEmptyString',
                  PropagationDefaultRouteTableId => 'MyNonEmptyString',
                  TransitGatewayCidrBlocks       => [ 'MyNonEmptyString', ... ]
                  ,                                       # OPTIONAL
                  VpnEcmpSupport => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Volume => {
                  Attachments => [
                    {
                      AttachTime          => 'MyNonEmptyString',
                      DeleteOnTermination => 1,                    # OPTIONAL
                      InstanceId          => 'MyNonEmptyString',
                      Status              => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CreateTime       => 'MyNonEmptyString',
                  DeviceName       => 'MyNonEmptyString',
                  Encrypted        => 1,                    # OPTIONAL
                  KmsKeyId         => 'MyNonEmptyString',
                  Size             => 1,                    # OPTIONAL
                  SnapshotId       => 'MyNonEmptyString',
                  Status           => 'MyNonEmptyString',
                  VolumeId         => 'MyNonEmptyString',
                  VolumeScanStatus => 'MyNonEmptyString',
                  VolumeType       => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2Vpc => {
                  CidrBlockAssociationSet => [
                    {
                      AssociationId  => 'MyNonEmptyString',
                      CidrBlock      => 'MyNonEmptyString',
                      CidrBlockState => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  DhcpOptionsId               => 'MyNonEmptyString',
                  Ipv6CidrBlockAssociationSet => [
                    {
                      AssociationId  => 'MyNonEmptyString',
                      CidrBlockState => 'MyNonEmptyString',
                      Ipv6CidrBlock  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  State => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2VpcEndpointService => {
                  AcceptanceRequired => 1,         # OPTIONAL
                  AvailabilityZones  => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  BaseEndpointDnsNames => [ 'MyNonEmptyString', ... ]
                  ,                                                   # OPTIONAL
                  GatewayLoadBalancerArns => [ 'MyNonEmptyString', ... ]
                  ,                                                   # OPTIONAL
                  ManagesVpcEndpoints     => 1,                       # OPTIONAL
                  NetworkLoadBalancerArns => [ 'MyNonEmptyString', ... ]
                  ,                                                   # OPTIONAL
                  PrivateDnsName => 'MyNonEmptyString',
                  ServiceId      => 'MyNonEmptyString',
                  ServiceName    => 'MyNonEmptyString',
                  ServiceState   => 'MyNonEmptyString',
                  ServiceType    =>
                    [ { ServiceType => 'MyNonEmptyString', }, ... ],  # OPTIONAL
                },    # OPTIONAL
                AwsEc2VpcPeeringConnection => {
                  AccepterVpcInfo => {
                    CidrBlock    => 'MyNonEmptyString',
                    CidrBlockSet =>
                      [ { CidrBlock => 'MyNonEmptyString', }, ... ],  # OPTIONAL
                    Ipv6CidrBlockSet =>
                      [ { Ipv6CidrBlock => 'MyNonEmptyString', }, ... ]
                    ,                                                 # OPTIONAL
                    OwnerId        => 'MyNonEmptyString',
                    PeeringOptions => {
                      AllowDnsResolutionFromRemoteVpc => 1,           # OPTIONAL
                      AllowEgressFromLocalClassicLinkToRemoteVpc =>
                        1,                                            # OPTIONAL
                      AllowEgressFromLocalVpcToRemoteClassicLink =>
                        1,                                            # OPTIONAL
                    },    # OPTIONAL
                    Region => 'MyNonEmptyString',
                    VpcId  => 'MyNonEmptyString',
                  },    # OPTIONAL
                  ExpirationTime   => 'MyNonEmptyString',
                  RequesterVpcInfo => {
                    CidrBlock    => 'MyNonEmptyString',
                    CidrBlockSet =>
                      [ { CidrBlock => 'MyNonEmptyString', }, ... ],  # OPTIONAL
                    Ipv6CidrBlockSet =>
                      [ { Ipv6CidrBlock => 'MyNonEmptyString', }, ... ]
                    ,                                                 # OPTIONAL
                    OwnerId        => 'MyNonEmptyString',
                    PeeringOptions => {
                      AllowDnsResolutionFromRemoteVpc => 1,           # OPTIONAL
                      AllowEgressFromLocalClassicLinkToRemoteVpc =>
                        1,                                            # OPTIONAL
                      AllowEgressFromLocalVpcToRemoteClassicLink =>
                        1,                                            # OPTIONAL
                    },    # OPTIONAL
                    Region => 'MyNonEmptyString',
                    VpcId  => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Status => {
                    Code    => 'MyNonEmptyString',
                    Message => 'MyNonEmptyString',
                  },    # OPTIONAL
                  VpcPeeringConnectionId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEc2VpnConnection => {
                  Category                     => 'MyNonEmptyString',
                  CustomerGatewayConfiguration => 'MyNonEmptyString',
                  CustomerGatewayId            => 'MyNonEmptyString',
                  Options                      => {
                    StaticRoutesOnly => 1,    # OPTIONAL
                    TunnelOptions    => [
                      {
                        DpdTimeoutSeconds => 1,    # OPTIONAL
                        IkeVersions => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                        OutsideIpAddress     => 'MyNonEmptyString',
                        Phase1DhGroupNumbers => [
                          1, ...                                      # OPTIONAL
                        ],    # OPTIONAL
                        Phase1EncryptionAlgorithms =>
                          [ 'MyNonEmptyString', ... ],    # OPTIONAL
                        Phase1IntegrityAlgorithms =>
                          [ 'MyNonEmptyString', ... ],    # OPTIONAL
                        Phase1LifetimeSeconds => 1,       # OPTIONAL
                        Phase2DhGroupNumbers  => [
                          1, ...                          # OPTIONAL
                        ],    # OPTIONAL
                        Phase2EncryptionAlgorithms =>
                          [ 'MyNonEmptyString', ... ],    # OPTIONAL
                        Phase2IntegrityAlgorithms =>
                          [ 'MyNonEmptyString', ... ],    # OPTIONAL
                        Phase2LifetimeSeconds  => 1,                  # OPTIONAL
                        PreSharedKey           => 'MyNonEmptyString',
                        RekeyFuzzPercentage    => 1,                  # OPTIONAL
                        RekeyMarginTimeSeconds => 1,                  # OPTIONAL
                        ReplayWindowSize       => 1,                  # OPTIONAL
                        TunnelInsideCidr       => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  Routes => [
                    {
                      DestinationCidrBlock => 'MyNonEmptyString',
                      State                => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  State            => 'MyNonEmptyString',
                  TransitGatewayId => 'MyNonEmptyString',
                  Type             => 'MyNonEmptyString',
                  VgwTelemetry     => [
                    {
                      AcceptedRouteCount => 1,                    # OPTIONAL
                      CertificateArn     => 'MyNonEmptyString',
                      LastStatusChange   => 'MyNonEmptyString',
                      OutsideIpAddress   => 'MyNonEmptyString',
                      Status             => 'MyNonEmptyString',
                      StatusMessage      => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  VpnConnectionId => 'MyNonEmptyString',
                  VpnGatewayId    => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEcrContainerImage => {
                  Architecture     => 'MyNonEmptyString',
                  ImageDigest      => 'MyNonEmptyString',
                  ImagePublishedAt => 'MyNonEmptyString',
                  ImageTags        => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  RegistryId       => 'MyNonEmptyString',
                  RepositoryName   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEcrRepository => {
                  Arn                        => 'MyNonEmptyString',
                  ImageScanningConfiguration => {
                    ScanOnPush => 1,    # OPTIONAL
                  },    # OPTIONAL
                  ImageTagMutability => 'MyNonEmptyString',
                  LifecyclePolicy    => {
                    LifecyclePolicyText => 'MyNonEmptyString',
                    RegistryId          => 'MyNonEmptyString',
                  },    # OPTIONAL
                  RepositoryName       => 'MyNonEmptyString',
                  RepositoryPolicyText => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEcsCluster => {
                  ActiveServicesCount => 1,                           # OPTIONAL
                  CapacityProviders   => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  ClusterArn          => 'MyNonEmptyString',
                  ClusterName         => 'MyNonEmptyString',
                  ClusterSettings     => [
                    {
                      Name  => 'MyNonEmptyString',
                      Value => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  Configuration => {
                    ExecuteCommandConfiguration => {
                      KmsKeyId         => 'MyNonEmptyString',
                      LogConfiguration => {
                        CloudWatchEncryptionEnabled => 1,    # OPTIONAL
                        CloudWatchLogGroupName => 'MyNonEmptyString',
                        S3BucketName           => 'MyNonEmptyString',
                        S3EncryptionEnabled    => 1,                  # OPTIONAL
                        S3KeyPrefix            => 'MyNonEmptyString',
                      },    # OPTIONAL
                      Logging => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                  DefaultCapacityProviderStrategy => [
                    {
                      Base             => 1,                    # OPTIONAL
                      CapacityProvider => 'MyNonEmptyString',
                      Weight           => 1,                    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  RegisteredContainerInstancesCount => 1,    # OPTIONAL
                  RunningTasksCount                 => 1,    # OPTIONAL
                  Status                            => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEcsContainer => {
                  Image       => 'MyNonEmptyString',
                  MountPoints => [
                    {
                      ContainerPath => 'MyNonEmptyString',
                      SourceVolume  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  Name       => 'MyNonEmptyString',
                  Privileged => 1,                    # OPTIONAL
                },    # OPTIONAL
                AwsEcsService => {
                  CapacityProviderStrategy => [
                    {
                      Base             => 1,                    # OPTIONAL
                      CapacityProvider => 'MyNonEmptyString',
                      Weight           => 1,                    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  Cluster                 => 'MyNonEmptyString',
                  DeploymentConfiguration => {
                    DeploymentCircuitBreaker => {
                      Enable   => 1,    # OPTIONAL
                      Rollback => 1,    # OPTIONAL
                    },    # OPTIONAL
                    MaximumPercent        => 1,    # OPTIONAL
                    MinimumHealthyPercent => 1,    # OPTIONAL
                  },    # OPTIONAL
                  DeploymentController => { Type => 'MyNonEmptyString', }
                  ,     # OPTIONAL
                  DesiredCount                  => 1,                 # OPTIONAL
                  EnableEcsManagedTags          => 1,                 # OPTIONAL
                  EnableExecuteCommand          => 1,                 # OPTIONAL
                  HealthCheckGracePeriodSeconds => 1,                 # OPTIONAL
                  LaunchType                    => 'MyNonEmptyString',
                  LoadBalancers                 => [
                    {
                      ContainerName    => 'MyNonEmptyString',
                      ContainerPort    => 1,                    # OPTIONAL
                      LoadBalancerName => 'MyNonEmptyString',
                      TargetGroupArn   => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  Name                 => 'MyNonEmptyString',
                  NetworkConfiguration => {
                    AwsVpcConfiguration => {
                      AssignPublicIp => 'MyNonEmptyString',
                      SecurityGroups => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                      Subnets        => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  PlacementConstraints => [
                    {
                      Expression => 'MyNonEmptyString',
                      Type       => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  PlacementStrategies => [
                    {
                      Field => 'MyNonEmptyString',
                      Type  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  PlatformVersion    => 'MyNonEmptyString',
                  PropagateTags      => 'MyNonEmptyString',
                  Role               => 'MyNonEmptyString',
                  SchedulingStrategy => 'MyNonEmptyString',
                  ServiceArn         => 'MyNonEmptyString',
                  ServiceName        => 'MyNonEmptyString',
                  ServiceRegistries  => [
                    {
                      ContainerName => 'MyNonEmptyString',
                      ContainerPort => 1,                    # OPTIONAL
                      Port          => 1,                    # OPTIONAL
                      RegistryArn   => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  TaskDefinition => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEcsTask => {
                  ClusterArn => 'MyNonEmptyString',
                  Containers => [
                    {
                      Image       => 'MyNonEmptyString',
                      MountPoints => [
                        {
                          ContainerPath => 'MyNonEmptyString',
                          SourceVolume  => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      Name       => 'MyNonEmptyString',
                      Privileged => 1,                    # OPTIONAL
                    },
                    ...                                   # OPTIONAL
                  ],    # OPTIONAL
                  CreatedAt         => 'MyNonEmptyString',
                  Group             => 'MyNonEmptyString',
                  StartedAt         => 'MyNonEmptyString',
                  StartedBy         => 'MyNonEmptyString',
                  TaskDefinitionArn => 'MyNonEmptyString',
                  Version           => 'MyNonEmptyString',
                  Volumes           => [
                    {
                      Host => { SourcePath => 'MyNonEmptyString', },  # OPTIONAL
                      Name => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
                AwsEcsTaskDefinition => {
                  ContainerDefinitions => [
                    {
                      Command   => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                      Cpu       => 1,                              # OPTIONAL
                      DependsOn => [
                        {
                          Condition     => 'MyNonEmptyString',
                          ContainerName => 'MyNonEmptyString',
                        },
                        ...
                      ],                                           # OPTIONAL
                      DisableNetworking => 1,                         # OPTIONAL
                      DnsSearchDomains  => [ 'MyNonEmptyString', ... ]
                      ,                                               # OPTIONAL
                      DnsServers   => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                      DockerLabels =>
                        { 'MyNonEmptyString' => 'MyNonEmptyString', }
                      ,                                               # OPTIONAL
                      DockerSecurityOptions => [ 'MyNonEmptyString', ... ]
                      ,                                               # OPTIONAL
                      EntryPoint  => [ 'MyNonEmptyString', ... ],     # OPTIONAL
                      Environment => [
                        {
                          Name  => 'MyNonEmptyString',
                          Value => 'MyNonEmptyString',
                        },
                        ...
                      ],                                              # OPTIONAL
                      EnvironmentFiles => [
                        {
                          Type  => 'MyNonEmptyString',
                          Value => 'MyNonEmptyString',
                        },
                        ...
                      ],                                              # OPTIONAL
                      Essential  => 1,                                # OPTIONAL
                      ExtraHosts => [
                        {
                          Hostname  => 'MyNonEmptyString',
                          IpAddress => 'MyNonEmptyString',
                        },
                        ...
                      ],                                              # OPTIONAL
                      FirelensConfiguration => {
                        Options => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                        ,                                             # OPTIONAL
                        Type => 'MyNonEmptyString',
                      },    # OPTIONAL
                      HealthCheck => {
                        Command     => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                        Interval    => 1,                             # OPTIONAL
                        Retries     => 1,                             # OPTIONAL
                        StartPeriod => 1,                             # OPTIONAL
                        Timeout     => 1,                             # OPTIONAL
                      },    # OPTIONAL
                      Hostname        => 'MyNonEmptyString',
                      Image           => 'MyNonEmptyString',
                      Interactive     => 1,                           # OPTIONAL
                      Links           => [ 'MyNonEmptyString', ... ], # OPTIONAL
                      LinuxParameters => {
                        Capabilities => {
                          Add  => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                          Drop => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                        },    # OPTIONAL
                        Devices => [
                          {
                            ContainerPath => 'MyNonEmptyString',
                            HostPath      => 'MyNonEmptyString',
                            Permissions   => [ 'MyNonEmptyString', ... ]
                            ,    # OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                        InitProcessEnabled => 1,    # OPTIONAL
                        MaxSwap            => 1,    # OPTIONAL
                        SharedMemorySize   => 1,    # OPTIONAL
                        Swappiness         => 1,    # OPTIONAL
                        Tmpfs              => [
                          {
                            ContainerPath => 'MyNonEmptyString',
                            MountOptions  => [ 'MyNonEmptyString', ... ]
                            ,             # OPTIONAL
                            Size => 1,    # OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                      },    # OPTIONAL
                      LogConfiguration => {
                        LogDriver => 'MyNonEmptyString',
                        Options => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                        ,    # OPTIONAL
                        SecretOptions => [
                          {
                            Name      => 'MyNonEmptyString',
                            ValueFrom => 'MyNonEmptyString',
                          },
                          ...
                        ],    # OPTIONAL
                      },    # OPTIONAL
                      Memory            => 1,    # OPTIONAL
                      MemoryReservation => 1,    # OPTIONAL
                      MountPoints       => [
                        {
                          ContainerPath => 'MyNonEmptyString',
                          ReadOnly      => 1,                    # OPTIONAL
                          SourceVolume  => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      Name         => 'MyNonEmptyString',
                      PortMappings => [
                        {
                          ContainerPort => 1,                    # OPTIONAL
                          HostPort      => 1,                    # OPTIONAL
                          Protocol      => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      Privileged             => 1,    # OPTIONAL
                      PseudoTerminal         => 1,    # OPTIONAL
                      ReadonlyRootFilesystem => 1,    # OPTIONAL
                      RepositoryCredentials  =>
                        { CredentialsParameter => 'MyNonEmptyString', }
                      ,                               # OPTIONAL
                      ResourceRequirements => [
                        {
                          Type  => 'MyNonEmptyString',
                          Value => 'MyNonEmptyString',
                        },
                        ...
                      ],                              # OPTIONAL
                      Secrets => [
                        {
                          Name      => 'MyNonEmptyString',
                          ValueFrom => 'MyNonEmptyString',
                        },
                        ...
                      ],                              # OPTIONAL
                      StartTimeout   => 1,            # OPTIONAL
                      StopTimeout    => 1,            # OPTIONAL
                      SystemControls => [
                        {
                          Namespace => 'MyNonEmptyString',
                          Value     => 'MyNonEmptyString',
                        },
                        ...
                      ],                              # OPTIONAL
                      Ulimits => [
                        {
                          HardLimit => 1,                    # OPTIONAL
                          Name      => 'MyNonEmptyString',
                          SoftLimit => 1,                    # OPTIONAL
                        },
                        ...
                      ],    # OPTIONAL
                      User        => 'MyNonEmptyString',
                      VolumesFrom => [
                        {
                          ReadOnly        => 1,                    # OPTIONAL
                          SourceContainer => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      WorkingDirectory => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  Cpu                   => 'MyNonEmptyString',
                  ExecutionRoleArn      => 'MyNonEmptyString',
                  Family                => 'MyNonEmptyString',
                  InferenceAccelerators => [
                    {
                      DeviceName => 'MyNonEmptyString',
                      DeviceType => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  IpcMode              => 'MyNonEmptyString',
                  Memory               => 'MyNonEmptyString',
                  NetworkMode          => 'MyNonEmptyString',
                  PidMode              => 'MyNonEmptyString',
                  PlacementConstraints => [
                    {
                      Expression => 'MyNonEmptyString',
                      Type       => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ProxyConfiguration => {
                    ContainerName                => 'MyNonEmptyString',
                    ProxyConfigurationProperties => [
                      {
                        Name  => 'MyNonEmptyString',
                        Value => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    Type => 'MyNonEmptyString',
                  },    # OPTIONAL
                  RequiresCompatibilities => [ 'MyNonEmptyString', ... ]
                  ,     # OPTIONAL
                  Status      => 'MyNonEmptyString',
                  TaskRoleArn => 'MyNonEmptyString',
                  Volumes     => [
                    {
                      DockerVolumeConfiguration => {
                        Autoprovision => 1,                    # OPTIONAL
                        Driver        => 'MyNonEmptyString',
                        DriverOpts    =>
                          { 'MyNonEmptyString' => 'MyNonEmptyString', }
                        ,                                      # OPTIONAL
                        Labels => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                        ,                                      # OPTIONAL
                        Scope => 'MyNonEmptyString',
                      },    # OPTIONAL
                      EfsVolumeConfiguration => {
                        AuthorizationConfig => {
                          AccessPointId => 'MyNonEmptyString',
                          Iam           => 'MyNonEmptyString',
                        },    # OPTIONAL
                        FilesystemId          => 'MyNonEmptyString',
                        RootDirectory         => 'MyNonEmptyString',
                        TransitEncryption     => 'MyNonEmptyString',
                        TransitEncryptionPort => 1,                   # OPTIONAL
                      },    # OPTIONAL
                      Host => { SourcePath => 'MyNonEmptyString', },  # OPTIONAL
                      Name => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
                AwsEfsAccessPoint => {
                  AccessPointId => 'MyNonEmptyString',
                  Arn           => 'MyNonEmptyString',
                  ClientToken   => 'MyNonEmptyString',
                  FileSystemId  => 'MyNonEmptyString',
                  PosixUser     => {
                    Gid           => 'MyNonEmptyString',
                    SecondaryGids => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                    Uid           => 'MyNonEmptyString',
                  },    # OPTIONAL
                  RootDirectory => {
                    CreationInfo => {
                      OwnerGid    => 'MyNonEmptyString',
                      OwnerUid    => 'MyNonEmptyString',
                      Permissions => 'MyNonEmptyString',
                    },    # OPTIONAL
                    Path => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsEksCluster => {
                  Arn                      => 'MyNonEmptyString',
                  CertificateAuthorityData => 'MyNonEmptyString',
                  ClusterStatus            => 'MyNonEmptyString',
                  Endpoint                 => 'MyNonEmptyString',
                  Logging                  => {
                    ClusterLogging => [
                      {
                        Enabled => 1,                              # OPTIONAL
                        Types   => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  Name               => 'MyNonEmptyString',
                  ResourcesVpcConfig => {
                    EndpointPublicAccess => 1,    # OPTIONAL
                    SecurityGroupIds => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    SubnetIds        => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  },    # OPTIONAL
                  RoleArn => 'MyNonEmptyString',
                  Version => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsElasticBeanstalkEnvironment => {
                  ApplicationName  => 'MyNonEmptyString',
                  Cname            => 'MyNonEmptyString',
                  DateCreated      => 'MyNonEmptyString',
                  DateUpdated      => 'MyNonEmptyString',
                  Description      => 'MyNonEmptyString',
                  EndpointUrl      => 'MyNonEmptyString',
                  EnvironmentArn   => 'MyNonEmptyString',
                  EnvironmentId    => 'MyNonEmptyString',
                  EnvironmentLinks => [
                    {
                      EnvironmentName => 'MyNonEmptyString',
                      LinkName        => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  EnvironmentName => 'MyNonEmptyString',
                  OptionSettings  => [
                    {
                      Namespace    => 'MyNonEmptyString',
                      OptionName   => 'MyNonEmptyString',
                      ResourceName => 'MyNonEmptyString',
                      Value        => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  PlatformArn       => 'MyNonEmptyString',
                  SolutionStackName => 'MyNonEmptyString',
                  Status            => 'MyNonEmptyString',
                  Tier              => {
                    Name    => 'MyNonEmptyString',
                    Type    => 'MyNonEmptyString',
                    Version => 'MyNonEmptyString',
                  },    # OPTIONAL
                  VersionLabel => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsElasticsearchDomain => {
                  AccessPolicies        => 'MyNonEmptyString',
                  DomainEndpointOptions => {
                    EnforceHTTPS      => 1,                    # OPTIONAL
                    TLSSecurityPolicy => 'MyNonEmptyString',
                  },    # OPTIONAL
                  DomainId                   => 'MyNonEmptyString',
                  DomainName                 => 'MyNonEmptyString',
                  ElasticsearchClusterConfig => {
                    DedicatedMasterCount   => 1,                    # OPTIONAL
                    DedicatedMasterEnabled => 1,                    # OPTIONAL
                    DedicatedMasterType    => 'MyNonEmptyString',
                    InstanceCount          => 1,                    # OPTIONAL
                    InstanceType           => 'MyNonEmptyString',
                    ZoneAwarenessConfig    => {
                      AvailabilityZoneCount => 1,                   # OPTIONAL
                    },    # OPTIONAL
                    ZoneAwarenessEnabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                  ElasticsearchVersion    => 'MyNonEmptyString',
                  EncryptionAtRestOptions => {
                    Enabled  => 1,                    # OPTIONAL
                    KmsKeyId => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Endpoint  => 'MyNonEmptyString',
                  Endpoints => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                  ,     # OPTIONAL
                  LogPublishingOptions => {
                    AuditLogs => {
                      CloudWatchLogsLogGroupArn => 'MyNonEmptyString',
                      Enabled                   => 1,                 # OPTIONAL
                    },    # OPTIONAL
                    IndexSlowLogs => {
                      CloudWatchLogsLogGroupArn => 'MyNonEmptyString',
                      Enabled                   => 1,                 # OPTIONAL
                    },    # OPTIONAL
                    SearchSlowLogs => {
                      CloudWatchLogsLogGroupArn => 'MyNonEmptyString',
                      Enabled                   => 1,                 # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  NodeToNodeEncryptionOptions => {
                    Enabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                  ServiceSoftwareOptions => {
                    AutomatedUpdateDate => 'MyNonEmptyString',
                    Cancellable         => 1,                    # OPTIONAL
                    CurrentVersion      => 'MyNonEmptyString',
                    Description         => 'MyNonEmptyString',
                    NewVersion          => 'MyNonEmptyString',
                    UpdateAvailable     => 1,                    # OPTIONAL
                    UpdateStatus        => 'MyNonEmptyString',
                  },    # OPTIONAL
                  VPCOptions => {
                    AvailabilityZones => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    SecurityGroupIds  => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    SubnetIds         => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    VPCId             => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsElbLoadBalancer => {
                  AvailabilityZones => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                  BackendServerDescriptions => [
                    {
                      InstancePort => 1,                              # OPTIONAL
                      PolicyNames  => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  CanonicalHostedZoneName   => 'MyNonEmptyString',
                  CanonicalHostedZoneNameID => 'MyNonEmptyString',
                  CreatedTime               => 'MyNonEmptyString',
                  DnsName                   => 'MyNonEmptyString',
                  HealthCheck               => {
                    HealthyThreshold   => 1,                    # OPTIONAL
                    Interval           => 1,                    # OPTIONAL
                    Target             => 'MyNonEmptyString',
                    Timeout            => 1,                    # OPTIONAL
                    UnhealthyThreshold => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  Instances => [ { InstanceId => 'MyNonEmptyString', }, ... ]
                  ,     # OPTIONAL
                  ListenerDescriptions => [
                    {
                      Listener => {
                        InstancePort     => 1,                    # OPTIONAL
                        InstanceProtocol => 'MyNonEmptyString',
                        LoadBalancerPort => 1,                    # OPTIONAL
                        Protocol         => 'MyNonEmptyString',
                        SslCertificateId => 'MyNonEmptyString',
                      },    # OPTIONAL
                      PolicyNames => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  LoadBalancerAttributes => {
                    AccessLog => {
                      EmitInterval   => 1,                    # OPTIONAL
                      Enabled        => 1,                    # OPTIONAL
                      S3BucketName   => 'MyNonEmptyString',
                      S3BucketPrefix => 'MyNonEmptyString',
                    },    # OPTIONAL
                    AdditionalAttributes => [
                      {
                        Key   => 'MyNonEmptyString',
                        Value => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    ConnectionDraining => {
                      Enabled => 1,    # OPTIONAL
                      Timeout => 1,    # OPTIONAL
                    },    # OPTIONAL
                    ConnectionSettings => {
                      IdleTimeout => 1,    # OPTIONAL
                    },    # OPTIONAL
                    CrossZoneLoadBalancing => {
                      Enabled => 1,    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  LoadBalancerName => 'MyNonEmptyString',
                  Policies         => {
                    AppCookieStickinessPolicies => [
                      {
                        CookieName => 'MyNonEmptyString',
                        PolicyName => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    LbCookieStickinessPolicies => [
                      {
                        CookieExpirationPeriod => 1,                  # OPTIONAL
                        PolicyName             => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    OtherPolicies => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  },    # OPTIONAL
                  Scheme              => 'MyNonEmptyString',
                  SecurityGroups      => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  SourceSecurityGroup => {
                    GroupName  => 'MyNonEmptyString',
                    OwnerAlias => 'MyNonEmptyString',
                  },                                                  # OPTIONAL
                  Subnets => [ 'MyNonEmptyString', ... ],             # OPTIONAL
                  VpcId   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsElbv2LoadBalancer => {
                  AvailabilityZones => [
                    {
                      SubnetId => 'MyNonEmptyString',
                      ZoneName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CanonicalHostedZoneId  => 'MyNonEmptyString',
                  CreatedTime            => 'MyNonEmptyString',
                  DNSName                => 'MyNonEmptyString',
                  IpAddressType          => 'MyNonEmptyString',
                  LoadBalancerAttributes => [
                    {
                      Key   => 'MyNonEmptyString',
                      Value => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  Scheme         => 'MyNonEmptyString',
                  SecurityGroups => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  State          => {
                    Code   => 'MyNonEmptyString',
                    Reason => 'MyNonEmptyString',
                  },                                                # OPTIONAL
                  Type  => 'MyNonEmptyString',
                  VpcId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEventSchemasRegistry => {
                  Description  => 'MyNonEmptyString',
                  RegistryArn  => 'MyNonEmptyString',
                  RegistryName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEventsEndpoint => {
                  Arn         => 'MyNonEmptyString',
                  Description => 'MyNonEmptyString',
                  EndpointId  => 'MyNonEmptyString',
                  EndpointUrl => 'MyNonEmptyString',
                  EventBuses  => [ { EventBusArn => 'MyNonEmptyString', }, ... ]
                  ,    # OPTIONAL
                  Name              => 'MyNonEmptyString',
                  ReplicationConfig => { State => 'MyNonEmptyString', }
                  ,    # OPTIONAL
                  RoleArn       => 'MyNonEmptyString',
                  RoutingConfig => {
                    FailoverConfig => {
                      Primary => { HealthCheck => 'MyNonEmptyString', }
                      ,                                               # OPTIONAL
                      Secondary => { Route => 'MyNonEmptyString', },  # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  State       => 'MyNonEmptyString',
                  StateReason => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsEventsEventbus => {
                  Arn    => 'MyNonEmptyString',
                  Name   => 'MyNonEmptyString',
                  Policy => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsGuardDutyDetector => {
                  DataSources => {
                    CloudTrail => { Status => 'MyNonEmptyString', },  # OPTIONAL
                    DnsLogs    => { Status => 'MyNonEmptyString', },  # OPTIONAL
                    FlowLogs   => { Status => 'MyNonEmptyString', },  # OPTIONAL
                    Kubernetes => {
                      AuditLogs => { Status => 'MyNonEmptyString', }, # OPTIONAL
                    },    # OPTIONAL
                    MalwareProtection => {
                      ScanEc2InstanceWithFindings => {
                        EbsVolumes => {
                          Reason => 'MyNonEmptyString',
                          Status => 'MyNonEmptyString',
                        },    # OPTIONAL
                      },    # OPTIONAL
                      ServiceRole => 'MyNonEmptyString',
                    },    # OPTIONAL
                    S3Logs => { Status => 'MyNonEmptyString', },    # OPTIONAL
                  },    # OPTIONAL
                  Features => [
                    {
                      Name   => 'MyNonEmptyString',
                      Status => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  FindingPublishingFrequency => 'MyNonEmptyString',
                  ServiceRole                => 'MyNonEmptyString',
                  Status                     => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamAccessKey => {
                  AccessKeyId    => 'MyNonEmptyString',
                  AccountId      => 'MyNonEmptyString',
                  CreatedAt      => 'MyNonEmptyString',
                  PrincipalId    => 'MyNonEmptyString',
                  PrincipalName  => 'MyNonEmptyString',
                  PrincipalType  => 'MyNonEmptyString',
                  SessionContext => {
                    Attributes => {
                      CreationDate     => 'MyNonEmptyString',
                      MfaAuthenticated => 1,                    # OPTIONAL
                    },    # OPTIONAL
                    SessionIssuer => {
                      AccountId   => 'MyNonEmptyString',
                      Arn         => 'MyNonEmptyString',
                      PrincipalId => 'MyNonEmptyString',
                      Type        => 'MyNonEmptyString',
                      UserName    => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Status   => 'Active',    # values: Active, Inactive; OPTIONAL
                  UserName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamGroup => {
                  AttachedManagedPolicies => [
                    {
                      PolicyArn  => 'MyNonEmptyString',
                      PolicyName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CreateDate      => 'MyNonEmptyString',
                  GroupId         => 'MyNonEmptyString',
                  GroupName       => 'MyNonEmptyString',
                  GroupPolicyList =>
                    [ { PolicyName => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                  Path => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamPolicy => {
                  AttachmentCount               => 1,                 # OPTIONAL
                  CreateDate                    => 'MyNonEmptyString',
                  DefaultVersionId              => 'MyNonEmptyString',
                  Description                   => 'MyNonEmptyString',
                  IsAttachable                  => 1,                 # OPTIONAL
                  Path                          => 'MyNonEmptyString',
                  PermissionsBoundaryUsageCount => 1,                 # OPTIONAL
                  PolicyId                      => 'MyNonEmptyString',
                  PolicyName                    => 'MyNonEmptyString',
                  PolicyVersionList             => [
                    {
                      CreateDate       => 'MyNonEmptyString',
                      IsDefaultVersion => 1,                    # OPTIONAL
                      VersionId        => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  UpdateDate => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsIamRole => {
                  AssumeRolePolicyDocument =>
                    'MyAwsIamRoleAssumeRolePolicyDocument'
                  ,    # min: 1, max: 131072; OPTIONAL
                  AttachedManagedPolicies => [
                    {
                      PolicyArn  => 'MyNonEmptyString',
                      PolicyName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CreateDate          => 'MyNonEmptyString',
                  InstanceProfileList => [
                    {
                      Arn                 => 'MyNonEmptyString',
                      CreateDate          => 'MyNonEmptyString',
                      InstanceProfileId   => 'MyNonEmptyString',
                      InstanceProfileName => 'MyNonEmptyString',
                      Path                => 'MyNonEmptyString',
                      Roles               => [
                        {
                          Arn                      => 'MyNonEmptyString',
                          AssumeRolePolicyDocument =>
                            'MyAwsIamRoleAssumeRolePolicyDocument'
                          ,    # min: 1, max: 131072; OPTIONAL
                          CreateDate => 'MyNonEmptyString',
                          Path       => 'MyNonEmptyString',
                          RoleId     => 'MyNonEmptyString',
                          RoleName   => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  MaxSessionDuration  => 1,                    # OPTIONAL
                  Path                => 'MyNonEmptyString',
                  PermissionsBoundary => {
                    PermissionsBoundaryArn  => 'MyNonEmptyString',
                    PermissionsBoundaryType => 'MyNonEmptyString',
                  },                                           # OPTIONAL
                  RoleId         => 'MyNonEmptyString',
                  RoleName       => 'MyNonEmptyString',
                  RolePolicyList =>
                    [ { PolicyName => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                },    # OPTIONAL
                AwsIamUser => {
                  AttachedManagedPolicies => [
                    {
                      PolicyArn  => 'MyNonEmptyString',
                      PolicyName => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  CreateDate          => 'MyNonEmptyString',
                  GroupList           => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  Path                => 'MyNonEmptyString',
                  PermissionsBoundary => {
                    PermissionsBoundaryArn  => 'MyNonEmptyString',
                    PermissionsBoundaryType => 'MyNonEmptyString',
                  },                                                  # OPTIONAL
                  UserId         => 'MyNonEmptyString',
                  UserName       => 'MyNonEmptyString',
                  UserPolicyList =>
                    [ { PolicyName => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                },    # OPTIONAL
                AwsKinesisStream => {
                  Arn                  => 'MyNonEmptyString',
                  Name                 => 'MyNonEmptyString',
                  RetentionPeriodHours => 1,                    # OPTIONAL
                  ShardCount           => 1,                    # OPTIONAL
                  StreamEncryption     => {
                    EncryptionType => 'MyNonEmptyString',
                    KeyId          => 'MyNonEmptyString',
                  },                                            # OPTIONAL
                },    # OPTIONAL
                AwsKmsKey => {
                  AWSAccountId      => 'MyNonEmptyString',
                  CreationDate      => 1,                    # OPTIONAL
                  Description       => 'MyNonEmptyString',
                  KeyId             => 'MyNonEmptyString',
                  KeyManager        => 'MyNonEmptyString',
                  KeyRotationStatus => 1,                    # OPTIONAL
                  KeyState          => 'MyNonEmptyString',
                  Origin            => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsLambdaFunction => {
                  Architectures => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  Code          => {
                    S3Bucket        => 'MyNonEmptyString',
                    S3Key           => 'MyNonEmptyString',
                    S3ObjectVersion => 'MyNonEmptyString',
                    ZipFile         => 'MyNonEmptyString',
                  },                                               # OPTIONAL
                  CodeSha256       => 'MyNonEmptyString',
                  DeadLetterConfig => { TargetArn => 'MyNonEmptyString', }
                  ,                                                # OPTIONAL
                  Environment => {
                    Error => {
                      ErrorCode => 'MyNonEmptyString',
                      Message   => 'MyNonEmptyString',
                    },                                             # OPTIONAL
                    Variables => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                    ,                                              # OPTIONAL
                  },    # OPTIONAL
                  FunctionName => 'MyNonEmptyString',
                  Handler      => 'MyNonEmptyString',
                  KmsKeyArn    => 'MyNonEmptyString',
                  LastModified => 'MyNonEmptyString',
                  Layers       => [
                    {
                      Arn      => 'MyNonEmptyString',
                      CodeSize => 1,                    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  MasterArn     => 'MyNonEmptyString',
                  MemorySize    => 1,                                 # OPTIONAL
                  PackageType   => 'MyNonEmptyString',
                  RevisionId    => 'MyNonEmptyString',
                  Role          => 'MyNonEmptyString',
                  Runtime       => 'MyNonEmptyString',
                  Timeout       => 1,                                 # OPTIONAL
                  TracingConfig => { Mode => 'MyNonEmptyString', },   # OPTIONAL
                  Version       => 'MyNonEmptyString',
                  VpcConfig     => {
                    SecurityGroupIds => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    SubnetIds        => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    VpcId            => 'MyNonEmptyString',
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsLambdaLayerVersion => {
                  CompatibleRuntimes => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  CreatedDate        => 'MyNonEmptyString',
                  Version            => 1,                            # OPTIONAL
                },    # OPTIONAL
                AwsMskCluster => {
                  ClusterInfo => {
                    ClientAuthentication => {
                      Sasl => {
                        Iam => {
                          Enabled => 1,    # OPTIONAL
                        },    # OPTIONAL
                        Scram => {
                          Enabled => 1,    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Tls => {
                        CertificateAuthorityArnList =>
                          [ 'MyNonEmptyString', ... ],    # OPTIONAL
                        Enabled => 1,                     # OPTIONAL
                      },    # OPTIONAL
                      Unauthenticated => {
                        Enabled => 1,    # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    ClusterName    => 'MyNonEmptyString',
                    CurrentVersion => 'MyNonEmptyString',
                    EncryptionInfo => {
                      EncryptionAtRest =>
                        { DataVolumeKMSKeyId => 'MyNonEmptyString', }
                      ,    # OPTIONAL
                      EncryptionInTransit => {
                        ClientBroker => 'MyNonEmptyString',
                        InCluster    => 1,                    # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    EnhancedMonitoring  => 'MyNonEmptyString',
                    NumberOfBrokerNodes => 1,                    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsNetworkFirewallFirewall => {
                  DeleteProtection  => 1,                            # OPTIONAL
                  Description       => 'MyNonEmptyString',
                  FirewallArn       => 'MyNonEmptyString',
                  FirewallId        => 'MyNonEmptyString',
                  FirewallName      => 'MyNonEmptyString',
                  FirewallPolicyArn => 'MyNonEmptyString',
                  FirewallPolicyChangeProtection => 1,               # OPTIONAL
                  SubnetChangeProtection         => 1,               # OPTIONAL
                  SubnetMappings                 =>
                    [ { SubnetId => 'MyNonEmptyString', }, ... ],    # OPTIONAL
                  VpcId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsNetworkFirewallFirewallPolicy => {
                  Description    => 'MyNonEmptyString',
                  FirewallPolicy => {
                    StatefulRuleGroupReferences =>
                      [ { ResourceArn => 'MyNonEmptyString', }, ... ]
                    ,    # OPTIONAL
                    StatelessCustomActions => [
                      {
                        ActionDefinition => {
                          PublishMetricAction => {
                            Dimensions =>
                              [ { Value => 'MyNonEmptyString', }, ... ]
                            ,    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        ActionName => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    StatelessDefaultActions => [ 'MyNonEmptyString', ... ]
                    ,                                 # OPTIONAL
                    StatelessFragmentDefaultActions =>
                      [ 'MyNonEmptyString', ... ],    # OPTIONAL
                    StatelessRuleGroupReferences => [
                      {
                        Priority    => 1,                    # OPTIONAL
                        ResourceArn => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  FirewallPolicyArn  => 'MyNonEmptyString',
                  FirewallPolicyId   => 'MyNonEmptyString',
                  FirewallPolicyName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsNetworkFirewallRuleGroup => {
                  Capacity    => 1,                    # OPTIONAL
                  Description => 'MyNonEmptyString',
                  RuleGroup   => {
                    RuleVariables => {
                      IpSets => {
                        Definition => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                      },    # OPTIONAL
                      PortSets => {
                        Definition => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    RulesSource => {
                      RulesSourceList => {
                        GeneratedRulesType => 'MyNonEmptyString',
                        TargetTypes => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                        Targets     => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                      },    # OPTIONAL
                      RulesString   => 'MyNonEmptyString',
                      StatefulRules => [
                        {
                          Action => 'MyNonEmptyString',
                          Header => {
                            Destination     => 'MyNonEmptyString',
                            DestinationPort => 'MyNonEmptyString',
                            Direction       => 'MyNonEmptyString',
                            Protocol        => 'MyNonEmptyString',
                            Source          => 'MyNonEmptyString',
                            SourcePort      => 'MyNonEmptyString',
                          },    # OPTIONAL
                          RuleOptions => [
                            {
                              Keyword  => 'MyNonEmptyString',
                              Settings => [ 'MyNonEmptyString', ... ]
                              ,    # OPTIONAL
                            },
                            ...
                          ],    # OPTIONAL
                        },
                        ...
                      ],    # OPTIONAL
                      StatelessRulesAndCustomActions => {
                        CustomActions => [
                          {
                            ActionDefinition => {
                              PublishMetricAction => {
                                Dimensions =>
                                  [ { Value => 'MyNonEmptyString', }, ... ]
                                ,    # OPTIONAL
                              },    # OPTIONAL
                            },    # OPTIONAL
                            ActionName => 'MyNonEmptyString',
                          },
                          ...
                        ],    # OPTIONAL
                        StatelessRules => [
                          {
                            Priority       => 1,    # OPTIONAL
                            RuleDefinition => {
                              Actions => [ 'MyNonEmptyString', ... ], # OPTIONAL
                              MatchAttributes => {
                                DestinationPorts => [
                                  {
                                    FromPort => 1,    # OPTIONAL
                                    ToPort   => 1,    # OPTIONAL
                                  },
                                  ...
                                ],    # OPTIONAL
                                Destinations => [
                                  { AddressDefinition => 'MyNonEmptyString', },
                                  ...
                                ],    # OPTIONAL
                                Protocols => [
                                  1, ...    # OPTIONAL
                                ],    # OPTIONAL
                                SourcePorts => [
                                  {
                                    FromPort => 1,    # OPTIONAL
                                    ToPort   => 1,    # OPTIONAL
                                  },
                                  ...
                                ],    # OPTIONAL
                                Sources => [
                                  { AddressDefinition => 'MyNonEmptyString', },
                                  ...
                                ],    # OPTIONAL
                                TcpFlags => [
                                  {
                                    Flags => [ 'MyNonEmptyString', ... ]
                                    ,    # OPTIONAL
                                    Masks => [ 'MyNonEmptyString', ... ]
                                    ,    # OPTIONAL
                                  },
                                  ...
                                ],    # OPTIONAL
                              },    # OPTIONAL
                            },    # OPTIONAL
                          },
                          ...
                        ],    # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  RuleGroupArn  => 'MyNonEmptyString',
                  RuleGroupId   => 'MyNonEmptyString',
                  RuleGroupName => 'MyNonEmptyString',
                  Type          => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsOpenSearchServiceDomain => {
                  AccessPolicies          => 'MyNonEmptyString',
                  AdvancedSecurityOptions => {
                    Enabled                     => 1,    # OPTIONAL
                    InternalUserDatabaseEnabled => 1,    # OPTIONAL
                    MasterUserOptions           => {
                      MasterUserArn      => 'MyNonEmptyString',
                      MasterUserName     => 'MyNonEmptyString',
                      MasterUserPassword => 'MyNonEmptyString',
                    },                                   # OPTIONAL
                  },    # OPTIONAL
                  Arn           => 'MyNonEmptyString',
                  ClusterConfig => {
                    DedicatedMasterCount   => 1,                    # OPTIONAL
                    DedicatedMasterEnabled => 1,                    # OPTIONAL
                    DedicatedMasterType    => 'MyNonEmptyString',
                    InstanceCount          => 1,                    # OPTIONAL
                    InstanceType           => 'MyNonEmptyString',
                    WarmCount              => 1,                    # OPTIONAL
                    WarmEnabled            => 1,                    # OPTIONAL
                    WarmType               => 'MyNonEmptyString',
                    ZoneAwarenessConfig    => {
                      AvailabilityZoneCount => 1,                   # OPTIONAL
                    },    # OPTIONAL
                    ZoneAwarenessEnabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                  DomainEndpoint        => 'MyNonEmptyString',
                  DomainEndpointOptions => {
                    CustomEndpoint               => 'MyNonEmptyString',
                    CustomEndpointCertificateArn => 'MyNonEmptyString',
                    CustomEndpointEnabled => 1,                    # OPTIONAL
                    EnforceHTTPS          => 1,                    # OPTIONAL
                    TLSSecurityPolicy     => 'MyNonEmptyString',
                  },    # OPTIONAL
                  DomainEndpoints =>
                    { 'MyNonEmptyString' => 'MyNonEmptyString', },    # OPTIONAL
                  DomainName              => 'MyNonEmptyString',
                  EncryptionAtRestOptions => {
                    Enabled  => 1,                                    # OPTIONAL
                    KmsKeyId => 'MyNonEmptyString',
                  },    # OPTIONAL
                  EngineVersion        => 'MyNonEmptyString',
                  Id                   => 'MyNonEmptyString',
                  LogPublishingOptions => {
                    AuditLogs => {
                      CloudWatchLogsLogGroupArn => 'MyNonEmptyString',
                      Enabled                   => 1,                 # OPTIONAL
                    },    # OPTIONAL
                    IndexSlowLogs => {
                      CloudWatchLogsLogGroupArn => 'MyNonEmptyString',
                      Enabled                   => 1,                 # OPTIONAL
                    },    # OPTIONAL
                    SearchSlowLogs => {
                      CloudWatchLogsLogGroupArn => 'MyNonEmptyString',
                      Enabled                   => 1,                 # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  NodeToNodeEncryptionOptions => {
                    Enabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                  ServiceSoftwareOptions => {
                    AutomatedUpdateDate => 'MyNonEmptyString',
                    Cancellable         => 1,                    # OPTIONAL
                    CurrentVersion      => 'MyNonEmptyString',
                    Description         => 'MyNonEmptyString',
                    NewVersion          => 'MyNonEmptyString',
                    OptionalDeployment  => 1,                    # OPTIONAL
                    UpdateAvailable     => 1,                    # OPTIONAL
                    UpdateStatus        => 'MyNonEmptyString',
                  },    # OPTIONAL
                  VpcOptions => {
                    SecurityGroupIds => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                    SubnetIds        => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsRdsDbCluster => {
                  ActivityStreamStatus => 'MyNonEmptyString',
                  AllocatedStorage     => 1,                    # OPTIONAL
                  AssociatedRoles      => [
                    {
                      RoleArn => 'MyNonEmptyString',
                      Status  => 'MyNonEmptyString',
                    },
                    ...
                  ],                                            # OPTIONAL
                  AutoMinorVersionUpgrade => 1,                 # OPTIONAL
                  AvailabilityZones => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                  BackupRetentionPeriod => 1,                         # OPTIONAL
                  ClusterCreateTime     => 'MyNonEmptyString',
                  CopyTagsToSnapshot    => 1,                         # OPTIONAL
                  CrossAccountClone     => 1,                         # OPTIONAL
                  CustomEndpoints     => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  DatabaseName        => 'MyNonEmptyString',
                  DbClusterIdentifier => 'MyNonEmptyString',
                  DbClusterMembers    => [
                    {
                      DbClusterParameterGroupStatus => 'MyNonEmptyString',
                      DbInstanceIdentifier          => 'MyNonEmptyString',
                      IsClusterWriter               => 1,    # OPTIONAL
                      PromotionTier                 => 1,    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  DbClusterOptionGroupMemberships => [
                    {
                      DbClusterOptionGroupName => 'MyNonEmptyString',
                      Status                   => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  DbClusterParameterGroup => 'MyNonEmptyString',
                  DbClusterResourceId     => 'MyNonEmptyString',
                  DbSubnetGroup           => 'MyNonEmptyString',
                  DeletionProtection      => 1,                    # OPTIONAL
                  DomainMemberships       => [
                    {
                      Domain      => 'MyNonEmptyString',
                      Fqdn        => 'MyNonEmptyString',
                      IamRoleName => 'MyNonEmptyString',
                      Status      => 'MyNonEmptyString',
                    },
                    ...
                  ],                                               # OPTIONAL
                  EnabledCloudWatchLogsExports => [ 'MyNonEmptyString', ... ]
                  ,                                                # OPTIONAL
                  Endpoint            => 'MyNonEmptyString',
                  Engine              => 'MyNonEmptyString',
                  EngineMode          => 'MyNonEmptyString',
                  EngineVersion       => 'MyNonEmptyString',
                  HostedZoneId        => 'MyNonEmptyString',
                  HttpEndpointEnabled => 1,                        # OPTIONAL
                  IamDatabaseAuthenticationEnabled => 1,           # OPTIONAL
                  KmsKeyId                   => 'MyNonEmptyString',
                  MasterUsername             => 'MyNonEmptyString',
                  MultiAz                    => 1,                    # OPTIONAL
                  Port                       => 1,                    # OPTIONAL
                  PreferredBackupWindow      => 'MyNonEmptyString',
                  PreferredMaintenanceWindow => 'MyNonEmptyString',
                  ReadReplicaIdentifiers     => [ 'MyNonEmptyString', ... ]
                  ,                                                   # OPTIONAL
                  ReaderEndpoint    => 'MyNonEmptyString',
                  Status            => 'MyNonEmptyString',
                  StorageEncrypted  => 1,                             # OPTIONAL
                  VpcSecurityGroups => [
                    {
                      Status             => 'MyNonEmptyString',
                      VpcSecurityGroupId => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                },    # OPTIONAL
                AwsRdsDbClusterSnapshot => {
                  AllocatedStorage    => 1,                           # OPTIONAL
                  AvailabilityZones   => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  ClusterCreateTime   => 'MyNonEmptyString',
                  DbClusterIdentifier => 'MyNonEmptyString',
                  DbClusterSnapshotAttributes => [
                    {
                      AttributeName   => 'MyNonEmptyString',
                      AttributeValues => [ 'MyNonEmptyString', ... ], # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  DbClusterSnapshotIdentifier      => 'MyNonEmptyString',
                  Engine                           => 'MyNonEmptyString',
                  EngineVersion                    => 'MyNonEmptyString',
                  IamDatabaseAuthenticationEnabled => 1,      # OPTIONAL
                  KmsKeyId           => 'MyNonEmptyString',
                  LicenseModel       => 'MyNonEmptyString',
                  MasterUsername     => 'MyNonEmptyString',
                  PercentProgress    => 1,                    # OPTIONAL
                  Port               => 1,                    # OPTIONAL
                  SnapshotCreateTime => 'MyNonEmptyString',
                  SnapshotType       => 'MyNonEmptyString',
                  Status             => 'MyNonEmptyString',
                  StorageEncrypted   => 1,                    # OPTIONAL
                  VpcId              => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsRdsDbInstance => {
                  AllocatedStorage => 1,    # OPTIONAL
                  AssociatedRoles  => [
                    {
                      FeatureName => 'MyNonEmptyString',
                      RoleArn     => 'MyNonEmptyString',
                      Status      => 'MyNonEmptyString',
                    },
                    ...
                  ],                        # OPTIONAL
                  AutoMinorVersionUpgrade => 1,                    # OPTIONAL
                  AvailabilityZone        => 'MyNonEmptyString',
                  BackupRetentionPeriod   => 1,                    # OPTIONAL
                  CACertificateIdentifier => 'MyNonEmptyString',
                  CharacterSetName        => 'MyNonEmptyString',
                  CopyTagsToSnapshot      => 1,                    # OPTIONAL
                  DBClusterIdentifier     => 'MyNonEmptyString',
                  DBInstanceClass         => 'MyNonEmptyString',
                  DBInstanceIdentifier    => 'MyNonEmptyString',
                  DBName                  => 'MyNonEmptyString',
                  DbInstancePort          => 1,                    # OPTIONAL
                  DbInstanceStatus        => 'MyNonEmptyString',
                  DbParameterGroups       => [
                    {
                      DbParameterGroupName => 'MyNonEmptyString',
                      ParameterApplyStatus => 'MyNonEmptyString',
                    },
                    ...
                  ],                                               # OPTIONAL
                  DbSecurityGroups => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  DbSubnetGroup    => {
                    DbSubnetGroupArn         => 'MyNonEmptyString',
                    DbSubnetGroupDescription => 'MyNonEmptyString',
                    DbSubnetGroupName        => 'MyNonEmptyString',
                    SubnetGroupStatus        => 'MyNonEmptyString',
                    Subnets                  => [
                      {
                        SubnetAvailabilityZone =>
                          { Name => 'MyNonEmptyString', },    # OPTIONAL
                        SubnetIdentifier => 'MyNonEmptyString',
                        SubnetStatus     => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                    VpcId => 'MyNonEmptyString',
                  },    # OPTIONAL
                  DbiResourceId      => 'MyNonEmptyString',
                  DeletionProtection => 1,                    # OPTIONAL
                  DomainMemberships  => [
                    {
                      Domain      => 'MyNonEmptyString',
                      Fqdn        => 'MyNonEmptyString',
                      IamRoleName => 'MyNonEmptyString',
                      Status      => 'MyNonEmptyString',
                    },
                    ...
                  ],                                          # OPTIONAL
                  EnabledCloudWatchLogsExports => [ 'MyNonEmptyString', ... ]
                  ,                                           # OPTIONAL
                  Endpoint => {
                    Address      => 'MyNonEmptyString',
                    HostedZoneId => 'MyNonEmptyString',
                    Port         => 1,                        # OPTIONAL
                  },    # OPTIONAL
                  Engine                           => 'MyNonEmptyString',
                  EngineVersion                    => 'MyNonEmptyString',
                  EnhancedMonitoringResourceArn    => 'MyNonEmptyString',
                  IAMDatabaseAuthenticationEnabled => 1,        # OPTIONAL
                  InstanceCreateTime   => 'MyNonEmptyString',
                  Iops                 => 1,                    # OPTIONAL
                  KmsKeyId             => 'MyNonEmptyString',
                  LatestRestorableTime => 'MyNonEmptyString',
                  LicenseModel         => 'MyNonEmptyString',
                  ListenerEndpoint     => {
                    Address      => 'MyNonEmptyString',
                    HostedZoneId => 'MyNonEmptyString',
                    Port         => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  MasterUsername         => 'MyNonEmptyString',
                  MaxAllocatedStorage    => 1,                    # OPTIONAL
                  MonitoringInterval     => 1,                    # OPTIONAL
                  MonitoringRoleArn      => 'MyNonEmptyString',
                  MultiAz                => 1,                    # OPTIONAL
                  OptionGroupMemberships => [
                    {
                      OptionGroupName => 'MyNonEmptyString',
                      Status          => 'MyNonEmptyString',
                    },
                    ...
                  ],                                              # OPTIONAL
                  PendingModifiedValues => {
                    AllocatedStorage        => 1,                    # OPTIONAL
                    BackupRetentionPeriod   => 1,                    # OPTIONAL
                    CaCertificateIdentifier => 'MyNonEmptyString',
                    DbInstanceClass         => 'MyNonEmptyString',
                    DbInstanceIdentifier    => 'MyNonEmptyString',
                    DbSubnetGroupName       => 'MyNonEmptyString',
                    EngineVersion           => 'MyNonEmptyString',
                    Iops                    => 1,                    # OPTIONAL
                    LicenseModel            => 'MyNonEmptyString',
                    MasterUserPassword      => 'MyNonEmptyString',
                    MultiAZ                 => 1,                    # OPTIONAL
                    PendingCloudWatchLogsExports => {
                      LogTypesToDisable => [ 'MyNonEmptyString', ... ]
                      ,                                              # OPTIONAL
                      LogTypesToEnable => [ 'MyNonEmptyString', ... ]
                      ,                                              # OPTIONAL
                    },    # OPTIONAL
                    Port              => 1,    # OPTIONAL
                    ProcessorFeatures => [
                      {
                        Name  => 'MyNonEmptyString',
                        Value => 'MyNonEmptyString',
                      },
                      ...
                    ],                         # OPTIONAL
                    StorageType => 'MyNonEmptyString',
                  },    # OPTIONAL
                  PerformanceInsightsEnabled  => 1,                   # OPTIONAL
                  PerformanceInsightsKmsKeyId => 'MyNonEmptyString',
                  PerformanceInsightsRetentionPeriod => 1,            # OPTIONAL
                  PreferredBackupWindow              => 'MyNonEmptyString',
                  PreferredMaintenanceWindow         => 'MyNonEmptyString',
                  ProcessorFeatures                  => [
                    {
                      Name  => 'MyNonEmptyString',
                      Value => 'MyNonEmptyString',
                    },
                    ...
                  ],                                                  # OPTIONAL
                  PromotionTier                   => 1,               # OPTIONAL
                  PubliclyAccessible              => 1,               # OPTIONAL
                  ReadReplicaDBClusterIdentifiers =>
                    [ 'MyNonEmptyString', ... ],                      # OPTIONAL
                  ReadReplicaDBInstanceIdentifiers =>
                    [ 'MyNonEmptyString', ... ],                      # OPTIONAL
                  ReadReplicaSourceDBInstanceIdentifier => 'MyNonEmptyString',
                  SecondaryAvailabilityZone             => 'MyNonEmptyString',
                  StatusInfos                           => [
                    {
                      Message    => 'MyNonEmptyString',
                      Normal     => 1,                    # OPTIONAL
                      Status     => 'MyNonEmptyString',
                      StatusType => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  StorageEncrypted  => 1,                    # OPTIONAL
                  StorageType       => 'MyNonEmptyString',
                  TdeCredentialArn  => 'MyNonEmptyString',
                  Timezone          => 'MyNonEmptyString',
                  VpcSecurityGroups => [
                    {
                      Status             => 'MyNonEmptyString',
                      VpcSecurityGroupId => 'MyNonEmptyString',
                    },
                    ...
                  ],                                         # OPTIONAL
                },    # OPTIONAL
                AwsRdsDbSecurityGroup => {
                  DbSecurityGroupArn         => 'MyNonEmptyString',
                  DbSecurityGroupDescription => 'MyNonEmptyString',
                  DbSecurityGroupName        => 'MyNonEmptyString',
                  Ec2SecurityGroups          => [
                    {
                      Ec2SecurityGroupId      => 'MyNonEmptyString',
                      Ec2SecurityGroupName    => 'MyNonEmptyString',
                      Ec2SecurityGroupOwnerId => 'MyNonEmptyString',
                      Status                  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  IpRanges => [
                    {
                      CidrIp => 'MyNonEmptyString',
                      Status => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  OwnerId => 'MyNonEmptyString',
                  VpcId   => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsRdsDbSnapshot => {
                  AllocatedStorage     => 1,                    # OPTIONAL
                  AvailabilityZone     => 'MyNonEmptyString',
                  DbInstanceIdentifier => 'MyNonEmptyString',
                  DbSnapshotIdentifier => 'MyNonEmptyString',
                  DbiResourceId        => 'MyNonEmptyString',
                  Encrypted            => 1,                    # OPTIONAL
                  Engine               => 'MyNonEmptyString',
                  EngineVersion        => 'MyNonEmptyString',
                  IamDatabaseAuthenticationEnabled => 1,        # OPTIONAL
                  InstanceCreateTime => 'MyNonEmptyString',
                  Iops               => 1,                      # OPTIONAL
                  KmsKeyId           => 'MyNonEmptyString',
                  LicenseModel       => 'MyNonEmptyString',
                  MasterUsername     => 'MyNonEmptyString',
                  OptionGroupName    => 'MyNonEmptyString',
                  PercentProgress    => 1,                      # OPTIONAL
                  Port               => 1,                      # OPTIONAL
                  ProcessorFeatures  => [
                    {
                      Name  => 'MyNonEmptyString',
                      Value => 'MyNonEmptyString',
                    },
                    ...
                  ],                                            # OPTIONAL
                  SnapshotCreateTime         => 'MyNonEmptyString',
                  SnapshotType               => 'MyNonEmptyString',
                  SourceDbSnapshotIdentifier => 'MyNonEmptyString',
                  SourceRegion               => 'MyNonEmptyString',
                  Status                     => 'MyNonEmptyString',
                  StorageType                => 'MyNonEmptyString',
                  TdeCredentialArn           => 'MyNonEmptyString',
                  Timezone                   => 'MyNonEmptyString',
                  VpcId                      => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsRdsEventSubscription => {
                  CustSubscriptionId  => 'MyNonEmptyString',
                  CustomerAwsId       => 'MyNonEmptyString',
                  Enabled             => 1,                           # OPTIONAL
                  EventCategoriesList => [ 'MyNonEmptyString', ... ], # OPTIONAL
                  EventSubscriptionArn => 'MyNonEmptyString',
                  SnsTopicArn          => 'MyNonEmptyString',
                  SourceIdsList => [ 'MyNonEmptyString', ... ],       # OPTIONAL
                  SourceType    => 'MyNonEmptyString',
                  Status        => 'MyNonEmptyString',
                  SubscriptionCreationTime => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsRedshiftCluster => {
                  AllowVersionUpgrade              => 1,    # OPTIONAL
                  AutomatedSnapshotRetentionPeriod => 1,    # OPTIONAL
                  AvailabilityZone                 => 'MyNonEmptyString',
                  ClusterAvailabilityStatus        => 'MyNonEmptyString',
                  ClusterCreateTime                => 'MyNonEmptyString',
                  ClusterIdentifier                => 'MyNonEmptyString',
                  ClusterNodes                     => [
                    {
                      NodeRole         => 'MyNonEmptyString',
                      PrivateIpAddress => 'MyNonEmptyString',
                      PublicIpAddress  => 'MyNonEmptyString',
                    },
                    ...
                  ],                                        # OPTIONAL
                  ClusterParameterGroups => [
                    {
                      ClusterParameterStatusList => [
                        {
                          ParameterApplyErrorDescription => 'MyNonEmptyString',
                          ParameterApplyStatus           => 'MyNonEmptyString',
                          ParameterName                  => 'MyNonEmptyString',
                        },
                        ...
                      ],    # OPTIONAL
                      ParameterApplyStatus => 'MyNonEmptyString',
                      ParameterGroupName   => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ClusterPublicKey      => 'MyNonEmptyString',
                  ClusterRevisionNumber => 'MyNonEmptyString',
                  ClusterSecurityGroups => [
                    {
                      ClusterSecurityGroupName => 'MyNonEmptyString',
                      Status                   => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ClusterSnapshotCopyStatus => {
                    DestinationRegion             => 'MyNonEmptyString',
                    ManualSnapshotRetentionPeriod => 1,    # OPTIONAL
                    RetentionPeriod               => 1,    # OPTIONAL
                    SnapshotCopyGrantName         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  ClusterStatus              => 'MyNonEmptyString',
                  ClusterSubnetGroupName     => 'MyNonEmptyString',
                  ClusterVersion             => 'MyNonEmptyString',
                  DBName                     => 'MyNonEmptyString',
                  DeferredMaintenanceWindows => [
                    {
                      DeferMaintenanceEndTime    => 'MyNonEmptyString',
                      DeferMaintenanceIdentifier => 'MyNonEmptyString',
                      DeferMaintenanceStartTime  => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  ElasticIpStatus => {
                    ElasticIp => 'MyNonEmptyString',
                    Status    => 'MyNonEmptyString',
                  },    # OPTIONAL
                  ElasticResizeNumberOfNodeOptions => 'MyNonEmptyString',
                  Encrypted                        => 1,    # OPTIONAL
                  Endpoint                         => {
                    Address => 'MyNonEmptyString',
                    Port    => 1,                           # OPTIONAL
                  },    # OPTIONAL
                  EnhancedVpcRouting                     => 1,    # OPTIONAL
                  ExpectedNextSnapshotScheduleTime       => 'MyNonEmptyString',
                  ExpectedNextSnapshotScheduleTimeStatus => 'MyNonEmptyString',
                  HsmStatus                              => {
                    HsmClientCertificateIdentifier => 'MyNonEmptyString',
                    HsmConfigurationIdentifier     => 'MyNonEmptyString',
                    Status                         => 'MyNonEmptyString',
                  },                                              # OPTIONAL
                  IamRoles => [
                    {
                      ApplyStatus => 'MyNonEmptyString',
                      IamRoleArn  => 'MyNonEmptyString',
                    },
                    ...
                  ],                                              # OPTIONAL
                  KmsKeyId      => 'MyNonEmptyString',
                  LoggingStatus => {
                    BucketName                 => 'MyNonEmptyString',
                    LastFailureMessage         => 'MyNonEmptyString',
                    LastFailureTime            => 'MyNonEmptyString',
                    LastSuccessfulDeliveryTime => 'MyNonEmptyString',
                    LoggingEnabled             => 1,                  # OPTIONAL
                    S3KeyPrefix                => 'MyNonEmptyString',
                  },    # OPTIONAL
                  MaintenanceTrackName          => 'MyNonEmptyString',
                  ManualSnapshotRetentionPeriod => 1,                 # OPTIONAL
                  MasterUsername                => 'MyNonEmptyString',
                  NextMaintenanceWindowStartTime => 'MyNonEmptyString',
                  NodeType                       => 'MyNonEmptyString',
                  NumberOfNodes  => 1,                                # OPTIONAL
                  PendingActions => [ 'MyNonEmptyString', ... ],      # OPTIONAL
                  PendingModifiedValues => {
                    AutomatedSnapshotRetentionPeriod => 1,            # OPTIONAL
                    ClusterIdentifier    => 'MyNonEmptyString',
                    ClusterType          => 'MyNonEmptyString',
                    ClusterVersion       => 'MyNonEmptyString',
                    EncryptionType       => 'MyNonEmptyString',
                    EnhancedVpcRouting   => 1,                        # OPTIONAL
                    MaintenanceTrackName => 'MyNonEmptyString',
                    MasterUserPassword   => 'MyNonEmptyString',
                    NodeType             => 'MyNonEmptyString',
                    NumberOfNodes        => 1,                        # OPTIONAL
                    PubliclyAccessible   => 1,                        # OPTIONAL
                  },    # OPTIONAL
                  PreferredMaintenanceWindow => 'MyNonEmptyString',
                  PubliclyAccessible         => 1,                    # OPTIONAL
                  ResizeInfo                 => {
                    AllowCancelResize => 1,                           # OPTIONAL
                    ResizeType        => 'MyNonEmptyString',
                  },    # OPTIONAL
                  RestoreStatus => {
                    CurrentRestoreRateInMegaBytesPerSecond => 1,    # OPTIONAL
                    ElapsedTimeInSeconds                   => 1,    # OPTIONAL
                    EstimatedTimeToCompletionInSeconds     => 1,    # OPTIONAL
                    ProgressInMegaBytes                    => 1,    # OPTIONAL
                    SnapshotSizeInMegaBytes                => 1,    # OPTIONAL
                    Status => 'MyNonEmptyString',
                  },    # OPTIONAL
                  SnapshotScheduleIdentifier => 'MyNonEmptyString',
                  SnapshotScheduleState      => 'MyNonEmptyString',
                  VpcId                      => 'MyNonEmptyString',
                  VpcSecurityGroups          => [
                    {
                      Status             => 'MyNonEmptyString',
                      VpcSecurityGroupId => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
                AwsRoute53HostedZone => {
                  HostedZone => {
                    Config => { Comment => 'MyNonEmptyString', },    # OPTIONAL
                    Id     => 'MyNonEmptyString',
                    Name   => 'MyNonEmptyString',
                  },    # OPTIONAL
                  NameServers        => [ 'MyNonEmptyString', ... ],  # OPTIONAL
                  QueryLoggingConfig => {
                    CloudWatchLogsLogGroupArn => {
                      CloudWatchLogsLogGroupArn => 'MyNonEmptyString',
                      HostedZoneId              => 'MyNonEmptyString',
                      Id                        => 'MyNonEmptyString',
                    },                                                # OPTIONAL
                  },    # OPTIONAL
                  Vpcs => [
                    {
                      Id     => 'MyNonEmptyString',
                      Region => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
                AwsS3AccessPoint => {
                  AccessPointArn                 => 'MyNonEmptyString',
                  Alias                          => 'MyNonEmptyString',
                  Bucket                         => 'MyNonEmptyString',
                  BucketAccountId                => 'MyNonEmptyString',
                  Name                           => 'MyNonEmptyString',
                  NetworkOrigin                  => 'MyNonEmptyString',
                  PublicAccessBlockConfiguration => {
                    BlockPublicAcls       => 1,    # OPTIONAL
                    BlockPublicPolicy     => 1,    # OPTIONAL
                    IgnorePublicAcls      => 1,    # OPTIONAL
                    RestrictPublicBuckets => 1,    # OPTIONAL
                  },    # OPTIONAL
                  VpcConfiguration => { VpcId => 'MyNonEmptyString', }
                  ,     # OPTIONAL
                },    # OPTIONAL
                AwsS3AccountPublicAccessBlock => {
                  BlockPublicAcls       => 1,    # OPTIONAL
                  BlockPublicPolicy     => 1,    # OPTIONAL
                  IgnorePublicAcls      => 1,    # OPTIONAL
                  RestrictPublicBuckets => 1,    # OPTIONAL
                },    # OPTIONAL
                AwsS3Bucket => {
                  AccessControlList            => 'MyNonEmptyString',
                  BucketLifecycleConfiguration => {
                    Rules => [
                      {
                        AbortIncompleteMultipartUpload => {
                          DaysAfterInitiation => 1,    # OPTIONAL
                        },    # OPTIONAL
                        ExpirationDate   => 'MyNonEmptyString',
                        ExpirationInDays => 1,                    # OPTIONAL
                        ExpiredObjectDeleteMarker => 1,           # OPTIONAL
                        Filter                    => {
                          Predicate => {
                            Operands => [
                              {
                                Prefix => 'MyNonEmptyString',
                                Tag    => {
                                  Key   => 'MyNonEmptyString',
                                  Value => 'MyNonEmptyString',
                                },    # OPTIONAL
                                Type => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                            Prefix => 'MyNonEmptyString',
                            Tag    => {
                              Key   => 'MyNonEmptyString',
                              Value => 'MyNonEmptyString',
                            },    # OPTIONAL
                            Type => 'MyNonEmptyString',
                          },    # OPTIONAL
                        },    # OPTIONAL
                        ID                                => 'MyNonEmptyString',
                        NoncurrentVersionExpirationInDays => 1,    # OPTIONAL
                        NoncurrentVersionTransitions      => [
                          {
                            Days         => 1,                     # OPTIONAL
                            StorageClass => 'MyNonEmptyString',
                          },
                          ...
                        ],    # OPTIONAL
                        Prefix      => 'MyNonEmptyString',
                        Status      => 'MyNonEmptyString',
                        Transitions => [
                          {
                            Date         => 'MyNonEmptyString',
                            Days         => 1,                    # OPTIONAL
                            StorageClass => 'MyNonEmptyString',
                          },
                          ...
                        ],    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  BucketLoggingConfiguration => {
                    DestinationBucketName => 'MyNonEmptyString',
                    LogFilePrefix         => 'MyNonEmptyString',
                  },    # OPTIONAL
                  BucketNotificationConfiguration => {
                    Configurations => [
                      {
                        Destination => 'MyNonEmptyString',
                        Events      => [ 'MyNonEmptyString', ... ],   # OPTIONAL
                        Filter      => {
                          S3KeyFilter => {
                            FilterRules => [
                              {
                                Name =>
                                  'Prefix',   # values: Prefix, Suffix; OPTIONAL
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        Type => 'MyNonEmptyString',
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  BucketVersioningConfiguration => {
                    IsMfaDeleteEnabled => 1,                    # OPTIONAL
                    Status             => 'MyNonEmptyString',
                  },    # OPTIONAL
                  BucketWebsiteConfiguration => {
                    ErrorDocument         => 'MyNonEmptyString',
                    IndexDocumentSuffix   => 'MyNonEmptyString',
                    RedirectAllRequestsTo => {
                      Hostname => 'MyNonEmptyString',
                      Protocol => 'MyNonEmptyString',
                    },    # OPTIONAL
                    RoutingRules => [
                      {
                        Condition => {
                          HttpErrorCodeReturnedEquals => 'MyNonEmptyString',
                          KeyPrefixEquals             => 'MyNonEmptyString',
                        },    # OPTIONAL
                        Redirect => {
                          Hostname             => 'MyNonEmptyString',
                          HttpRedirectCode     => 'MyNonEmptyString',
                          Protocol             => 'MyNonEmptyString',
                          ReplaceKeyPrefixWith => 'MyNonEmptyString',
                          ReplaceKeyWith       => 'MyNonEmptyString',
                        },    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                  CreatedAt               => 'MyNonEmptyString',
                  Name                    => 'MyNonEmptyString',
                  ObjectLockConfiguration => {
                    ObjectLockEnabled => 'MyNonEmptyString',
                    Rule              => {
                      DefaultRetention => {
                        Days  => 1,                    # OPTIONAL
                        Mode  => 'MyNonEmptyString',
                        Years => 1,                    # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  OwnerAccountId                 => 'MyNonEmptyString',
                  OwnerId                        => 'MyNonEmptyString',
                  OwnerName                      => 'MyNonEmptyString',
                  PublicAccessBlockConfiguration => {
                    BlockPublicAcls       => 1,    # OPTIONAL
                    BlockPublicPolicy     => 1,    # OPTIONAL
                    IgnorePublicAcls      => 1,    # OPTIONAL
                    RestrictPublicBuckets => 1,    # OPTIONAL
                  },    # OPTIONAL
                  ServerSideEncryptionConfiguration => {
                    Rules => [
                      {
                        ApplyServerSideEncryptionByDefault => {
                          KMSMasterKeyID => 'MyNonEmptyString',
                          SSEAlgorithm   => 'MyNonEmptyString',
                        },    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsS3Object => {
                  ContentType          => 'MyNonEmptyString',
                  ETag                 => 'MyNonEmptyString',
                  LastModified         => 'MyNonEmptyString',
                  SSEKMSKeyId          => 'MyNonEmptyString',
                  ServerSideEncryption => 'MyNonEmptyString',
                  VersionId            => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsSageMakerNotebookInstance => {
                  AcceleratorTypes => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  AdditionalCodeRepositories => [ 'MyNonEmptyString', ... ]
                  ,                                                   # OPTIONAL
                  DefaultCodeRepository                => 'MyNonEmptyString',
                  DirectInternetAccess                 => 'MyNonEmptyString',
                  FailureReason                        => 'MyNonEmptyString',
                  InstanceMetadataServiceConfiguration => {
                    MinimumInstanceMetadataServiceVersion => 'MyNonEmptyString',
                  },                                                  # OPTIONAL
                  InstanceType                        => 'MyNonEmptyString',
                  KmsKeyId                            => 'MyNonEmptyString',
                  NetworkInterfaceId                  => 'MyNonEmptyString',
                  NotebookInstanceArn                 => 'MyNonEmptyString',
                  NotebookInstanceLifecycleConfigName => 'MyNonEmptyString',
                  NotebookInstanceName                => 'MyNonEmptyString',
                  NotebookInstanceStatus              => 'MyNonEmptyString',
                  PlatformIdentifier                  => 'MyNonEmptyString',
                  RoleArn                             => 'MyNonEmptyString',
                  RootAccess                          => 'MyNonEmptyString',
                  SecurityGroups => [ 'MyNonEmptyString', ... ],      # OPTIONAL
                  SubnetId       => 'MyNonEmptyString',
                  Url            => 'MyNonEmptyString',
                  VolumeSizeInGB => 1,                                # OPTIONAL
                },    # OPTIONAL
                AwsSecretsManagerSecret => {
                  Deleted           => 1,                    # OPTIONAL
                  Description       => 'MyNonEmptyString',
                  KmsKeyId          => 'MyNonEmptyString',
                  Name              => 'MyNonEmptyString',
                  RotationEnabled   => 1,                    # OPTIONAL
                  RotationLambdaArn => 'MyNonEmptyString',
                  RotationOccurredWithinFrequency => 1,      # OPTIONAL
                  RotationRules                   => {
                    AutomaticallyAfterDays => 1,             # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsSnsTopic => {
                  ApplicationSuccessFeedbackRoleArn => 'MyNonEmptyString',
                  FirehoseFailureFeedbackRoleArn    => 'MyNonEmptyString',
                  FirehoseSuccessFeedbackRoleArn    => 'MyNonEmptyString',
                  HttpFailureFeedbackRoleArn        => 'MyNonEmptyString',
                  HttpSuccessFeedbackRoleArn        => 'MyNonEmptyString',
                  KmsMasterKeyId                    => 'MyNonEmptyString',
                  Owner                             => 'MyNonEmptyString',
                  SqsFailureFeedbackRoleArn         => 'MyNonEmptyString',
                  SqsSuccessFeedbackRoleArn         => 'MyNonEmptyString',
                  Subscription                      => [
                    {
                      Endpoint => 'MyNonEmptyString',
                      Protocol => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  TopicName => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsSqsQueue => {
                  DeadLetterTargetArn          => 'MyNonEmptyString',
                  KmsDataKeyReusePeriodSeconds => 1,                  # OPTIONAL
                  KmsMasterKeyId               => 'MyNonEmptyString',
                  QueueName                    => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsSsmPatchCompliance => {
                  Patch => {
                    ComplianceSummary => {
                      ComplianceType         => 'MyNonEmptyString',
                      CompliantCriticalCount => 1,                    # OPTIONAL
                      CompliantHighCount     => 1,                    # OPTIONAL
                      CompliantInformationalCount => 1,               # OPTIONAL
                      CompliantLowCount           => 1,               # OPTIONAL
                      CompliantMediumCount        => 1,               # OPTIONAL
                      CompliantUnspecifiedCount   => 1,               # OPTIONAL
                      ExecutionType             => 'MyNonEmptyString',
                      NonCompliantCriticalCount => 1,                 # OPTIONAL
                      NonCompliantHighCount     => 1,                 # OPTIONAL
                      NonCompliantInformationalCount => 1,            # OPTIONAL
                      NonCompliantLowCount           => 1,            # OPTIONAL
                      NonCompliantMediumCount        => 1,            # OPTIONAL
                      NonCompliantUnspecifiedCount   => 1,            # OPTIONAL
                      OverallSeverity                => 'MyNonEmptyString',
                      PatchBaselineId                => 'MyNonEmptyString',
                      PatchGroup                     => 'MyNonEmptyString',
                      Status                         => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsStepFunctionStateMachine => {
                  Label                => 'MyNonEmptyString',
                  LoggingConfiguration => {
                    Destinations => [
                      {
                        CloudWatchLogsLogGroup =>
                          { LogGroupArn => 'MyNonEmptyString', },    # OPTIONAL
                      },
                      ...
                    ],    # OPTIONAL
                    IncludeExecutionData => 1,                    # OPTIONAL
                    Level                => 'MyNonEmptyString',
                  },    # OPTIONAL
                  Name                 => 'MyNonEmptyString',
                  RoleArn              => 'MyNonEmptyString',
                  StateMachineArn      => 'MyNonEmptyString',
                  Status               => 'MyNonEmptyString',
                  TracingConfiguration => {
                    Enabled => 1,    # OPTIONAL
                  },    # OPTIONAL
                  Type => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsWafRateBasedRule => {
                  MatchPredicates => [
                    {
                      DataId  => 'MyNonEmptyString',
                      Negated => 1,                    # OPTIONAL
                      Type    => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  MetricName => 'MyNonEmptyString',
                  Name       => 'MyNonEmptyString',
                  RateKey    => 'MyNonEmptyString',
                  RateLimit  => 1,                    # OPTIONAL
                  RuleId     => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsWafRegionalRateBasedRule => {
                  MatchPredicates => [
                    {
                      DataId  => 'MyNonEmptyString',
                      Negated => 1,                    # OPTIONAL
                      Type    => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  MetricName => 'MyNonEmptyString',
                  Name       => 'MyNonEmptyString',
                  RateKey    => 'MyNonEmptyString',
                  RateLimit  => 1,                    # OPTIONAL
                  RuleId     => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsWafRegionalRule => {
                  MetricName    => 'MyNonEmptyString',
                  Name          => 'MyNonEmptyString',
                  PredicateList => [
                    {
                      DataId  => 'MyNonEmptyString',
                      Negated => 1,                    # OPTIONAL
                      Type    => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  RuleId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsWafRegionalRuleGroup => {
                  MetricName  => 'MyNonEmptyString',
                  Name        => 'MyNonEmptyString',
                  RuleGroupId => 'MyNonEmptyString',
                  Rules       => [
                    {
                      Action   => { Type => 'MyNonEmptyString', },    # OPTIONAL
                      Priority => 1,                                  # OPTIONAL
                      RuleId   => 'MyNonEmptyString',
                      Type     => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
                AwsWafRegionalWebAcl => {
                  DefaultAction => 'MyNonEmptyString',
                  MetricName    => 'MyNonEmptyString',
                  Name          => 'MyNonEmptyString',
                  RulesList     => [
                    {
                      Action => { Type => 'MyNonEmptyString', },    # OPTIONAL
                      OverrideAction => { Type => 'MyNonEmptyString', }
                      ,                                             # OPTIONAL
                      Priority => 1,                                # OPTIONAL
                      RuleId   => 'MyNonEmptyString',
                      Type     => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  WebAclId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsWafRule => {
                  MetricName    => 'MyNonEmptyString',
                  Name          => 'MyNonEmptyString',
                  PredicateList => [
                    {
                      DataId  => 'MyNonEmptyString',
                      Negated => 1,                    # OPTIONAL
                      Type    => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  RuleId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsWafRuleGroup => {
                  MetricName  => 'MyNonEmptyString',
                  Name        => 'MyNonEmptyString',
                  RuleGroupId => 'MyNonEmptyString',
                  Rules       => [
                    {
                      Action   => { Type => 'MyNonEmptyString', },    # OPTIONAL
                      Priority => 1,                                  # OPTIONAL
                      RuleId   => 'MyNonEmptyString',
                      Type     => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                },    # OPTIONAL
                AwsWafWebAcl => {
                  DefaultAction => 'MyNonEmptyString',
                  Name          => 'MyNonEmptyString',
                  Rules         => [
                    {
                      Action => { Type => 'MyNonEmptyString', },    # OPTIONAL
                      ExcludedRules =>
                        [ { RuleId => 'MyNonEmptyString', }, ... ],   # OPTIONAL
                      OverrideAction => { Type => 'MyNonEmptyString', }
                      ,                                               # OPTIONAL
                      Priority => 1,                                  # OPTIONAL
                      RuleId   => 'MyNonEmptyString',
                      Type     => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  WebAclId => 'MyNonEmptyString',
                },    # OPTIONAL
                AwsWafv2RuleGroup => {
                  Arn         => 'MyNonEmptyString',
                  Capacity    => 1,                    # OPTIONAL
                  Description => 'MyNonEmptyString',
                  Id          => 'MyNonEmptyString',
                  Name        => 'MyNonEmptyString',
                  Rules       => [
                    {
                      Action => {
                        Allow => {
                          CustomRequestHandling => {
                            InsertHeaders => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        Block => {
                          CustomResponse => {
                            CustomResponseBodyKey => 'MyNonEmptyString',
                            ResponseCode          => 1,    # OPTIONAL
                            ResponseHeaders       => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],                             # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        Captcha => {
                          CustomRequestHandling => {
                            InsertHeaders => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        Count => {
                          CustomRequestHandling => {
                            InsertHeaders => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Name             => 'MyNonEmptyString',
                      OverrideAction   => 'MyNonEmptyString',
                      Priority         => 1,                    # OPTIONAL
                      VisibilityConfig => {
                        CloudWatchMetricsEnabled => 1,          # OPTIONAL
                        MetricName             => 'MyNonEmptyString',
                        SampledRequestsEnabled => 1,                  # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  Scope            => 'MyNonEmptyString',
                  VisibilityConfig => {
                    CloudWatchMetricsEnabled => 1,                    # OPTIONAL
                    MetricName               => 'MyNonEmptyString',
                    SampledRequestsEnabled   => 1,                    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsWafv2WebAcl => {
                  Arn           => 'MyNonEmptyString',
                  Capacity      => 1,                    # OPTIONAL
                  CaptchaConfig => {
                    ImmunityTimeProperty => {
                      ImmunityTime => 1,                 # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  DefaultAction => {
                    Allow => {
                      CustomRequestHandling => {
                        InsertHeaders => [
                          {
                            Name  => 'MyNonEmptyString',
                            Value => 'MyNonEmptyString',
                          },
                          ...
                        ],    # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                    Block => {
                      CustomResponse => {
                        CustomResponseBodyKey => 'MyNonEmptyString',
                        ResponseCode          => 1,                   # OPTIONAL
                        ResponseHeaders       => [
                          {
                            Name  => 'MyNonEmptyString',
                            Value => 'MyNonEmptyString',
                          },
                          ...
                        ],                                            # OPTIONAL
                      },    # OPTIONAL
                    },    # OPTIONAL
                  },    # OPTIONAL
                  Description              => 'MyNonEmptyString',
                  Id                       => 'MyNonEmptyString',
                  ManagedbyFirewallManager => 1,                    # OPTIONAL
                  Name                     => 'MyNonEmptyString',
                  Rules                    => [
                    {
                      Action => {
                        Allow => {
                          CustomRequestHandling => {
                            InsertHeaders => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        Block => {
                          CustomResponse => {
                            CustomResponseBodyKey => 'MyNonEmptyString',
                            ResponseCode          => 1,    # OPTIONAL
                            ResponseHeaders       => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],                             # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        Captcha => {
                          CustomRequestHandling => {
                            InsertHeaders => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                        Count => {
                          CustomRequestHandling => {
                            InsertHeaders => [
                              {
                                Name  => 'MyNonEmptyString',
                                Value => 'MyNonEmptyString',
                              },
                              ...
                            ],    # OPTIONAL
                          },    # OPTIONAL
                        },    # OPTIONAL
                      },    # OPTIONAL
                      Name             => 'MyNonEmptyString',
                      OverrideAction   => 'MyNonEmptyString',
                      Priority         => 1,                    # OPTIONAL
                      VisibilityConfig => {
                        CloudWatchMetricsEnabled => 1,          # OPTIONAL
                        MetricName             => 'MyNonEmptyString',
                        SampledRequestsEnabled => 1,                  # OPTIONAL
                      },    # OPTIONAL
                    },
                    ...
                  ],    # OPTIONAL
                  VisibilityConfig => {
                    CloudWatchMetricsEnabled => 1,                    # OPTIONAL
                    MetricName               => 'MyNonEmptyString',
                    SampledRequestsEnabled   => 1,                    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                AwsXrayEncryptionConfig => {
                  KeyId  => 'MyNonEmptyString',
                  Status => 'MyNonEmptyString',
                  Type   => 'MyNonEmptyString',
                },    # OPTIONAL
                Container => {
                  ContainerRuntime => 'MyNonEmptyString',
                  ImageId          => 'MyNonEmptyString',
                  ImageName        => 'MyNonEmptyString',
                  LaunchedAt       => 'MyNonEmptyString',
                  Name             => 'MyNonEmptyString',
                  Privileged       => 1,                    # OPTIONAL
                  VolumeMounts     => [
                    {
                      MountPath => 'MyNonEmptyString',
                      Name      => 'MyNonEmptyString',
                    },
                    ...
                  ],                                        # OPTIONAL
                },    # OPTIONAL
                Other => { 'MyNonEmptyString' => 'MyNonEmptyString', }
                ,     # OPTIONAL
              },    # OPTIONAL
              Partition    => 'aws', # values: aws, aws-cn, aws-us-gov; OPTIONAL
              Region       => 'MyNonEmptyString',
              ResourceRole => 'MyNonEmptyString',
              Tags => { 'MyNonEmptyString' => 'MyNonEmptyString', },  # OPTIONAL
            },
            ...
          ],
          SchemaVersion => 'MyNonEmptyString',
          Title         => 'MyNonEmptyString',
          UpdatedAt     => 'MyNonEmptyString',
          Action        => {
            ActionType       => 'MyNonEmptyString',
            AwsApiCallAction => {
              AffectedResources =>
                { 'MyNonEmptyString' => 'MyNonEmptyString', },        # OPTIONAL
              Api             => 'MyNonEmptyString',
              CallerType      => 'MyNonEmptyString',
              DomainDetails   => { Domain => 'MyNonEmptyString', },   # OPTIONAL
              FirstSeen       => 'MyNonEmptyString',
              LastSeen        => 'MyNonEmptyString',
              RemoteIpDetails => {
                City    => { CityName => 'MyNonEmptyString', },       # OPTIONAL
                Country => {
                  CountryCode => 'MyNonEmptyString',
                  CountryName => 'MyNonEmptyString',
                },                                                    # OPTIONAL
                GeoLocation => {
                  Lat => 1,                                           # OPTIONAL
                  Lon => 1,                                           # OPTIONAL
                },    # OPTIONAL
                IpAddressV4  => 'MyNonEmptyString',
                Organization => {
                  Asn    => 1,                    # OPTIONAL
                  AsnOrg => 'MyNonEmptyString',
                  Isp    => 'MyNonEmptyString',
                  Org    => 'MyNonEmptyString',
                },    # OPTIONAL
              },    # OPTIONAL
              ServiceName => 'MyNonEmptyString',
            },    # OPTIONAL
            DnsRequestAction => {
              Blocked  => 1,                    # OPTIONAL
              Domain   => 'MyNonEmptyString',
              Protocol => 'MyNonEmptyString',
            },    # OPTIONAL
            NetworkConnectionAction => {
              Blocked             => 1,                    # OPTIONAL
              ConnectionDirection => 'MyNonEmptyString',
              LocalPortDetails    => {
                Port     => 1,                             # OPTIONAL
                PortName => 'MyNonEmptyString',
              },    # OPTIONAL
              Protocol        => 'MyNonEmptyString',
              RemoteIpDetails => {
                City    => { CityName => 'MyNonEmptyString', },    # OPTIONAL
                Country => {
                  CountryCode => 'MyNonEmptyString',
                  CountryName => 'MyNonEmptyString',
                },                                                 # OPTIONAL
                GeoLocation => {
                  Lat => 1,                                        # OPTIONAL
                  Lon => 1,                                        # OPTIONAL
                },    # OPTIONAL
                IpAddressV4  => 'MyNonEmptyString',
                Organization => {
                  Asn    => 1,                    # OPTIONAL
                  AsnOrg => 'MyNonEmptyString',
                  Isp    => 'MyNonEmptyString',
                  Org    => 'MyNonEmptyString',
                },    # OPTIONAL
              },    # OPTIONAL
              RemotePortDetails => {
                Port     => 1,                    # OPTIONAL
                PortName => 'MyNonEmptyString',
              },    # OPTIONAL
            },    # OPTIONAL
            PortProbeAction => {
              Blocked          => 1,    # OPTIONAL
              PortProbeDetails => [
                {
                  LocalIpDetails => { IpAddressV4 => 'MyNonEmptyString', }
                  ,                     # OPTIONAL
                  LocalPortDetails => {
                    Port     => 1,                    # OPTIONAL
                    PortName => 'MyNonEmptyString',
                  },    # OPTIONAL
                  RemoteIpDetails => {
                    City    => { CityName => 'MyNonEmptyString', },   # OPTIONAL
                    Country => {
                      CountryCode => 'MyNonEmptyString',
                      CountryName => 'MyNonEmptyString',
                    },                                                # OPTIONAL
                    GeoLocation => {
                      Lat => 1,                                       # OPTIONAL
                      Lon => 1,                                       # OPTIONAL
                    },    # OPTIONAL
                    IpAddressV4  => 'MyNonEmptyString',
                    Organization => {
                      Asn    => 1,                    # OPTIONAL
                      AsnOrg => 'MyNonEmptyString',
                      Isp    => 'MyNonEmptyString',
                      Org    => 'MyNonEmptyString',
                    },    # OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          AwsAccountName => 'MyNonEmptyString',
          CompanyName    => 'MyNonEmptyString',
          Compliance     => {
            AssociatedStandards =>
              [ { StandardsId => 'MyNonEmptyString', }, ... ],    # OPTIONAL
            RelatedRequirements       => [ 'MyNonEmptyString', ... ], # OPTIONAL
            SecurityControlId         => 'MyNonEmptyString',
            SecurityControlParameters => [
              {
                Name  => 'MyNonEmptyString',
                Value => [ 'MyNonEmptyString', ... ],    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            Status => 'PASSED'
            ,     # values: PASSED, WARNING, FAILED, NOT_AVAILABLE; OPTIONAL
            StatusReasons => [
              {
                ReasonCode  => 'MyNonEmptyString',
                Description => 'MyNonEmptyString',
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          Confidence  => 1,    # OPTIONAL
          Criticality => 1,    # OPTIONAL
          Detection   => {
            Sequence => {
              Actors => [
                {
                  Id      => 'MyNonEmptyString',
                  Session => {
                    CreatedTime => 1,                    # OPTIONAL
                    Issuer      => 'MyNonEmptyString',
                    MfaStatus   =>
                      'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
                    Uid => 'MyNonEmptyString',
                  },    # OPTIONAL
                  User => {
                    Account => {
                      Name => 'MyNonEmptyString',
                      Uid  => 'MyNonEmptyString',
                    },    # OPTIONAL
                    CredentialUid => 'MyNonEmptyString',
                    Name          => 'MyNonEmptyString',
                    Type          => 'MyNonEmptyString',
                    Uid           => 'MyNonEmptyString',
                  },    # OPTIONAL
                },
                ...
              ],    # max: 10; OPTIONAL
              Endpoints => [
                {
                  AutonomousSystem => {
                    Name   => 'MyNonEmptyString',
                    Number => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  Connection => {
                    Direction =>
                      'INBOUND',    # values: INBOUND, OUTBOUND; OPTIONAL
                  },    # OPTIONAL
                  Domain   => 'MyNonEmptyString',
                  Id       => 'MyNonEmptyString',
                  Ip       => 'MyNonEmptyString',
                  Location => {
                    City    => 'MyNonEmptyString',
                    Country => 'MyNonEmptyString',
                    Lat     => 1,                    # OPTIONAL
                    Lon     => 1,                    # OPTIONAL
                  },    # OPTIONAL
                  Port => 1,    # OPTIONAL
                },
                ...
              ],    # max: 10; OPTIONAL
              SequenceIndicators => [
                {
                  Key    => 'MyNonEmptyString',
                  Title  => 'MyNonEmptyString',
                  Type   => 'MyNonEmptyString',
                  Values => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                },
                ...
              ],    # max: 100; OPTIONAL
              Signals => [
                {
                  ActorIds         => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  Count            => 1,                              # OPTIONAL
                  CreatedAt        => 1,                              # OPTIONAL
                  EndpointIds      => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  FirstSeenAt      => 1,                              # OPTIONAL
                  Id               => 'MyNonEmptyString',
                  LastSeenAt       => 1,                              # OPTIONAL
                  Name             => 'MyNonEmptyString',
                  ProductArn       => 'MyNonEmptyString',
                  ResourceIds      => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  Severity         => 1,                              # OPTIONAL
                  SignalIndicators => [
                    {
                      Key    => 'MyNonEmptyString',
                      Title  => 'MyNonEmptyString',
                      Type   => 'MyNonEmptyString',
                      Values => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                    },
                    ...
                  ],    # max: 100; OPTIONAL
                  Title     => 'MyNonEmptyString',
                  Type      => 'MyNonEmptyString',
                  UpdatedAt => 1,                    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 100; OPTIONAL
              Uid => 'MyNonEmptyString',
            },    # OPTIONAL
          },    # OPTIONAL
          FindingProviderFields => {
            Confidence      => 1,    # max: 100; OPTIONAL
            Criticality     => 1,    # max: 100; OPTIONAL
            RelatedFindings => [
              {
                Id         => 'MyNonEmptyString',
                ProductArn => 'MyNonEmptyString',

              },
              ...
            ],                       # OPTIONAL
            Severity => {
              Label => 'INFORMATIONAL'
              ,   # values: INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL; OPTIONAL
              Original => 'MyNonEmptyString',
            },    # OPTIONAL
            Types => [ 'MyNonEmptyString', ... ],    # OPTIONAL
          },    # OPTIONAL
          FirstObservedAt  => 'MyNonEmptyString',
          GeneratorDetails => {
            Description => 'MyNonEmptyString',
            Labels      => [ 'MyNonEmptyString', ... ],    # OPTIONAL
            Name        => 'MyNonEmptyString',
          },    # OPTIONAL
          LastObservedAt => 'MyNonEmptyString',
          Malware        => [
            {
              Name  => 'MyNonEmptyString',
              Path  => 'MyNonEmptyString',
              State => 'OBSERVED'
              ,    # values: OBSERVED, REMOVAL_FAILED, REMOVED; OPTIONAL
              Type => 'ADWARE'
              , # values: ADWARE, BLENDED_THREAT, BOTNET_AGENT, COIN_MINER, EXPLOIT_KIT, KEYLOGGER, MACRO, POTENTIALLY_UNWANTED, SPYWARE, RANSOMWARE, REMOTE_ACCESS, ROOTKIT, TROJAN, VIRUS, WORM; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Network => {
            DestinationDomain => 'MyNonEmptyString',
            DestinationIpV4   => 'MyNonEmptyString',
            DestinationIpV6   => 'MyNonEmptyString',
            DestinationPort   => 1,                  # OPTIONAL
            Direction         => 'IN',               # values: IN, OUT; OPTIONAL
            OpenPortRange     => {
              Begin => 1,                            # OPTIONAL
              End   => 1,                            # OPTIONAL
            },    # OPTIONAL
            Protocol     => 'MyNonEmptyString',
            SourceDomain => 'MyNonEmptyString',
            SourceIpV4   => 'MyNonEmptyString',
            SourceIpV6   => 'MyNonEmptyString',
            SourceMac    => 'MyNonEmptyString',
            SourcePort   => 1,                    # OPTIONAL
          },    # OPTIONAL
          NetworkPath => [
            {
              ComponentId   => 'MyNonEmptyString',
              ComponentType => 'MyNonEmptyString',
              Egress        => {
                Destination => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,    # OPTIONAL
                      End   => 1,    # OPTIONAL
                    },
                    ...              # OPTIONAL
                  ],    # OPTIONAL
                },    # OPTIONAL
                Protocol => 'MyNonEmptyString',
                Source   => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,    # OPTIONAL
                      End   => 1,    # OPTIONAL
                    },
                    ...              # OPTIONAL
                  ],    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Ingress => {
                Destination => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,    # OPTIONAL
                      End   => 1,    # OPTIONAL
                    },
                    ...              # OPTIONAL
                  ],    # OPTIONAL
                },    # OPTIONAL
                Protocol => 'MyNonEmptyString',
                Source   => {
                  Address    => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  PortRanges => [
                    {
                      Begin => 1,    # OPTIONAL
                      End   => 1,    # OPTIONAL
                    },
                    ...              # OPTIONAL
                  ],    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Note => {
            Text      => 'MyNonEmptyString',
            UpdatedAt => 'MyNonEmptyString',
            UpdatedBy => 'MyNonEmptyString',

          },    # OPTIONAL
          PatchSummary => {
            Id                     => 'MyNonEmptyString',
            FailedCount            => 1,                    # OPTIONAL
            InstalledCount         => 1,                    # OPTIONAL
            InstalledOtherCount    => 1,                    # OPTIONAL
            InstalledPendingReboot => 1,                    # OPTIONAL
            InstalledRejectedCount => 1,                    # OPTIONAL
            MissingCount           => 1,                    # OPTIONAL
            Operation              => 'MyNonEmptyString',
            OperationEndTime       => 'MyNonEmptyString',
            OperationStartTime     => 'MyNonEmptyString',
            RebootOption           => 'MyNonEmptyString',
          },    # OPTIONAL
          Process => {
            LaunchedAt   => 'MyNonEmptyString',
            Name         => 'MyNonEmptyString',
            ParentPid    => 1,                    # OPTIONAL
            Path         => 'MyNonEmptyString',
            Pid          => 1,                    # OPTIONAL
            TerminatedAt => 'MyNonEmptyString',
          },    # OPTIONAL
          ProcessedAt   => 'MyNonEmptyString',
          ProductFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,                                 # OPTIONAL
          ProductName => 'MyNonEmptyString',
          RecordState => 'ACTIVE',          # values: ACTIVE, ARCHIVED; OPTIONAL
          Region      => 'MyNonEmptyString',
          RelatedFindings => [
            {
              Id         => 'MyNonEmptyString',
              ProductArn => 'MyNonEmptyString',

            },
            ...
          ],                                # OPTIONAL
          Remediation => {
            Recommendation => {
              Text => 'MyNonEmptyString',
              Url  => 'MyNonEmptyString',
            },                              # OPTIONAL
          },    # OPTIONAL
          Sample   => 1,    # OPTIONAL
          Severity => {
            Label => 'INFORMATIONAL'
            ,    # values: INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL; OPTIONAL
            Normalized => 1,                    # OPTIONAL
            Original   => 'MyNonEmptyString',
            Product    => 1,                    # OPTIONAL
          },    # OPTIONAL
          SourceUrl             => 'MyNonEmptyString',
          ThreatIntelIndicators => [
            {
              Category => 'BACKDOOR'
              , # values: BACKDOOR, CARD_STEALER, COMMAND_AND_CONTROL, DROP_SITE, EXPLOIT_SITE, KEYLOGGER; OPTIONAL
              LastObservedAt => 'MyNonEmptyString',
              Source         => 'MyNonEmptyString',
              SourceUrl      => 'MyNonEmptyString',
              Type           => 'DOMAIN'
              , # values: DOMAIN, EMAIL_ADDRESS, HASH_MD5, HASH_SHA1, HASH_SHA256, HASH_SHA512, IPV4_ADDRESS, IPV6_ADDRESS, MUTEX, PROCESS, URL; OPTIONAL
              Value => 'MyNonEmptyString',
            },
            ...
          ],    # OPTIONAL
          Threats => [
            {
              FilePaths => [
                {
                  FileName   => 'MyNonEmptyString',
                  FilePath   => 'MyNonEmptyString',
                  Hash       => 'MyNonEmptyString',
                  ResourceId => 'MyNonEmptyString',
                },
                ...
              ],    # OPTIONAL
              ItemCount => 1,                    # OPTIONAL
              Name      => 'MyNonEmptyString',
              Severity  => 'MyNonEmptyString',
            },
            ...
          ],    # OPTIONAL
          Types             => [ 'MyNonEmptyString', ... ],    # OPTIONAL
          UserDefinedFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
          ,                                                    # OPTIONAL
          VerificationState => 'UNKNOWN'
          , # values: UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE; OPTIONAL
          Vulnerabilities => [
            {
              Id                  => 'MyNonEmptyString',
              CodeVulnerabilities => [
                {
                  Cwes     => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                  FilePath => {
                    EndLine   => 1,                           # OPTIONAL
                    FileName  => 'MyNonEmptyString',
                    FilePath  => 'MyNonEmptyString',
                    StartLine => 1,                           # OPTIONAL
                  },    # OPTIONAL
                  SourceArn => 'MyNonEmptyString',
                },
                ...
              ],    # OPTIONAL
              Cvss => [
                {
                  Adjustments => [
                    {
                      Metric => 'MyNonEmptyString',
                      Reason => 'MyNonEmptyString',
                    },
                    ...
                  ],    # OPTIONAL
                  BaseScore  => 1,                    # OPTIONAL
                  BaseVector => 'MyNonEmptyString',
                  Source     => 'MyNonEmptyString',
                  Version    => 'MyNonEmptyString',
                },
                ...
              ],    # OPTIONAL
              EpssScore          => 1,      # OPTIONAL
              ExploitAvailable   => 'YES',  # values: YES, NO; OPTIONAL
              FixAvailable       => 'YES',  # values: YES, NO, PARTIAL; OPTIONAL
              LastKnownExploitAt => 'MyNonEmptyString',
              ReferenceUrls          => [ 'MyNonEmptyString', ... ],  # OPTIONAL
              RelatedVulnerabilities => [ 'MyNonEmptyString', ... ],  # OPTIONAL
              Vendor                 => {
                Name            => 'MyNonEmptyString',
                Url             => 'MyNonEmptyString',
                VendorCreatedAt => 'MyNonEmptyString',
                VendorSeverity  => 'MyNonEmptyString',
                VendorUpdatedAt => 'MyNonEmptyString',
              },                                                      # OPTIONAL
              VulnerablePackages => [
                {
                  Architecture    => 'MyNonEmptyString',
                  Epoch           => 'MyNonEmptyString',
                  FilePath        => 'MyNonEmptyString',
                  FixedInVersion  => 'MyNonEmptyString',
                  Name            => 'MyNonEmptyString',
                  PackageManager  => 'MyNonEmptyString',
                  Release         => 'MyNonEmptyString',
                  Remediation     => 'MyNonEmptyString',
                  SourceLayerArn  => 'MyNonEmptyString',
                  SourceLayerHash => 'MyNonEmptyString',
                  Version         => 'MyNonEmptyString',
                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Workflow => {
            Status =>
              'NEW',    # values: NEW, NOTIFIED, RESOLVED, SUPPRESSED; OPTIONAL
          },    # OPTIONAL
          WorkflowState => 'NEW'
          ,   # values: NEW, ASSIGNED, IN_PROGRESS, DEFERRED, RESOLVED; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $FailedCount    = $BatchImportFindingsResponse->FailedCount;
    my $FailedFindings = $BatchImportFindingsResponse->FailedFindings;
    my $SuccessCount   = $BatchImportFindingsResponse->SuccessCount;

    # Returns a L<Paws::SecurityHub::BatchImportFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchImportFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Findings => ArrayRef[L<Paws::SecurityHub::AwsSecurityFinding>]

A list of findings to import. To successfully import a finding, it must
follow the Amazon Web Services Security Finding Format
(https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-findings-format.html).
Maximum of 100 findings per request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchImportFindings in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

