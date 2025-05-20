
package Paws::DataZone::CreateProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has DomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainUnitId');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectProfileId');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentConfigurationUserParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::CreateProjectOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::CreateProject - Arguments for method CreateProject on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $CreateProjectOutput = $datazone->CreateProject(
      DomainIdentifier => 'MyDomainId',
      Name             => 'MyProjectName',
      Description      => 'MyDescription',                # OPTIONAL
      DomainUnitId     => 'MyDomainUnitId',               # OPTIONAL
      GlossaryTerms    => [ 'MyGlossaryTermId', ... ],    # OPTIONAL
      ProjectProfileId => 'MyProjectProfileId',           # OPTIONAL
      UserParameters   => [
        {
          EnvironmentConfigurationName =>
            'MyEnvironmentConfigurationName',    # min: 1, max: 64; OPTIONAL
          EnvironmentId         => 'MyEnvironmentId',    # OPTIONAL
          EnvironmentParameters => [
            {
              Name  => 'MyString',    # OPTIONAL
              Value => 'MyString',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedAt    = $CreateProjectOutput->CreatedAt;
    my $CreatedBy    = $CreateProjectOutput->CreatedBy;
    my $Description  = $CreateProjectOutput->Description;
    my $DomainId     = $CreateProjectOutput->DomainId;
    my $DomainUnitId = $CreateProjectOutput->DomainUnitId;
    my $EnvironmentDeploymentDetails =
      $CreateProjectOutput->EnvironmentDeploymentDetails;
    my $FailureReasons   = $CreateProjectOutput->FailureReasons;
    my $GlossaryTerms    = $CreateProjectOutput->GlossaryTerms;
    my $Id               = $CreateProjectOutput->Id;
    my $LastUpdatedAt    = $CreateProjectOutput->LastUpdatedAt;
    my $Name             = $CreateProjectOutput->Name;
    my $ProjectProfileId = $CreateProjectOutput->ProjectProfileId;
    my $ProjectStatus    = $CreateProjectOutput->ProjectStatus;
    my $UserParameters   = $CreateProjectOutput->UserParameters;

    # Returns a L<Paws::DataZone::CreateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/CreateProject>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the Amazon DataZone project.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which this project is created.



=head2 DomainUnitId => Str

The ID of the domain unit. This parameter is not required and if it is
not specified, then the project is created at the root domain unit
level.



=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms that can be used in this Amazon DataZone project.



=head2 B<REQUIRED> Name => Str

The name of the Amazon DataZone project.



=head2 ProjectProfileId => Str

The ID of the project profile.



=head2 UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentConfigurationUserParameter>]

The user parameters of the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

