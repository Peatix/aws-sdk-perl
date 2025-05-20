
package Paws::CodePipeline::UpdatePipeline;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::CodePipeline::PipelineDeclaration', traits => ['NameInRequest'], request_name => 'pipeline' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePipeline');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::UpdatePipelineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::UpdatePipeline - Arguments for method UpdatePipeline on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePipeline on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method UpdatePipeline.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePipeline.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $UpdatePipelineOutput = $codepipeline->UpdatePipeline(
      Pipeline => {
        Name    => 'MyPipelineName',    # min: 1, max: 100
        RoleArn => 'MyRoleArn',         # max: 1024
        Stages  => [
          {
            Actions => [
              {
                ActionTypeId => {
                  Category => 'Source'
                  , # values: Source, Build, Deploy, Test, Invoke, Approval, Compute
                  Owner    => 'AWS',    # values: AWS, ThirdParty, Custom
                  Provider => 'MyActionProvider',    # min: 1, max: 35
                  Version  => 'MyVersion',           # min: 1, max: 9

                },
                Name     => 'MyActionName',          # min: 1, max: 100
                Commands => [
                  'MyCommand', ...                   # min: 1, max: 1000
                ],    # min: 1, max: 50; OPTIONAL
                Configuration => {
                  'MyActionConfigurationKey' => 'MyActionConfigurationValue'
                  ,    # key: min: 1, max: 50, value: min: 1, max: 1000
                },    # OPTIONAL
                EnvironmentVariables => [
                  {
                    Name  => 'MyEnvironmentVariableName',    # min: 1, max: 128
                    Value => 'MyEnvironmentVariableValue',   # min: 1, max: 2000
                    Type  => 'PLAINTEXT'
                    ,    # values: PLAINTEXT, SECRETS_MANAGER; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 10; OPTIONAL
                InputArtifacts => [
                  {
                    Name => 'MyArtifactName',    # min: 1, max: 100

                  },
                  ...
                ],    # OPTIONAL
                Namespace => 'MyActionNamespace',   # min: 1, max: 100; OPTIONAL
                OutputArtifacts => [
                  {
                    Name  => 'MyArtifactName',      # min: 1, max: 100
                    Files => [
                      'MyFilePath', ...             # min: 1, max: 128
                    ],    # min: 1, max: 10; OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                OutputVariables => [
                  'MyOutputVariable', ...    # min: 1, max: 128
                ],    # min: 1, max: 15; OPTIONAL
                Region   => 'MyAWSRegionName',    # min: 4, max: 30; OPTIONAL
                RoleArn  => 'MyRoleArn',          # max: 1024
                RunOrder => 1,                    # min: 1, max: 999; OPTIONAL
                TimeoutInMinutes => 1,            # min: 5, max: 86400; OPTIONAL
              },
              ...
            ],
            Name        => 'MyStageName',         # min: 1, max: 100
            BeforeEntry => {
              Conditions => [
                {
                  Result =>
                    'ROLLBACK',  # values: ROLLBACK, FAIL, RETRY, SKIP; OPTIONAL
                  Rules => [
                    {
                      Name       => 'MyRuleName',    # min: 1, max: 100
                      RuleTypeId => {
                        Category => 'Rule',              # values: Rule
                        Provider => 'MyRuleProvider',    # min: 1, max: 35
                        Owner    => 'AWS',               # values: AWS; OPTIONAL
                        Version  => 'MyVersion',         # min: 1, max: 9
                      },
                      Commands => [
                        'MyCommand', ...                 # min: 1, max: 1000
                      ],    # min: 1, max: 50; OPTIONAL
                      Configuration => {
                        'MyRuleConfigurationKey' => 'MyRuleConfigurationValue'
                        ,    # key: min: 1, max: 50, value: min: 1, max: 10000
                      },    # max: 200; OPTIONAL
                      InputArtifacts => [
                        {
                          Name => 'MyArtifactName',    # min: 1, max: 100

                        },
                        ...
                      ],    # OPTIONAL
                      Region  => 'MyAWSRegionName',  # min: 4, max: 30; OPTIONAL
                      RoleArn => 'MyRoleArn',        # max: 1024
                      TimeoutInMinutes => 1,    # min: 5, max: 86400; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5; OPTIONAL
                },
                ...
              ],    # min: 1, max: 1

            },    # OPTIONAL
            Blockers => [
              {
                Name => 'MyBlockerName',    # min: 1, max: 100
                Type => 'Schedule',         # values: Schedule

              },
              ...
            ],    # OPTIONAL
            OnFailure => {
              Conditions => [
                {
                  Result =>
                    'ROLLBACK',  # values: ROLLBACK, FAIL, RETRY, SKIP; OPTIONAL
                  Rules => [
                    {
                      Name       => 'MyRuleName',    # min: 1, max: 100
                      RuleTypeId => {
                        Category => 'Rule',              # values: Rule
                        Provider => 'MyRuleProvider',    # min: 1, max: 35
                        Owner    => 'AWS',               # values: AWS; OPTIONAL
                        Version  => 'MyVersion',         # min: 1, max: 9
                      },
                      Commands => [
                        'MyCommand', ...                 # min: 1, max: 1000
                      ],    # min: 1, max: 50; OPTIONAL
                      Configuration => {
                        'MyRuleConfigurationKey' => 'MyRuleConfigurationValue'
                        ,    # key: min: 1, max: 50, value: min: 1, max: 10000
                      },    # max: 200; OPTIONAL
                      InputArtifacts => [
                        {
                          Name => 'MyArtifactName',    # min: 1, max: 100

                        },
                        ...
                      ],    # OPTIONAL
                      Region  => 'MyAWSRegionName',  # min: 4, max: 30; OPTIONAL
                      RoleArn => 'MyRoleArn',        # max: 1024
                      TimeoutInMinutes => 1,    # min: 5, max: 86400; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5; OPTIONAL
                },
                ...
              ],    # min: 1, max: 1
              Result =>
                'ROLLBACK',    # values: ROLLBACK, FAIL, RETRY, SKIP; OPTIONAL
              RetryConfiguration => {
                RetryMode => 'FAILED_ACTIONS'
                ,              # values: FAILED_ACTIONS, ALL_ACTIONS; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            OnSuccess => {
              Conditions => [
                {
                  Result =>
                    'ROLLBACK',  # values: ROLLBACK, FAIL, RETRY, SKIP; OPTIONAL
                  Rules => [
                    {
                      Name       => 'MyRuleName',    # min: 1, max: 100
                      RuleTypeId => {
                        Category => 'Rule',              # values: Rule
                        Provider => 'MyRuleProvider',    # min: 1, max: 35
                        Owner    => 'AWS',               # values: AWS; OPTIONAL
                        Version  => 'MyVersion',         # min: 1, max: 9
                      },
                      Commands => [
                        'MyCommand', ...                 # min: 1, max: 1000
                      ],    # min: 1, max: 50; OPTIONAL
                      Configuration => {
                        'MyRuleConfigurationKey' => 'MyRuleConfigurationValue'
                        ,    # key: min: 1, max: 50, value: min: 1, max: 10000
                      },    # max: 200; OPTIONAL
                      InputArtifacts => [
                        {
                          Name => 'MyArtifactName',    # min: 1, max: 100

                        },
                        ...
                      ],    # OPTIONAL
                      Region  => 'MyAWSRegionName',  # min: 4, max: 30; OPTIONAL
                      RoleArn => 'MyRoleArn',        # max: 1024
                      TimeoutInMinutes => 1,    # min: 5, max: 86400; OPTIONAL
                    },
                    ...
                  ],    # min: 1, max: 5; OPTIONAL
                },
                ...
              ],    # min: 1, max: 1

            },    # OPTIONAL
          },
          ...
        ],
        ArtifactStore => {
          Location      => 'MyArtifactStoreLocation',    # min: 3, max: 63
          Type          => 'S3',                         # values: S3
          EncryptionKey => {
            Id   => 'MyEncryptionKeyId',                 # min: 1, max: 400
            Type => 'KMS',                               # values: KMS

          },    # OPTIONAL
        },    # OPTIONAL
        ArtifactStores => {
          'MyAWSRegionName' => {
            Location      => 'MyArtifactStoreLocation',    # min: 3, max: 63
            Type          => 'S3',                         # values: S3
            EncryptionKey => {
              Id   => 'MyEncryptionKeyId',                 # min: 1, max: 400
              Type => 'KMS',                               # values: KMS

            },    # OPTIONAL
          },    # key: min: 4, max: 30; OPTIONAL, value: OPTIONAL
        },    # OPTIONAL
        ExecutionMode =>
          'QUEUED',    # values: QUEUED, SUPERSEDED, PARALLEL; OPTIONAL
        PipelineType => 'V1',    # values: V1, V2; OPTIONAL
        Triggers     => [
          {
            GitConfiguration => {
              SourceActionName => 'MyActionName',    # min: 1, max: 100
              PullRequest      => [
                {
                  Branches => {
                    Excludes => [
                      'MyGitBranchNamePattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                    Includes => [
                      'MyGitBranchNamePattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                  },    # OPTIONAL
                  Events => [
                    'OPEN', ...    # values: OPEN, UPDATED, CLOSED
                  ],    # min: 1, max: 3; OPTIONAL
                  FilePaths => {
                    Excludes => [
                      'MyGitFilePathPattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                    Includes => [
                      'MyGitFilePathPattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 3; OPTIONAL
              Push => [
                {
                  Branches => {
                    Excludes => [
                      'MyGitBranchNamePattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                    Includes => [
                      'MyGitBranchNamePattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                  },    # OPTIONAL
                  FilePaths => {
                    Excludes => [
                      'MyGitFilePathPattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                    Includes => [
                      'MyGitFilePathPattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                  },    # OPTIONAL
                  Tags => {
                    Excludes => [
                      'MyGitTagNamePattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                    Includes => [
                      'MyGitTagNamePattern', ...    # min: 1, max: 255
                    ],    # min: 1, max: 8; OPTIONAL
                  },    # OPTIONAL
                },
                ...
              ],    # min: 1, max: 3; OPTIONAL
            },
            ProviderType =>
              'CodeStarSourceConnection',    # values: CodeStarSourceConnection

          },
          ...
        ],    # max: 50; OPTIONAL
        Variables => [
          {
            Name         => 'MyPipelineVariableName',    # min: 1, max: 128
            DefaultValue =>
              'MyPipelineVariableValue',    # min: 1, max: 1000; OPTIONAL
            Description => 'MyPipelineVariableDescription', # max: 200; OPTIONAL
          },
          ...
        ],    # max: 50; OPTIONAL
        Version => 1,    # min: 1; OPTIONAL
      },

    );

    # Results:
    my $Pipeline = $UpdatePipelineOutput->Pipeline;

    # Returns a L<Paws::CodePipeline::UpdatePipelineOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/UpdatePipeline>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Pipeline => L<Paws::CodePipeline::PipelineDeclaration>

The name of the pipeline to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePipeline in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

