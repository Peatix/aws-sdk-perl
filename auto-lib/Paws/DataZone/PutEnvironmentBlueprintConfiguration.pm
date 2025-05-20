
package Paws::DataZone::PutEnvironmentBlueprintConfiguration;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnabledRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'enabledRegions', required => 1);
  has EnvironmentBlueprintIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentBlueprintIdentifier', required => 1);
  has EnvironmentRolePermissionBoundary => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentRolePermissionBoundary');
  has ManageAccessRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'manageAccessRoleArn');
  has ProvisioningConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::ProvisioningConfiguration]', traits => ['NameInRequest'], request_name => 'provisioningConfigurations');
  has ProvisioningRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provisioningRoleArn');
  has RegionalParameters => (is => 'ro', isa => 'Paws::DataZone::RegionalParameterMap', traits => ['NameInRequest'], request_name => 'regionalParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutEnvironmentBlueprintConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::PutEnvironmentBlueprintConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::PutEnvironmentBlueprintConfiguration - Arguments for method PutEnvironmentBlueprintConfiguration on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutEnvironmentBlueprintConfiguration on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method PutEnvironmentBlueprintConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutEnvironmentBlueprintConfiguration.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $PutEnvironmentBlueprintConfigurationOutput =
      $datazone->PutEnvironmentBlueprintConfiguration(
      DomainIdentifier => 'MyDomainId',
      EnabledRegions   => [
        'MyRegionName', ...    # min: 4, max: 16
      ],
      EnvironmentBlueprintIdentifier    => 'MyEnvironmentBlueprintId',
      EnvironmentRolePermissionBoundary => 'MyPolicyArn',             # OPTIONAL
      ManageAccessRoleArn               => 'MyRoleArn',               # OPTIONAL
      ProvisioningConfigurations        => [
        {
          LakeFormationConfiguration => {
            LocationRegistrationExcludeS3Locations => [
              'MyS3Location', ...    # min: 1, max: 1024
            ],    # max: 20; OPTIONAL
            LocationRegistrationRole => 'MyRoleArn',
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ProvisioningRoleArn => 'MyRoleArn',    # OPTIONAL
      RegionalParameters  => {
        'MyRegionName' => { 'MyString' => 'MyString', },  # key: min: 4, max: 16
      },    # OPTIONAL
      );

    # Results:
    my $CreatedAt = $PutEnvironmentBlueprintConfigurationOutput->CreatedAt;
    my $DomainId  = $PutEnvironmentBlueprintConfigurationOutput->DomainId;
    my $EnabledRegions =
      $PutEnvironmentBlueprintConfigurationOutput->EnabledRegions;
    my $EnvironmentBlueprintId =
      $PutEnvironmentBlueprintConfigurationOutput->EnvironmentBlueprintId;
    my $EnvironmentRolePermissionBoundary =
      $PutEnvironmentBlueprintConfigurationOutput
      ->EnvironmentRolePermissionBoundary;
    my $ManageAccessRoleArn =
      $PutEnvironmentBlueprintConfigurationOutput->ManageAccessRoleArn;
    my $ProvisioningConfigurations =
      $PutEnvironmentBlueprintConfigurationOutput->ProvisioningConfigurations;
    my $ProvisioningRoleArn =
      $PutEnvironmentBlueprintConfigurationOutput->ProvisioningRoleArn;
    my $RegionalParameters =
      $PutEnvironmentBlueprintConfigurationOutput->RegionalParameters;
    my $UpdatedAt = $PutEnvironmentBlueprintConfigurationOutput->UpdatedAt;

# Returns a L<Paws::DataZone::PutEnvironmentBlueprintConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/PutEnvironmentBlueprintConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain.



=head2 B<REQUIRED> EnabledRegions => ArrayRef[Str|Undef]

Specifies the enabled Amazon Web Services Regions.



=head2 B<REQUIRED> EnvironmentBlueprintIdentifier => Str

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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutEnvironmentBlueprintConfiguration in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

