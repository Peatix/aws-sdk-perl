
package Paws::DataZone::GetEnvironment;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetEnvironmentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironment - Arguments for method GetEnvironment on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironment on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironment.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetEnvironmentOutput = $datazone->GetEnvironment(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyEnvironmentId',

    );

    # Results:
    my $AwsAccountId           = $GetEnvironmentOutput->AwsAccountId;
    my $AwsAccountRegion       = $GetEnvironmentOutput->AwsAccountRegion;
    my $CreatedAt              = $GetEnvironmentOutput->CreatedAt;
    my $CreatedBy              = $GetEnvironmentOutput->CreatedBy;
    my $DeploymentProperties   = $GetEnvironmentOutput->DeploymentProperties;
    my $Description            = $GetEnvironmentOutput->Description;
    my $DomainId               = $GetEnvironmentOutput->DomainId;
    my $EnvironmentActions     = $GetEnvironmentOutput->EnvironmentActions;
    my $EnvironmentBlueprintId = $GetEnvironmentOutput->EnvironmentBlueprintId;
    my $EnvironmentConfigurationId =
      $GetEnvironmentOutput->EnvironmentConfigurationId;
    my $EnvironmentProfileId   = $GetEnvironmentOutput->EnvironmentProfileId;
    my $GlossaryTerms          = $GetEnvironmentOutput->GlossaryTerms;
    my $Id                     = $GetEnvironmentOutput->Id;
    my $LastDeployment         = $GetEnvironmentOutput->LastDeployment;
    my $Name                   = $GetEnvironmentOutput->Name;
    my $ProjectId              = $GetEnvironmentOutput->ProjectId;
    my $Provider               = $GetEnvironmentOutput->Provider;
    my $ProvisionedResources   = $GetEnvironmentOutput->ProvisionedResources;
    my $ProvisioningProperties = $GetEnvironmentOutput->ProvisioningProperties;
    my $Status                 = $GetEnvironmentOutput->Status;
    my $UpdatedAt              = $GetEnvironmentOutput->UpdatedAt;
    my $UserParameters         = $GetEnvironmentOutput->UserParameters;

    # Returns a L<Paws::DataZone::GetEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain where the environment exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the Amazon DataZone environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironment in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

