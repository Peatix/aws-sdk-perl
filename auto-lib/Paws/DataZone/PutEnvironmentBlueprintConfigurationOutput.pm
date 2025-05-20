
package Paws::DataZone::PutEnvironmentBlueprintConfigurationOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has EnabledRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'enabledRegions');
  has EnvironmentBlueprintId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentBlueprintId', required => 1);
  has EnvironmentRolePermissionBoundary => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentRolePermissionBoundary');
  has ManageAccessRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manageAccessRoleArn');
  has ProvisioningConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ProvisioningConfiguration]', traits => ['NameInRequest'], request_name => 'provisioningConfigurations');
  has ProvisioningRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisioningRoleArn');
  has RegionalParameters => (is => 'ro', isa => 'Paws::DataZone::RegionalParameterMap', traits => ['NameInRequest'], request_name => 'regionalParameters');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::PutEnvironmentBlueprintConfigurationOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the environment blueprint was created.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain.


=head2 EnabledRegions => ArrayRef[Str|Undef]

Specifies the enabled Amazon Web Services Regions.


=head2 B<REQUIRED> EnvironmentBlueprintId => Str

The identifier of the environment blueprint.


=head2 EnvironmentRolePermissionBoundary => Str

The environment role permissions boundary.


=head2 ManageAccessRoleArn => Str

The ARN of the manage access role.


=head2 ProvisioningConfigurations => ArrayRef[L<Paws::DataZone::ProvisioningConfiguration>]

The provisioning configuration of a blueprint.


=head2 ProvisioningRoleArn => Str

The ARN of the provisioning role.


=head2 RegionalParameters => L<Paws::DataZone::RegionalParameterMap>

The regional parameters in the environment blueprint.


=head2 UpdatedAt => Str

The timestamp of when the environment blueprint was updated.


=head2 _request_id => Str


=cut

