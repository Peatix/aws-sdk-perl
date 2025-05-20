
package Paws::DataZone::UpdateProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentDeploymentDetails => (is => 'ro', isa => 'Paws::DataZone::EnvironmentDeploymentDetails', traits => ['NameInRequest'], request_name => 'environmentDeploymentDetails');
  has GlossaryTerms => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'glossaryTerms');
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ProjectProfileVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectProfileVersion');
  has UserParameters => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::EnvironmentConfigurationUserParameter]', traits => ['NameInRequest'], request_name => 'userParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/projects/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateProjectOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateProject - Arguments for method UpdateProject on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateProjectOutput = $datazone->UpdateProject(
      DomainIdentifier             => 'MyDomainId',
      Identifier                   => 'MyProjectId',
      Description                  => 'MyDescription',    # OPTIONAL
      EnvironmentDeploymentDetails => {
        EnvironmentFailureReasons => {
          'MyString' => [
            {
              Message => 'MyString',
              Code    => 'MyString',
            },
            ...
          ],
        },    # OPTIONAL
        OverallDeploymentStatus => 'PENDING_DEPLOYMENT'
        , # values: PENDING_DEPLOYMENT, IN_PROGRESS, SUCCESSFUL, FAILED_VALIDATION, FAILED_DEPLOYMENT; OPTIONAL
      },    # OPTIONAL
      GlossaryTerms         => [ 'MyGlossaryTermId', ... ],    # OPTIONAL
      Name                  => 'MyProjectName',                # OPTIONAL
      ProjectProfileVersion => 'MyString',                     # OPTIONAL
      UserParameters        => [
        {
          EnvironmentConfigurationName =>
            'MyEnvironmentConfigurationName',    # min: 1, max: 64; OPTIONAL
          EnvironmentId         => 'MyEnvironmentId',    # OPTIONAL
          EnvironmentParameters => [
            {
              Name  => 'MyString',
              Value => 'MyString',
            },
            ...
          ],                                             # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreatedAt    = $UpdateProjectOutput->CreatedAt;
    my $CreatedBy    = $UpdateProjectOutput->CreatedBy;
    my $Description  = $UpdateProjectOutput->Description;
    my $DomainId     = $UpdateProjectOutput->DomainId;
    my $DomainUnitId = $UpdateProjectOutput->DomainUnitId;
    my $EnvironmentDeploymentDetails =
      $UpdateProjectOutput->EnvironmentDeploymentDetails;
    my $FailureReasons   = $UpdateProjectOutput->FailureReasons;
    my $GlossaryTerms    = $UpdateProjectOutput->GlossaryTerms;
    my $Id               = $UpdateProjectOutput->Id;
    my $LastUpdatedAt    = $UpdateProjectOutput->LastUpdatedAt;
    my $Name             = $UpdateProjectOutput->Name;
    my $ProjectProfileId = $UpdateProjectOutput->ProjectProfileId;
    my $ProjectStatus    = $UpdateProjectOutput->ProjectStatus;
    my $UserParameters   = $UpdateProjectOutput->UserParameters;

    # Returns a L<Paws::DataZone::UpdateProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateProject>

=head1 ATTRIBUTES


=head2 Description => Str

The description to be updated as part of the C<UpdateProject> action.



=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain where a project is being updated.



=head2 EnvironmentDeploymentDetails => L<Paws::DataZone::EnvironmentDeploymentDetails>

The environment deployment details of the project.



=head2 GlossaryTerms => ArrayRef[Str|Undef]

The glossary terms to be updated as part of the C<UpdateProject>
action.



=head2 B<REQUIRED> Identifier => Str

The identifier of the project that is to be updated.



=head2 Name => Str

The name to be updated as part of the C<UpdateProject> action.



=head2 ProjectProfileVersion => Str

The project profile version to which the project should be updated. You
can only specify the following string for this parameter: C<latest>.



=head2 UserParameters => ArrayRef[L<Paws::DataZone::EnvironmentConfigurationUserParameter>]

The user parameters of the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

