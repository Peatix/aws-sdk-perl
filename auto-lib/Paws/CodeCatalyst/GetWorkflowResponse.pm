
package Paws::CodeCatalyst::GetWorkflowResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTime', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::CodeCatalyst::WorkflowDefinition', traits => ['NameInRequest'], request_name => 'definition', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTime', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has RunMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runMode', required => 1);
  has SourceBranchName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceBranchName');
  has SourceRepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRepositoryName');
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetWorkflowResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTime => Str

The date and time the workflow was created, in coordinated universal
time (UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6)


=head2 B<REQUIRED> Definition => L<Paws::CodeCatalyst::WorkflowDefinition>

Information about the workflow definition file for the workflow.


=head2 B<REQUIRED> Id => Str

The ID of the workflow.


=head2 B<REQUIRED> LastUpdatedTime => Str

The date and time the workflow was last updated, in coordinated
universal time (UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6)


=head2 B<REQUIRED> Name => Str

The name of the workflow.


=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 B<REQUIRED> RunMode => Str

The behavior to use when multiple workflows occur at the same time. For
more information, see
https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html
(https://docs.aws.amazon.com/codecatalyst/latest/userguide/workflows-configure-runs.html)
in the Amazon CodeCatalyst User Guide.

Valid values are: C<"QUEUED">, C<"PARALLEL">, C<"SUPERSEDED">
=head2 SourceBranchName => Str

The name of the branch that contains the workflow YAML.


=head2 SourceRepositoryName => Str

The name of the source repository where the workflow YAML is stored.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 B<REQUIRED> Status => Str

The status of the workflow.

Valid values are: C<"INVALID">, C<"ACTIVE">
=head2 _request_id => Str


=cut

