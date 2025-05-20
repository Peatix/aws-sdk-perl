
package Paws::CodeCatalyst::GetWorkflow;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'spaceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/spaces/{spaceName}/projects/{projectName}/workflows/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCatalyst::GetWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetWorkflow - Arguments for method GetWorkflow on L<Paws::CodeCatalyst>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflow on the
L<Amazon CodeCatalyst|Paws::CodeCatalyst> service. Use the attributes of this class
as arguments to method GetWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflow.

=head1 SYNOPSIS

    my $codecatalyst = Paws->service('CodeCatalyst');
    my $GetWorkflowResponse = $codecatalyst->GetWorkflow(
      Id          => 'MyUuid',
      ProjectName => 'MyGetWorkflowRequestProjectNameString',
      SpaceName   => 'MyNameString',

    );

    # Results:
    my $CreatedTime          = $GetWorkflowResponse->CreatedTime;
    my $Definition           = $GetWorkflowResponse->Definition;
    my $Id                   = $GetWorkflowResponse->Id;
    my $LastUpdatedTime      = $GetWorkflowResponse->LastUpdatedTime;
    my $Name                 = $GetWorkflowResponse->Name;
    my $ProjectName          = $GetWorkflowResponse->ProjectName;
    my $RunMode              = $GetWorkflowResponse->RunMode;
    my $SourceBranchName     = $GetWorkflowResponse->SourceBranchName;
    my $SourceRepositoryName = $GetWorkflowResponse->SourceRepositoryName;
    my $SpaceName            = $GetWorkflowResponse->SpaceName;
    my $Status               = $GetWorkflowResponse->Status;

    # Returns a L<Paws::CodeCatalyst::GetWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecatalyst/GetWorkflow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the workflow. To rerieve a list of workflow IDs, use
ListWorkflows.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.



=head2 B<REQUIRED> SpaceName => Str

The name of the space.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflow in L<Paws::CodeCatalyst>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

