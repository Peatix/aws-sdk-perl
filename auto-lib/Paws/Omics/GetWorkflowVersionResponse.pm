
package Paws::Omics::GetWorkflowVersionResponse;
  use Moose;
  has Accelerators => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accelerators');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Digest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'digest');
  has Engine => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engine');
  has Main => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'main');
  has Metadata => (is => 'ro', isa => 'Paws::Omics::WorkflowMetadata', traits => ['NameInRequest'], request_name => 'metadata');
  has ParameterTemplate => (is => 'ro', isa => 'Paws::Omics::WorkflowParameterTemplate', traits => ['NameInRequest'], request_name => 'parameterTemplate');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has StorageCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'storageCapacity');
  has StorageType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageType');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has Uuid => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'uuid');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName');
  has WorkflowBucketOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowBucketOwnerId');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetWorkflowVersionResponse

=head1 ATTRIBUTES


=head2 Accelerators => Str

The accelerator for this workflow version.

Valid values are: C<"GPU">
=head2 Arn => Str

ARN of the workflow version.


=head2 CreationTime => Str

When the workflow version was created.


=head2 Definition => Str

Definition of the workflow version.


=head2 Description => Str

Description of the workflow version.


=head2 Digest => Str

The workflow version's digest.


=head2 Engine => Str

The workflow engine for this workflow version.

Valid values are: C<"WDL">, C<"NEXTFLOW">, C<"CWL">
=head2 Main => Str

The path of the main definition file for the workflow.


=head2 Metadata => L<Paws::Omics::WorkflowMetadata>

The metadata for the workflow version.


=head2 ParameterTemplate => L<Paws::Omics::WorkflowParameterTemplate>

The parameter template for the workflow version.


=head2 Status => Str

The workflow version status

Valid values are: C<"CREATING">, C<"ACTIVE">, C<"UPDATING">, C<"DELETED">, C<"FAILED">, C<"INACTIVE">
=head2 StatusMessage => Str

The workflow version status message


=head2 StorageCapacity => Int

The default run storage capacity for static storage.


=head2 StorageType => Str

The default storage type for the run.

Valid values are: C<"STATIC">, C<"DYNAMIC">
=head2 Tags => L<Paws::Omics::TagMap>

The workflow version tags


=head2 Type => Str

The workflow version type

Valid values are: C<"PRIVATE">, C<"READY2RUN">
=head2 Uuid => Str

The universally unique identifier (UUID) value for this workflow
version


=head2 VersionName => Str

The workflow version name.


=head2 WorkflowBucketOwnerId => Str

Amazon Web Services Id of the owner of the bucket.


=head2 WorkflowId => Str

The workflow's ID.


=head2 _request_id => Str


=cut

