
package Paws::DataZone::GetEnvironmentBlueprintConfigurationOutput;
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

Paws::DataZone::GetEnvironmentBlueprintConfigurationOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when this blueprint was created.


=head2 B<REQUIRED> DomainId => Str

The ID of the Amazon DataZone domain where this blueprint exists.


=head2 EnabledRegions => ArrayRef[Str|Undef]

The Amazon Web Services regions in which this blueprint is enabled.


=head2 B<REQUIRED> EnvironmentBlueprintId => Str

The ID of the blueprint.


=head2 EnvironmentRolePermissionBoundary => Str

The environment role permissions boundary.


=head2 ManageAccessRoleArn => Str

The ARN of the manage access role with which this blueprint is created.


=head2 ProvisioningConfigurations => ArrayRef[L<Paws::DataZone::ProvisioningConfiguration>]

The provisioning configuration of a blueprint.


=head2 ProvisioningRoleArn => Str

The ARN of the provisioning role with which this blueprint is created.


=head2 RegionalParameters => L<Paws::DataZone::RegionalParameterMap>

The regional parameters of the blueprint.


=head2 UpdatedAt => Str

The timestamp of when this blueprint was upated.


=head2 _request_id => Str


=cut

