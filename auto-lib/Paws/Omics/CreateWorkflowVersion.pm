
package Paws::Omics::CreateWorkflowVersion;
  use Moose;
  has Accelerators => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accelerators');
  has DefinitionUri => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definitionUri');
  has DefinitionZip => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definitionZip');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Engine => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engine');
  has Main => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'main');
  has ParameterTemplate => (is => 'ro', isa => 'Paws::Omics::WorkflowParameterTemplate', traits => ['NameInRequest'], request_name => 'parameterTemplate');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId', required => 1);
  has StorageCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageCapacity');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName', required => 1);
  has WorkflowBucketOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBucketOwnerId');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workflowId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkflowVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workflow/{workflowId}/version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Omics::CreateWorkflowVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateWorkflowVersion - Arguments for method CreateWorkflowVersion on L<Paws::Omics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkflowVersion on the
L<Amazon Omics|Paws::Omics> service. Use the attributes of this class
as arguments to method CreateWorkflowVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkflowVersion.

=head1 SYNOPSIS

    my $omics = Paws->service('Omics');
    my $CreateWorkflowVersionResponse = $omics->CreateWorkflowVersion(
      RequestId         => 'MyWorkflowRequestId',
      VersionName       => 'MyWorkflowVersionName',
      WorkflowId        => 'MyWorkflowId',
      Accelerators      => 'GPU',                             # OPTIONAL
      DefinitionUri     => 'MyWorkflowDefinition',            # OPTIONAL
      DefinitionZip     => 'BlobBlob',                        # OPTIONAL
      Description       => 'MyWorkflowVersionDescription',    # OPTIONAL
      Engine            => 'WDL',                             # OPTIONAL
      Main              => 'MyWorkflowMain',                  # OPTIONAL
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
      WorkflowBucketOwnerId => 'MyWorkflowBucketOwnerId',    # OPTIONAL
    );

    # Results:
    my $Arn         = $CreateWorkflowVersionResponse->Arn;
    my $Status      = $CreateWorkflowVersionResponse->Status;
    my $Tags        = $CreateWorkflowVersionResponse->Tags;
    my $Uuid        = $CreateWorkflowVersionResponse->Uuid;
    my $VersionName = $CreateWorkflowVersionResponse->VersionName;
    my $WorkflowId  = $CreateWorkflowVersionResponse->WorkflowId;

    # Returns a L<Paws::Omics::CreateWorkflowVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/omics/CreateWorkflowVersion>

=head1 ATTRIBUTES


=head2 Accelerators => Str

The computational accelerator for this workflow version.

Valid values are: C<"GPU">

=head2 DefinitionUri => Str

The URI specifies the location of the workflow definition for this
workflow version.



=head2 DefinitionZip => Str

A zip archive containing the workflow definition for this workflow
version.



=head2 Description => Str

A description for this workflow version.



=head2 Engine => Str

The workflow engine for this workflow version.

Valid values are: C<"WDL">, C<"NEXTFLOW">, C<"CWL">

=head2 Main => Str

The path of the main definition file for this workflow version.



=head2 ParameterTemplate => L<Paws::Omics::WorkflowParameterTemplate>

The parameter template defines the input parameters for runs that use
this workflow version.



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

Optional tags to associate with this workflow version.



=head2 B<REQUIRED> VersionName => Str

A name for the workflow version. Provide a version name that is unique
for this workflow. You cannot change the name after HealthOmics creates
the version.

The version name must start with a letter or number and it can include
upper-case and lower-case letters, numbers, hyphens, periods and
underscores. The maximum length is 64 characters. You can use a simple
naming scheme, such as version1, version2, version3. You can also match
your workflow versions with your own internal versioning conventions,
such as 2.7.0, 2.7.1, 2.7.2.



=head2 WorkflowBucketOwnerId => Str

Amazon Web Services Id of the owner of the S3 bucket that contains the
workflow definition. You need to specify this parameter if your account
is not the bucket owner.



=head2 B<REQUIRED> WorkflowId => Str

The ID of the workflow where you are creating the new version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkflowVersion in L<Paws::Omics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

