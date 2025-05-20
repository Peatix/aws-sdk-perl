
package Paws::MigrationHubOrchestrator::DeleteMigrationWorkflowResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubOrchestrator::DeleteMigrationWorkflowResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the migration workflow.


=head2 Id => Str

The ID of the migration workflow.


=head2 Status => Str

The status of the migration workflow.

Valid values are: C<"CREATING">, C<"NOT_STARTED">, C<"CREATION_FAILED">, C<"STARTING">, C<"IN_PROGRESS">, C<"WORKFLOW_FAILED">, C<"PAUSED">, C<"PAUSING">, C<"PAUSING_FAILED">, C<"USER_ATTENTION_REQUIRED">, C<"DELETING">, C<"DELETION_FAILED">, C<"DELETED">, C<"COMPLETED">
=head2 _request_id => Str


=cut

