
package Paws::Datasync::DescribeDiscoveryJobResponse;
  use Moose;
  has CollectionDurationMinutes => (is => 'ro', isa => 'Int');
  has DiscoveryJobArn => (is => 'ro', isa => 'Str');
  has JobEndTime => (is => 'ro', isa => 'Str');
  has JobStartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StorageSystemArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::DescribeDiscoveryJobResponse

=head1 ATTRIBUTES


=head2 CollectionDurationMinutes => Int

The number of minutes that the discovery job runs.


=head2 DiscoveryJobArn => Str

The ARN of the discovery job.


=head2 JobEndTime => Str

The time when the discovery job ended.


=head2 JobStartTime => Str

The time when the discovery job started.


=head2 Status => Str

Indicates the status of a discovery job. For more information, see
Discovery job statuses
(https://docs.aws.amazon.com/datasync/latest/userguide/discovery-job-statuses.html#discovery-job-statuses-table).

Valid values are: C<"RUNNING">, C<"WARNING">, C<"TERMINATED">, C<"FAILED">, C<"STOPPED">, C<"COMPLETED">, C<"COMPLETED_WITH_ISSUES">
=head2 StorageSystemArn => Str

The ARN of the on-premises storage system you're running the discovery
job on.


=head2 _request_id => Str


=cut

1;