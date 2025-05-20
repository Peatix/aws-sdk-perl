
package Paws::MigrationHubStrategy::UpdateApplicationComponentConfig;
  use Moose;
  has ApplicationComponentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationComponentId', required => 1);
  has AppType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appType');
  has ConfigureOnly => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'configureOnly');
  has InclusionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inclusionStatus');
  has SecretsManagerKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'secretsManagerKey');
  has SourceCodeList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::SourceCode]', traits => ['NameInRequest'], request_name => 'sourceCodeList');
  has StrategyOption => (is => 'ro', isa => 'Paws::MigrationHubStrategy::StrategyOption', traits => ['NameInRequest'], request_name => 'strategyOption');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationComponentConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-applicationcomponent-config/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::UpdateApplicationComponentConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::UpdateApplicationComponentConfig - Arguments for method UpdateApplicationComponentConfig on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplicationComponentConfig on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method UpdateApplicationComponentConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplicationComponentConfig.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $UpdateApplicationComponentConfigResponse =
      $migrationhub -strategy->UpdateApplicationComponentConfig(
      ApplicationComponentId => 'MyApplicationComponentId',
      AppType                => 'DotNetFramework',            # OPTIONAL
      ConfigureOnly          => 1,                            # OPTIONAL
      InclusionStatus        => 'excludeFromAssessment',      # OPTIONAL
      SecretsManagerKey      => 'MySecretsManagerKey',        # OPTIONAL
      SourceCodeList         => [
        {
          Location       => 'MyLocation',         # min: 1, max: 128; OPTIONAL
          ProjectName    => 'MyProjectName',      # min: 1, max: 128; OPTIONAL
          SourceVersion  => 'MySourceVersion',    # min: 1, max: 40; OPTIONAL
          VersionControl => 'GITHUB'
          ,    # values: GITHUB, GITHUB_ENTERPRISE, AZURE_DEVOPS_GIT; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      StrategyOption => {
        IsPreferred => 1,
        Strategy    => 'Rehost'
        , # values: Rehost, Retirement, Refactor, Replatform, Retain, Relocate, Repurchase; OPTIONAL
        TargetDestination => 'None specified'
        , # values: None specified, AWS Elastic BeanStalk, AWS Fargate, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS), Aurora MySQL, Aurora PostgreSQL, Amazon Relational Database Service on MySQL, Amazon Relational Database Service on PostgreSQL, Amazon DocumentDB, Amazon DynamoDB, Amazon Relational Database Service, Babelfish for Aurora PostgreSQL; OPTIONAL
        ToolName => 'App2Container'
        , # values: App2Container, Porting Assistant For .NET, End of Support Migration, Windows Web Application Migration Assistant, Application Migration Service, Strategy Recommendation Support, In Place Operating System Upgrade, Schema Conversion Tool, Database Migration Service, Native SQL Server Backup/Restore; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/UpdateApplicationComponentConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationComponentId => Str

The ID of the application component. The ID is unique within an AWS
account.



=head2 AppType => Str

The type of known component.

Valid values are: C<"DotNetFramework">, C<"Java">, C<"SQLServer">, C<"IIS">, C<"Oracle">, C<"Other">, C<"Tomcat">, C<"JBoss">, C<"Spring">, C<"Mongo DB">, C<"DB2">, C<"Maria DB">, C<"MySQL">, C<"Sybase">, C<"PostgreSQLServer">, C<"Cassandra">, C<"IBM WebSphere">, C<"Oracle WebLogic">, C<"Visual Basic">, C<"Unknown">, C<"DotnetCore">, C<"Dotnet">

=head2 ConfigureOnly => Bool

Update the configuration request of an application component. If it is
set to true, the source code and/or database credentials are updated.
If it is set to false, the source code and/or database credentials are
updated and an analysis is initiated.



=head2 InclusionStatus => Str

Indicates whether the application component has been included for
server recommendation or not.

Valid values are: C<"excludeFromAssessment">, C<"includeInAssessment">

=head2 SecretsManagerKey => Str

Database credentials.



=head2 SourceCodeList => ArrayRef[L<Paws::MigrationHubStrategy::SourceCode>]

The list of source code configurations to update for the application
component.



=head2 StrategyOption => L<Paws::MigrationHubStrategy::StrategyOption>

The preferred strategy options for the application component. Use
values from the GetApplicationComponentStrategies response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplicationComponentConfig in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

