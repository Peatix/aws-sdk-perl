
package Paws::PartnerCentralSelling::StartEngagementFromOpportunityTaskResponse;
  use Moose;
  has EngagementId => (is => 'ro', isa => 'Str');
  has EngagementInvitationId => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OpportunityId => (is => 'ro', isa => 'Str');
  has ReasonCode => (is => 'ro', isa => 'Str');
  has ResourceSnapshotJobId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskId => (is => 'ro', isa => 'Str');
  has TaskStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::StartEngagementFromOpportunityTaskResponse

=head1 ATTRIBUTES


=head2 EngagementId => Str

The identifier of the newly created Engagement. Only populated if
TaskStatus is COMPLETE.


=head2 EngagementInvitationId => Str

The identifier of the new Engagement invitation. Only populated if
TaskStatus is COMPLETE.


=head2 Message => Str

If the task fails, this field contains a detailed message describing
the failure and possible recovery steps.


=head2 OpportunityId => Str

Returns the original opportunity identifier passed in the request,
which is the unique identifier for the opportunity created in the
partnerE<rsquo>s system.


=head2 ReasonCode => Str

Indicates the reason for task failure using an enumerated code.

Valid values are: C<"InvitationAccessDenied">, C<"InvitationValidationFailed">, C<"EngagementAccessDenied">, C<"OpportunityAccessDenied">, C<"ResourceSnapshotJobAccessDenied">, C<"ResourceSnapshotJobValidationFailed">, C<"ResourceSnapshotJobConflict">, C<"EngagementValidationFailed">, C<"EngagementConflict">, C<"OpportunitySubmissionFailed">, C<"EngagementInvitationConflict">, C<"InternalError">, C<"OpportunityValidationFailed">, C<"OpportunityConflict">, C<"ResourceSnapshotAccessDenied">, C<"ResourceSnapshotValidationFailed">, C<"ResourceSnapshotConflict">, C<"ServiceQuotaExceeded">, C<"RequestThrottled">
=head2 ResourceSnapshotJobId => Str

The identifier of the resource snapshot job created to add the
opportunity resource snapshot to the Engagement. Only populated if
TaskStatus is COMPLETE


=head2 StartTime => Str

The timestamp indicating when the task was initiated. The format
follows RFC 3339 section 5.6.


=head2 TaskArn => Str

The Amazon Resource Name (ARN) of the task, used for tracking and
managing the task within AWS.


=head2 TaskId => Str

The unique identifier of the task, used to track the taskE<rsquo>s
progress. This value follows a specific pattern: C<^oit-[0-9a-z]{13}$>.


=head2 TaskStatus => Str

Indicates the current status of the task. Valid values include
C<IN_PROGRESS>, C<COMPLETE>, and C<FAILED>.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"FAILED">
=head2 _request_id => Str


=cut

1;