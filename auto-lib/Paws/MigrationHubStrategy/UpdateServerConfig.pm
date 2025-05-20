
package Paws::MigrationHubStrategy::UpdateServerConfig;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serverId', required => 1);
  has StrategyOption => (is => 'ro', isa => 'Paws::MigrationHubStrategy::StrategyOption', traits => ['NameInRequest'], request_name => 'strategyOption');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServerConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-server-config/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::UpdateServerConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::UpdateServerConfig - Arguments for method UpdateServerConfig on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServerConfig on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method UpdateServerConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServerConfig.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $UpdateServerConfigResponse =
      $migrationhub -strategy->UpdateServerConfig(
      ServerId       => 'MyServerId',
      StrategyOption => {
        IsPreferred => 1,         # OPTIONAL
        Strategy    => 'Rehost'
        , # values: Rehost, Retirement, Refactor, Replatform, Retain, Relocate, Repurchase; OPTIONAL
        TargetDestination => 'None specified'
        , # values: None specified, AWS Elastic BeanStalk, AWS Fargate, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS), Aurora MySQL, Aurora PostgreSQL, Amazon Relational Database Service on MySQL, Amazon Relational Database Service on PostgreSQL, Amazon DocumentDB, Amazon DynamoDB, Amazon Relational Database Service, Babelfish for Aurora PostgreSQL; OPTIONAL
        ToolName => 'App2Container'
        , # values: App2Container, Porting Assistant For .NET, End of Support Migration, Windows Web Application Migration Assistant, Application Migration Service, Strategy Recommendation Support, In Place Operating System Upgrade, Schema Conversion Tool, Database Migration Service, Native SQL Server Backup/Restore; OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/UpdateServerConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

The ID of the server.



=head2 StrategyOption => L<Paws::MigrationHubStrategy::StrategyOption>

The preferred strategy options for the application component. See the
response from GetServerStrategies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServerConfig in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

