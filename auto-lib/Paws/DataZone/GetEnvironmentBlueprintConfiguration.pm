
package Paws::DataZone::GetEnvironmentBlueprintConfiguration;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentBlueprintIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentBlueprintIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironmentBlueprintConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetEnvironmentBlueprintConfigurationOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentBlueprintConfiguration - Arguments for method GetEnvironmentBlueprintConfiguration on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironmentBlueprintConfiguration on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetEnvironmentBlueprintConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironmentBlueprintConfiguration.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetEnvironmentBlueprintConfigurationOutput =
      $datazone->GetEnvironmentBlueprintConfiguration(
      DomainIdentifier               => 'MyDomainId',
      EnvironmentBlueprintIdentifier => 'MyEnvironmentBlueprintId',

      );

    # Results:
    my $CreatedAt = $GetEnvironmentBlueprintConfigurationOutput->CreatedAt;
    my $DomainId  = $GetEnvironmentBlueprintConfigurationOutput->DomainId;
    my $EnabledRegions =
      $GetEnvironmentBlueprintConfigurationOutput->EnabledRegions;
    my $EnvironmentBlueprintId =
      $GetEnvironmentBlueprintConfigurationOutput->EnvironmentBlueprintId;
    my $EnvironmentRolePermissionBoundary =
      $GetEnvironmentBlueprintConfigurationOutput
      ->EnvironmentRolePermissionBoundary;
    my $ManageAccessRoleArn =
      $GetEnvironmentBlueprintConfigurationOutput->ManageAccessRoleArn;
    my $ProvisioningConfigurations =
      $GetEnvironmentBlueprintConfigurationOutput->ProvisioningConfigurations;
    my $ProvisioningRoleArn =
      $GetEnvironmentBlueprintConfigurationOutput->ProvisioningRoleArn;
    my $RegionalParameters =
      $GetEnvironmentBlueprintConfigurationOutput->RegionalParameters;
    my $UpdatedAt = $GetEnvironmentBlueprintConfigurationOutput->UpdatedAt;

# Returns a L<Paws::DataZone::GetEnvironmentBlueprintConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetEnvironmentBlueprintConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain where this blueprint exists.



=head2 B<REQUIRED> EnvironmentBlueprintIdentifier => Str

He ID of the blueprint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironmentBlueprintConfiguration in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

