
package Paws::DataZone::GetProject;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/projects/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetProjectOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetProject - Arguments for method GetProject on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProject on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProject.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetProjectOutput = $datazone->GetProject(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyProjectId',

    );

    # Results:
    my $CreatedAt    = $GetProjectOutput->CreatedAt;
    my $CreatedBy    = $GetProjectOutput->CreatedBy;
    my $Description  = $GetProjectOutput->Description;
    my $DomainId     = $GetProjectOutput->DomainId;
    my $DomainUnitId = $GetProjectOutput->DomainUnitId;
    my $EnvironmentDeploymentDetails =
      $GetProjectOutput->EnvironmentDeploymentDetails;
    my $FailureReasons   = $GetProjectOutput->FailureReasons;
    my $GlossaryTerms    = $GetProjectOutput->GlossaryTerms;
    my $Id               = $GetProjectOutput->Id;
    my $LastUpdatedAt    = $GetProjectOutput->LastUpdatedAt;
    my $Name             = $GetProjectOutput->Name;
    my $ProjectProfileId = $GetProjectOutput->ProjectProfileId;
    my $ProjectStatus    = $GetProjectOutput->ProjectStatus;
    my $UserParameters   = $GetProjectOutput->UserParameters;

    # Returns a L<Paws::DataZone::GetProjectOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetProject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the project exists.



=head2 B<REQUIRED> Identifier => Str

The ID of the project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProject in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

