
package Paws::Omics::GetWorkflowResponse;
  use Moose;
  has Accelerators => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accelerators');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Digest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'digest');
  has Engine => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engine');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Main => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'main');
  has Metadata => (is => 'ro', isa => 'Paws::Omics::WorkflowMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ParameterTemplate => (is => 'ro', isa => 'Paws::Omics::WorkflowParameterTemplate', traits => ['NameInRequest'], request_name => 'parameterTemplate');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has StorageCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageCapacity');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has Uuid => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uuid');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetWorkflowResponse

=head1 ATTRIBUTES


=head2 Accelerators => Str

The computational accelerator specified to run the workflow.

Valid values are: C<"GPU">
=head2 Arn => Str

The workflow's ARN.


=head2 CreationTime => Str

When the workflow was created.


=head2 Definition => Str

The workflow's definition.


=head2 Description => Str

The workflow's description.


=head2 Digest => Str

The workflow's digest.


=head2 Engine => Str

The workflow's engine.

Valid values are: C<"WDL">, C<"NEXTFLOW">, C<"CWL">
=head2 Id => Str

The workflow's ID.


=head2 Main => Str

The path of the main definition file for the workflow.


=head2 Metadata => L<Paws::Omics::WorkflowMetadata>

Gets metadata for the workflow.


=head2 Name => Str

The workflow's name.


=head2 ParameterTemplate => L<Paws::Omics::WorkflowParameterTemplate>

The workflow's parameter template.


=head2 Status => Str

The workflow's status.

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"UPDATING">, C<"DELETED">, C<"FAILED">, C<"INACTIVE">
=head2 StatusMessage => Str

The workflow's status message.


=head2 StorageCapacity => Int

The default static storage capacity (in gibibytes) for runs that use
this workflow or workflow version.


=head2 StorageType => Str

The default storage type for runs using this workflow.

Valid values are: C<"STATIC">, C<"DYNAMIC">
=head2 Tags => L<Paws::Omics::TagMap>

The workflow's tags.


=head2 Type => Str

The workflow's type.

Valid values are: C<"PRIVATE">, C<"READY2RUN">
=head2 Uuid => Str

The universally unique identifier (UUID) value for this workflow.


=head2 _request_id => Str


=cut

