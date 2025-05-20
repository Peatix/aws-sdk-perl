
package Paws::DataZone::GetEnvironmentOutput;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountId');
  has AwsAccountRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountRegion');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy', required => 1);
  has DeploymentProperties => (is => 'ro', isa => 'Paws::DataZone::DeploymentProperties', traits => ['NameInRequest'], request_name => 'deploymentProperties');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has EnvironmentActions => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ConfigurableEnvironmentAction]', traits => ['NameInRequest'], request_name => 'environmentActions');
  has EnvironmentBlueprintId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentBlueprintId');
  has EnvironmentConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentConfigurationId');
  has EnvironmentProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentProfileId');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastDeployment => (is => 'ro', isa => 'Paws::DataZone::Deployment', traits => ['NameInRequest'], request_name => 'lastDeployment');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider', required => 1);
  has ProvisionedResources => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::Resource]', traits => ['NameInRequest'], request_name => 'provisionedResources');
  has ProvisioningProperties => (is => 'ro', isa => 'Paws::DataZone::ProvisioningProperties', traits => ['NameInRequest'], request_name => 'provisioningProperties');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::CustomParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentOutput

=head1 ATTRIBUTES


=head2 AwsAccountId => Str

The ID of the Amazon Web Services account where the environment exists.


=head2 AwsAccountRegion => Str

The Amazon Web Services region where the environment exists.


=head2 CreatedAt => Str

The timestamp of when the environment was created.


=head2 B<REQUIRED> CreatedBy => Str

The Amazon DataZone user who created the environment.


=head2 DeploymentProperties => L<Paws::DataZone::DeploymentProperties>

The deployment properties of the environment.


=head2 Description => Str

The description of the environment.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain where the environment exists.


=head2 EnvironmentActions => ArrayRef[L<Paws::DataZone::ConfigurableEnvironmentAction>]

The actions of the environment.


=head2 EnvironmentBlueprintId => Str

The blueprint with which the environment is created.


=head2 EnvironmentConfigurationId => Str

The configuration ID that is used to create the environment.


=head2 EnvironmentProfileId => Str

The ID of the environment profile with which the environment is
created.


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The business glossary terms that can be used in this environment.


=head2 Id => Str

The ID of the environment.


=head2 LastDeployment => L<Paws::DataZone::Deployment>

The details of the last deployment of the environment.


=head2 B<REQUIRED> Name => Str

The name of the environment.


=head2 B<REQUIRED> ProjectId => Str

The ID of the Amazon DataZone project in which this environment is
created.


=head2 B<REQUIRED> Provider => Str

The provider of this Amazon DataZone environment.


=head2 ProvisionedResources => ArrayRef[L<Paws::DataZone::Resource>]

The provisioned resources of this Amazon DataZone environment.


=head2 ProvisioningProperties => L<Paws::DataZone::ProvisioningProperties>

The provisioning properties of this Amazon DataZone environment.


=head2 Status => Str

The status of this Amazon DataZone environment.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">, C<"VALIDATION_FAILED">, C<"SUSPENDED">, C<"DISABLED">, C<"EXPIRED">, C<"DELETED">, C<"INACCESSIBLE">
=head2 UpdatedAt => Str

The timestamp of when this environment was updated.


=head2 UserParameters => ArrayRef[L<Paws::DataZone::CustomParameter>]

The user parameters of this Amazon DataZone environment.


=head2 _request_id => Str


=cut

