
package Paws::MigrationHubStrategy::PutPortfolioPreferences;
  use Moose;
  has ApplicationMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationMode');
  has ApplicationPreferences => (is => 'ro', isa => 'Paws::MigrationHubStrategy::ApplicationPreferences', traits => ['NameInRequest'], request_name => 'applicationPreferences');
  has DatabasePreferences => (is => 'ro', isa => 'Paws::MigrationHubStrategy::DatabasePreferences', traits => ['NameInRequest'], request_name => 'databasePreferences');
  has PrioritizeBusinessGoals => (is => 'ro', isa => 'Paws::MigrationHubStrategy::PrioritizeBusinessGoals', traits => ['NameInRequest'], request_name => 'prioritizeBusinessGoals');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutPortfolioPreferences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/put-portfolio-preferences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::PutPortfolioPreferencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::PutPortfolioPreferences - Arguments for method PutPortfolioPreferences on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutPortfolioPreferences on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method PutPortfolioPreferences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutPortfolioPreferences.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $PutPortfolioPreferencesResponse =
      $migrationhub -strategy->PutPortfolioPreferences(
      ApplicationMode        => 'ALL',    # OPTIONAL
      ApplicationPreferences => {
        ManagementPreference => {
          AwsManagedResources => {
            TargetDestination => [
              'None specified',
              ...   # values: None specified, AWS Elastic BeanStalk, AWS Fargate
            ],    # min: 1, max: 1

          },    # OPTIONAL
          NoPreference => {
            TargetDestination => [
              'None specified',
              ... # values: None specified, AWS Elastic BeanStalk, AWS Fargate, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS)
            ],    # min: 1, max: 1

          },    # OPTIONAL
          SelfManageResources => {
            TargetDestination => [
              'None specified',
              ... # values: None specified, Amazon Elastic Cloud Compute (EC2), Amazon Elastic Container Service (ECS), Amazon Elastic Kubernetes Service (EKS)
            ],    # min: 1, max: 1

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DatabasePreferences => {
        DatabaseManagementPreference => 'AWS-managed'
        ,    # values: AWS-managed, Self-manage, No preference; OPTIONAL
        DatabaseMigrationPreference => {
          Heterogeneous => {
            TargetDatabaseEngine => [
              'None specified',
              ... # values: None specified, Amazon Aurora, AWS PostgreSQL, MySQL, Microsoft SQL Server, Oracle Database, MariaDB, SAP, Db2 LUW, MongoDB
            ],    # min: 1, max: 1

          },    # OPTIONAL
          Homogeneous => {
            TargetDatabaseEngine => [
              'None specified', ...    # values: None specified
            ],    # max: 1; OPTIONAL
          },    # OPTIONAL
          NoPreference => {
            TargetDatabaseEngine => [
              'None specified',
              ... # values: None specified, Amazon Aurora, AWS PostgreSQL, MySQL, Microsoft SQL Server, Oracle Database, MariaDB, SAP, Db2 LUW, MongoDB
            ],    # min: 1, max: 1

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PrioritizeBusinessGoals => {
        BusinessGoals => {
          LicenseCostReduction => 1,    # min: 1, max: 5; OPTIONAL
          ModernizeInfrastructureWithCloudNativeTechnologies =>
            1,                          # min: 1, max: 5; OPTIONAL
          ReduceOperationalOverheadWithManagedServices =>
            1,                          # min: 1, max: 5; OPTIONAL
          SpeedOfMigration => 1,        # min: 1, max: 5; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/PutPortfolioPreferences>

=head1 ATTRIBUTES


=head2 ApplicationMode => Str

The classification for application component types.

Valid values are: C<"ALL">, C<"KNOWN">, C<"UNKNOWN">

=head2 ApplicationPreferences => L<Paws::MigrationHubStrategy::ApplicationPreferences>

The transformation preferences for non-database applications.



=head2 DatabasePreferences => L<Paws::MigrationHubStrategy::DatabasePreferences>

The transformation preferences for database applications.



=head2 PrioritizeBusinessGoals => L<Paws::MigrationHubStrategy::PrioritizeBusinessGoals>

The rank of the business goals based on priority.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutPortfolioPreferences in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

