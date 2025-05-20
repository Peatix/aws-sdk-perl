
package Paws::EntityResolution::GetIdMappingWorkflowOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IdMappingTechniques => (is => 'ro', isa => 'Paws::EntityResolution::IdMappingTechniques', traits => ['NameInRequest'], request_name => 'idMappingTechniques', required => 1);
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingWorkflowInputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig', required => 1);
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingWorkflowOutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Tags => (is => 'ro', isa => 'Paws::EntityResolution::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has WorkflowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowArn', required => 1);
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetIdMappingWorkflowOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the workflow was created.


=head2 Description => Str

A description of the workflow.


=head2 B<REQUIRED> IdMappingTechniques => L<Paws::EntityResolution::IdMappingTechniques>

An object which defines the ID mapping technique and any additional
configurations.


=head2 B<REQUIRED> InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowInputSource>]

A list of C<InputSource> objects, which have the fields
C<InputSourceARN> and C<SchemaName>.


=head2 OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowOutputSource>]

A list of C<OutputSource> objects, each of which contains fields
C<OutputS3Path> and C<KMSArn>.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to access Amazon Web Services resources on your
behalf.


=head2 Tags => L<Paws::EntityResolution::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the workflow was last updated.


=head2 B<REQUIRED> WorkflowArn => Str

The ARN (Amazon Resource Name) that Entity Resolution generated for the
C<IdMappingWorkflow> .


=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow.


=head2 _request_id => Str


=cut

