
package Paws::DataZone::UpdateEnvironment;
  use Moose;
  has BlueprintVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blueprintVersion');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateEnvironmentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateEnvironmentOutput = $datazone->UpdateEnvironment(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyEnvironmentId',
      BlueprintVersion => 'MyString',                     # OPTIONAL
      Description      => 'MyString',                     # OPTIONAL
      GlossaryTerms    => [ 'MyGlossaryTermId', ... ],    # OPTIONAL
      Name             => 'MyString',                     # OPTIONAL
      UserParameters   => [
        {
          Name  => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                                  # OPTIONAL
    );

    # Results:
    my $AwsAccountId         = $UpdateEnvironmentOutput->AwsAccountId;
    my $AwsAccountRegion     = $UpdateEnvironmentOutput->AwsAccountRegion;
    my $CreatedAt            = $UpdateEnvironmentOutput->CreatedAt;
    my $CreatedBy            = $UpdateEnvironmentOutput->CreatedBy;
    my $DeploymentProperties = $UpdateEnvironmentOutput->DeploymentProperties;
    my $Description          = $UpdateEnvironmentOutput->Description;
    my $DomainId             = $UpdateEnvironmentOutput->DomainId;
    my $EnvironmentActions   = $UpdateEnvironmentOutput->EnvironmentActions;
    my $EnvironmentBlueprintId =
      $UpdateEnvironmentOutput->EnvironmentBlueprintId;
    my $EnvironmentConfigurationId =
      $UpdateEnvironmentOutput->EnvironmentConfigurationId;
    my $EnvironmentProfileId = $UpdateEnvironmentOutput->EnvironmentProfileId;
    my $GlossaryTerms        = $UpdateEnvironmentOutput->GlossaryTerms;
    my $Id                   = $UpdateEnvironmentOutput->Id;
    my $LastDeployment       = $UpdateEnvironmentOutput->LastDeployment;
    my $Name                 = $UpdateEnvironmentOutput->Name;
    my $ProjectId            = $UpdateEnvironmentOutput->ProjectId;
    my $Provider             = $UpdateEnvironmentOutput->Provider;
    my $ProvisionedResources = $UpdateEnvironmentOutput->ProvisionedResources;
    my $ProvisioningProperties =
      $UpdateEnvironmentOutput->ProvisioningProperties;
    my $Status         = $UpdateEnvironmentOutput->Status;
    my $UpdatedAt      = $UpdateEnvironmentOutput->UpdatedAt;
    my $UserParameters = $UpdateEnvironmentOutput->UserParameters;

    # Returns a L<Paws::DataZone::UpdateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 BlueprintVersion => Str

The blueprint version to which the environment should be updated. You
can only specify the following string for this parameter: C<latest>.



=head2 Description => Str

The description to be updated as part of the C<UpdateEnvironment>
action.



=head2 B<REQUIRED> DomainIdentifier => Str

The identifier of the domain in which the environment is to be updated.



=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms to be updated as part of the C<UpdateEnvironment>
action.



=head2 B<REQUIRED> Identifier => Str

The identifier of the environment that is to be updated.



=head2 Name => Str

The name to be updated as part of the C<UpdateEnvironment> action.



=head2 UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentParameter>]

The user parameters of the environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

