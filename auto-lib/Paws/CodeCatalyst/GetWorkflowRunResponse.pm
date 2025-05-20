
package Paws::CodeCatalyst::GetWorkflowRunResponse;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedTime', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);
  has SpaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spaceName', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReasons => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::WorkflowRunStatusReason]', traits => ['NameInRequest'], request_name => 'statusReasons');
  has WorkflowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workflowId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::GetWorkflowRunResponse

=head1 ATTRIBUTES


=head2 EndTime => Str

The date and time the workflow run ended, in coordinated universal time
(UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6).


=head2 B<REQUIRED> Id => Str

The ID of the workflow run.


=head2 B<REQUIRED> LastUpdatedTime => Str

The date and time the workflow run status was last updated, in
coordinated universal time (UTC) timestamp format as specified in RFC
3339 (https://www.rfc-editor.org/rfc/rfc3339#section-5.6)


=head2 B<REQUIRED> ProjectName => Str

The name of the project in the space.


=head2 B<REQUIRED> SpaceName => Str

The name of the space.


=head2 B<REQUIRED> StartTime => Str

The date and time the workflow run began, in coordinated universal time
(UTC) timestamp format as specified in RFC 3339
(https://www.rfc-editor.org/rfc/rfc3339#section-5.6)


=head2 B<REQUIRED> Status => Str

The status of the workflow run.

Valid values are: C<"SUCCEEDED">, C<"FAILED">, C<"STOPPED">, C<"SUPERSEDED">, C<"CANCELLED">, C<"NOT_RUN">, C<"VALIDATING">, C<"PROVISIONING">, C<"IN_PROGRESS">, C<"STOPPING">, C<"ABANDONED">
=head2 StatusReasons => ArrayRef[L<Paws::CodeCatalyst::WorkflowRunStatusReason>]

Information about the reasons for the status of the workflow run.


=head2 B<REQUIRED> WorkflowId => Str

The ID of the workflow.


=head2 _request_id => Str


=cut

