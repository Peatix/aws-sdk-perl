
package Paws::DataZone::GetEnvironmentBlueprintOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DeploymentProperties => (is => 'ro', isa => 'Paws::DataZone::DeploymentProperties', traits => ['NameInRequest'], request_name => 'deploymentProperties');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider', required => 1);
  has ProvisioningProperties => (is => 'ro', isa => 'Paws::DataZone::ProvisioningProperties', traits => ['NameInRequest'], request_name => 'provisioningProperties', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::CustomParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentBlueprintOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

A timestamp of when this blueprint was created.


=head2 DeploymentProperties => L<Paws::DataZone::DeploymentProperties>

The deployment properties of this Amazon DataZone blueprint.


=head2 Description => Str

The description of this Amazon DataZone blueprint.


=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms attached to this Amazon DataZone blueprint.


=head2 B<REQUIRED> Id => Str

The ID of this Amazon DataZone blueprint.


=head2 B<REQUIRED> Name => Str

The name of this Amazon DataZone blueprint.


=head2 B<REQUIRED> Provider => Str

The provider of this Amazon DataZone blueprint.


=head2 B<REQUIRED> ProvisioningProperties => L<Paws::DataZone::ProvisioningProperties>

The provisioning properties of this Amazon DataZone blueprint.


=head2 UpdatedAt => Str

The timestamp of when this blueprint was updated.


=head2 UserParameters => ArrayRef[L<Paws::DataZone::CustomParameter>]

The user parameters of this blueprint.


=head2 _request_id => Str


=cut

