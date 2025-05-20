
package Paws::DataZone::GetEnvironmentBlueprint;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironmentBlueprint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetEnvironmentBlueprintOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentBlueprint - Arguments for method GetEnvironmentBlueprint on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironmentBlueprint on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetEnvironmentBlueprint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironmentBlueprint.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetEnvironmentBlueprintOutput = $datazone->GetEnvironmentBlueprint(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyEnvironmentBlueprintId',

    );

    # Results:
    my $CreatedAt = $GetEnvironmentBlueprintOutput->CreatedAt;
    my $DeploymentProperties =
      $GetEnvironmentBlueprintOutput->DeploymentProperties;
    my $Description   = $GetEnvironmentBlueprintOutput->Description;
    my $GlossaryTerms = $GetEnvironmentBlueprintOutput->GlossaryTerms;
    my $Id            = $GetEnvironmentBlueprintOutput->Id;
    my $Name          = $GetEnvironmentBlueprintOutput->Name;
    my $Provider      = $GetEnvironmentBlueprintOutput->Provider;
    my $ProvisioningProperties =
      $GetEnvironmentBlueprintOutput->ProvisioningProperties;
    my $UpdatedAt      = $GetEnvironmentBlueprintOutput->UpdatedAt;
    my $UserParameters = $GetEnvironmentBlueprintOutput->UserParameters;

    # Returns a L<Paws::DataZone::GetEnvironmentBlueprintOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetEnvironmentBlueprint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the domain in which this blueprint exists.



=head2 B<REQUIRED> Identifier => Str

The ID of this Amazon DataZone blueprint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironmentBlueprint in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

