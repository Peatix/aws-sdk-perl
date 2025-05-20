
package Paws::DataZone::CreateEnvironment;
  use Moose;
  has DeploymentOrder => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'deploymentOrder');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentAccountIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentAccountIdentifier');
  has EnvironmentAccountRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentAccountRegion');
  has EnvironmentBlueprintIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentBlueprintIdentifier');
  has EnvironmentConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentConfigurationId');
  has EnvironmentProfileIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentProfileIdentifier', required => 1);
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectIdentifier', required => 1);
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateEnvironmentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateEnvironmentOutput = $datazone->CreateEnvironment(
      DomainIdentifier               => 'MyDomainId',
      EnvironmentProfileIdentifier   => 'MyEnvironmentProfileId',
      Name                           => 'MyString',
      ProjectIdentifier              => 'MyProjectId',
      DeploymentOrder                => 1,                            # OPTIONAL
      Description                    => 'MyString',                   # OPTIONAL
      EnvironmentAccountIdentifier   => 'MyString',                   # OPTIONAL
      EnvironmentAccountRegion       => 'MyString',                   # OPTIONAL
      EnvironmentBlueprintIdentifier => 'MyString',                   # OPTIONAL
      EnvironmentConfigurationId     => 'MyString',                   # OPTIONAL
      GlossaryTerms                  => [ 'MyGlossaryTermId', ... ],  # OPTIONAL
      UserParameters                 => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                              # OPTIONAL
    );

    # Results:
    my $AwsAccountId         = $CreateEnvironmentOutput->AwsAccountId;
    my $AwsAccountRegion     = $CreateEnvironmentOutput->AwsAccountRegion;
    my $CreatedAt            = $CreateEnvironmentOutput->CreatedAt;
    my $CreatedBy            = $CreateEnvironmentOutput->CreatedBy;
    my $DeploymentProperties = $CreateEnvironmentOutput->DeploymentProperties;
    my $Description          = $CreateEnvironmentOutput->Description;
    my $DomainId             = $CreateEnvironmentOutput->DomainId;
    my $EnvironmentActions   = $CreateEnvironmentOutput->EnvironmentActions;
    my $EnvironmentBlueprintId =
      $CreateEnvironmentOutput->EnvironmentBlueprintId;
    my $EnvironmentConfigurationId =
      $CreateEnvironmentOutput->EnvironmentConfigurationId;
    my $EnvironmentProfileId = $CreateEnvironmentOutput->EnvironmentProfileId;
    my $GlossaryTerms        = $CreateEnvironmentOutput->GlossaryTerms;
    my $Id                   = $CreateEnvironmentOutput->Id;
    my $LastDeployment       = $CreateEnvironmentOutput->LastDeployment;
    my $Name                 = $CreateEnvironmentOutput->Name;
    my $ProjectId            = $CreateEnvironmentOutput->ProjectId;
    my $Provider             = $CreateEnvironmentOutput->Provider;
    my $ProvisionedResources = $CreateEnvironmentOutput->ProvisionedResources;
    my $ProvisioningProperties =
      $CreateEnvironmentOutput->ProvisioningProperties;
    my $Status         = $CreateEnvironmentOutput->Status;
    my $UpdatedAt      = $CreateEnvironmentOutput->UpdatedAt;
    my $UserParameters = $CreateEnvironmentOutput->UserParameters;

    # Returns a L<Paws::DataZone::CreateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateEnvironment>

=head1 ATTRIBUTES


=head2 DeploymentOrder => Int

The deployment order of the environment.



=head2 Description => Str

The description of the Amazon DataZone environment.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the Amazon DataZone domain in which the environment
is created.



=head2 EnvironmentAccountIdentifier => Str

The ID of the account in which the environment is being created.



=head2 EnvironmentAccountRegion => Str

The region of the account in which the environment is being created.



=head2 EnvironmentBlueprintIdentifier => Str

The ID of the blueprint with which the environment is being created.



=head2 EnvironmentConfigurationId => Str

The configuration ID of the environment.



=head2 B<REQUIRED> EnvironmentProfileIdentifier => Str

The identifier of the environment profile that is used to create this
Amazon DataZone environment.



=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms that can be used in this Amazon DataZone
environment.



=head2 B<REQUIRED> Name => Str

The name of the Amazon DataZone environment.



=head2 B<REQUIRED> ProjectIdentifier => Str

The identifier of the Amazon DataZone project in which this environment
is created.



=head2 UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]

The user parameters of this Amazon DataZone environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

