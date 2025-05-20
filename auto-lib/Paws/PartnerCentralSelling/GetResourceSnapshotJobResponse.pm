
package Paws::PartnerCentralSelling::GetResourceSnapshotJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Catalog => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str');
  has EngagementId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastFailure => (is => 'ro', isa => 'Str');
  has LastSuccessfulExecutionDate => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceSnapshotTemplateName => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PartnerCentralSelling::GetResourceSnapshotJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the snapshot job. This globally
unique identifier can be used for resource-specific operations across
AWS services.


=head2 B<REQUIRED> Catalog => Str

The catalog in which the snapshot job was created. This will match the
Catalog specified in the request.


=head2 CreatedAt => Str

The date and time when the snapshot job was created in ISO 8601 format
(UTC). Example: "2023-05-01T20:37:46Z"


=head2 EngagementId => Str

The identifier of the engagement associated with this snapshot job.
This links the job to a specific engagement context.


=head2 Id => Str

The unique identifier of the snapshot job. This matches the
ResourceSnapshotJobIdentifier provided in the request.


=head2 LastFailure => Str

If the job has encountered any failures, this field contains the error
message from the most recent failure. This can be useful for
troubleshooting issues with the job.


=head2 LastSuccessfulExecutionDate => Str

The date and time of the last successful execution of the job, in ISO
8601 format (UTC). Example: "2023-05-01T20:37:46Z"


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource being snapshotted. This
provides a globally unique identifier for the resource across AWS.


=head2 ResourceId => Str

The identifier of the specific resource being snapshotted. The format
might vary depending on the ResourceType.


=head2 ResourceSnapshotTemplateName => Str

The name of the template used for creating the snapshot. This is the
same as the template name. It defines the structure and content of the
snapshot.


=head2 ResourceType => Str

The type of resource being snapshotted. This would have "Opportunity"
as a value as it is dependent on the supported resource type.

Valid values are: C<"Opportunity">
=head2 Status => Str

The current status of the snapshot job. Valid values:

=over

=item *

STOPPED: The job is not currently running.

=item *

RUNNING: The job is actively executing.

=back


Valid values are: C<"Running">, C<"Stopped">
=head2 _request_id => Str


=cut

1;