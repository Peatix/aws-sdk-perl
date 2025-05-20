
package Paws::MigrationHubOrchestrator::GetMigrationWorkflowTemplateResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Inputs => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::TemplateInput]', traits => ['NameInRequest'], request_name => 'inputs');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage');
  has Tags => (is => 'ro', isa => 'Paws::MigrationHubOrchestrator::StringMap', traits => ['NameInRequest'], request_name => 'tags');
  has TemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateArn');
  has TemplateClass => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'templateClass');
  has Tools => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubOrchestrator::Tool]', traits => ['NameInRequest'], request_name => 'tools');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::GetMigrationWorkflowTemplateResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time at which the template was last created.


=head2 Description => Str

The time at which the template was last created.


=head2 Id => Str

The ID of the template.


=head2 Inputs => ArrayRef[L<Paws::MigrationHubOrchestrator::TemplateInput>]

The inputs provided for the creation of the migration workflow.


=head2 Name => Str

The name of the template.


=head2 Owner => Str

The owner of the migration workflow template.


=head2 Status => Str

The status of the template.

Valid values are: C<"CREATED">, C<"READY">, C<"PENDING_CREATION">, C<"CREATING">, C<"CREATION_FAILED">
=head2 StatusMessage => Str

The status message of retrieving migration workflow templates.


=head2 Tags => L<Paws::MigrationHubOrchestrator::StringMap>

The tags added to the migration workflow template.


=head2 TemplateArn => Str

E<gt>The Amazon Resource Name (ARN) of the migration workflow template.
The format for an Migration Hub Orchestrator template ARN is
C<arn:aws:migrationhub-orchestrator:region:account:template/template-abcd1234>.
For more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference-arns.html)
in the I<AWS General Reference>.


=head2 TemplateClass => Str

The class of the migration workflow template. The available template
classes are:

=over

=item *

A2C

=item *

MGN

=item *

SAP_MULTI

=item *

SQL_EC2

=item *

SQL_RDS

=item *

VMIE

=back



=head2 Tools => ArrayRef[L<Paws::MigrationHubOrchestrator::Tool>]

List of AWS services utilized in a migration workflow.


=head2 _request_id => Str


=cut

