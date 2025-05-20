
package Paws::EntityResolution::GetMatchingWorkflowOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has IncrementalRunConfig => (is => 'ro', isa => 'Paws::EntityResolution::IncrementalRunConfig', traits => ['NameInRequest'], request_name => 'incrementalRunConfig');
  has InputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::InputSource]', traits => ['NameInRequest'], request_name => 'inputSourceConfig', required => 1);
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::OutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig', required => 1);
  has ResolutionTechniques => (is => 'ro', isa => 'Paws::EntityResolution::ResolutionTechniques', traits => ['NameInRequest'], request_name => 'resolutionTechniques', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EntityResolution::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);
  has WorkflowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowArn', required => 1);
  has WorkflowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetMatchingWorkflowOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when the workflow was created.


=head2 Description => Str

A description of the workflow.


=head2 IncrementalRunConfig => L<Paws::EntityResolution::IncrementalRunConfig>

An object which defines an incremental run type and has only
C<incrementalRunType> as a field.


=head2 B<REQUIRED> InputSourceConfig => ArrayRef[L<Paws::EntityResolution::InputSource>]

A list of C<InputSource> objects, which have the fields
C<InputSourceARN> and C<SchemaName>.


=head2 B<REQUIRED> OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::OutputSource>]

A list of C<OutputSource> objects, each of which contains fields
C<OutputS3Path>, C<ApplyNormalization>, and C<Output>.


=head2 B<REQUIRED> ResolutionTechniques => L<Paws::EntityResolution::ResolutionTechniques>

An object which defines the C<resolutionType> and the
C<ruleBasedProperties>.


=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role. Entity Resolution
assumes this role to access Amazon Web Services resources on your
behalf.


=head2 Tags => L<Paws::EntityResolution::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the workflow was last updated.


=head2 B<REQUIRED> WorkflowArn => Str

The ARN (Amazon Resource Name) that Entity Resolution generated for the
C<MatchingWorkflow>.


=head2 B<REQUIRED> WorkflowName => Str

The name of the workflow.


=head2 _request_id => Str


=cut

