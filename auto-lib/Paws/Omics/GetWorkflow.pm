
package Paws::Omics::GetWorkflow;
  use Moose;
  has Export => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'export');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');
  has WorkflowOwnerId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'workflowOwnerId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::GetWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetWorkflow - Arguments for method GetWorkflow on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetWorkflow on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method GetWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetWorkflow.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $GetWorkflowResponse = $omics->GetWorkflow(
      Id     => 'MyWorkflowId',
      Export => [
        'DEFINITION', ...    # values: DEFINITIONmin: 1, max: 64
      ],    # OPTIONAL
      Type            => 'PRIVATE',              # OPTIONAL
      WorkflowOwnerId => 'MyWorkflowOwnerId',    # OPTIONAL
    );

    # Results:
    my $Accelerators      = $GetWorkflowResponse->Accelerators;
    my $Arn               = $GetWorkflowResponse->Arn;
    my $CreationTime      = $GetWorkflowResponse->CreationTime;
    my $Definition        = $GetWorkflowResponse->Definition;
    my $Description       = $GetWorkflowResponse->Description;
    my $Digest            = $GetWorkflowResponse->Digest;
    my $Engine            = $GetWorkflowResponse->Engine;
    my $Id                = $GetWorkflowResponse->Id;
    my $Main              = $GetWorkflowResponse->Main;
    my $Metadata          = $GetWorkflowResponse->Metadata;
    my $Name              = $GetWorkflowResponse->Name;
    my $ParameterTemplate = $GetWorkflowResponse->ParameterTemplate;
    my $Status            = $GetWorkflowResponse->Status;
    my $StatusMessage     = $GetWorkflowResponse->StatusMessage;
    my $StorageCapacity   = $GetWorkflowResponse->StorageCapacity;
    my $StorageType       = $GetWorkflowResponse->StorageType;
    my $Tags              = $GetWorkflowResponse->Tags;
    my $Type              = $GetWorkflowResponse->Type;
    my $Uuid              = $GetWorkflowResponse->Uuid;

    # Returns a L<Paws::Omics::GetWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/GetWorkflow>

=head1 ATTRIBUTES


=head2 Export => ArrayRef[Str|Undef]

The export format for the workflow.



=head2 B<REQUIRED> Id => Str

The workflow's ID.



=head2 Type => Str

The workflow's type.

Valid values are: C<"PRIVATE">, C<"READY2RUN">

=head2 WorkflowOwnerId => Str

The ID of the workflow owner.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetWorkflow in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

