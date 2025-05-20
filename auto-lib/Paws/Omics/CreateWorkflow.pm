
package Paws::Omics::CreateWorkflow;
  use Moose;
  has Accelerators => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accelerators');
  has DefinitionUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definitionUri');
  has DefinitionZip => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definitionZip');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Engine => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engine');
  has Main => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'main');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ParameterTemplate => (is => 'ro', isa => 'Paws::Omics::WorkflowParameterTemplate', traits => ['NameInRequest'], request_name => 'parameterTemplate');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId', required => 1);
  has StorageCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageCapacity');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkflow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateWorkflowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateWorkflow - Arguments for method CreateWorkflow on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkflow on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateWorkflow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkflow.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateWorkflowResponse = $omics->CreateWorkflow(
      RequestId         => 'MyWorkflowRequestId',
      Accelerators      => 'GPU',                      # OPTIONAL
      DefinitionUri     => 'MyWorkflowDefinition',     # OPTIONAL
      DefinitionZip     => 'BlobBlob',                 # OPTIONAL
      Description       => 'MyWorkflowDescription',    # OPTIONAL
      Engine            => 'WDL',                      # OPTIONAL
      Main              => 'MyWorkflowMain',           # OPTIONAL
      Name              => 'MyWorkflowName',           # OPTIONAL
      ParameterTemplate => {
        'MyWorkflowParameterName' => {
          Description => 'MyWorkflowParameterDescription',  # max: 256; OPTIONAL
          Optional    => 1,                                 # OPTIONAL
        },    # key: min: 1, max: 128
      },    # OPTIONAL
      StorageCapacity => 1,           # OPTIONAL
      StorageType     => 'STATIC',    # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn    = $CreateWorkflowResponse->Arn;
    my $Id     = $CreateWorkflowResponse->Id;
    my $Status = $CreateWorkflowResponse->Status;
    my $Tags   = $CreateWorkflowResponse->Tags;
    my $Uuid   = $CreateWorkflowResponse->Uuid;

    # Returns a L<Paws::Omics::CreateWorkflowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateWorkflow>

=head1 ATTRIBUTES


=head2 Accelerators => Str

The computational accelerator specified to run the workflow.

Valid values are: C<"GPU">

=head2 DefinitionUri => Str

The URI of a definition for the workflow.



=head2 DefinitionZip => Str

A ZIP archive for the workflow.



=head2 Description => Str

A description for the workflow.



=head2 Engine => Str

The workflow engine for the workflow.

Valid values are: C<"WDL">, C<"NEXTFLOW">, C<"CWL">

=head2 Main => Str

The path of the main definition file for the workflow.



=head2 Name => Str

A name for the workflow.



=head2 ParameterTemplate => L<Paws::Omics::WorkflowParameterTemplate>

A parameter template for the workflow.



=head2 B<REQUIRED> RequestId => Str

To ensure that requests don't run multiple times, specify a unique ID
for each request.



=head2 StorageCapacity => Int

The default static storage capacity (in gibibytes) for runs that use
this workflow or workflow version.



=head2 StorageType => Str

The default storage type for runs that use this workflow. STATIC
storage allocates a fixed amount of storage. DYNAMIC storage
dynamically scales the storage up or down, based on file system
utilization. For more information about static and dynamic storage, see
Running workflows
(https://docs.aws.amazon.com/omics/latest/dev/Using-workflows.html) in
the I<Amazon Web Services HealthOmics User Guide>.

Valid values are: C<"STATIC">, C<"DYNAMIC">

=head2 Tags => L<Paws::Omics::TagMap>

Tags for the workflow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkflow in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

