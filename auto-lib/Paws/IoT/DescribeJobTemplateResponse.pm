
package Paws::IoT::DescribeJobTemplateResponse;
  use Moose;
  has AbortConfig => (is => 'ro', isa => 'Paws::IoT::AbortConfig', traits => ['NameInRequest'], request_name => 'abortConfig');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DestinationPackageVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'destinationPackageVersions');
  has Document => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'document');
  has DocumentSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documentSource');
  has JobExecutionsRetryConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRetryConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRetryConfig');
  has JobExecutionsRolloutConfig => (is => 'ro', isa => 'Paws::IoT::JobExecutionsRolloutConfig', traits => ['NameInRequest'], request_name => 'jobExecutionsRolloutConfig');
  has JobTemplateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplateArn');
  has JobTemplateId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobTemplateId');
  has MaintenanceWindows => (is => 'ro', isa => 'ArrayRef[Paws::IoT::MaintenanceWindow]', traits => ['NameInRequest'], request_name => 'maintenanceWindows');
  has PresignedUrlConfig => (is => 'ro', isa => 'Paws::IoT::PresignedUrlConfig', traits => ['NameInRequest'], request_name => 'presignedUrlConfig');
  has TimeoutConfig => (is => 'ro', isa => 'Paws::IoT::TimeoutConfig', traits => ['NameInRequest'], request_name => 'timeoutConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJobTemplateResponse

=head1 ATTRIBUTES


=head2 AbortConfig => L<Paws::IoT::AbortConfig>




=head2 CreatedAt => Str

The time, in seconds since the epoch, when the job template was
created.


=head2 Description => Str

A description of the job template.


=head2 DestinationPackageVersions => ArrayRef[Str|Undef]

The package version Amazon Resource Names (ARNs) that are installed on
the device when the job successfully completes. The package version
must be in either the Published or Deprecated state when the job
deploys. For more information, see Package version lifecycle
(https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle).

B<Note:>The following Length Constraints relates to a single ARN. Up to
25 package version ARNs are allowed.


=head2 Document => Str

The job document.


=head2 DocumentSource => Str

An S3 link to the job document.


=head2 JobExecutionsRetryConfig => L<Paws::IoT::JobExecutionsRetryConfig>

The configuration that determines how many retries are allowed for each
failure type for a job.


=head2 JobExecutionsRolloutConfig => L<Paws::IoT::JobExecutionsRolloutConfig>




=head2 JobTemplateArn => Str

The ARN of the job template.


=head2 JobTemplateId => Str

The unique identifier of the job template.


=head2 MaintenanceWindows => ArrayRef[L<Paws::IoT::MaintenanceWindow>]

Allows you to configure an optional maintenance window for the rollout
of a job document to all devices in the target group for a job.


=head2 PresignedUrlConfig => L<Paws::IoT::PresignedUrlConfig>




=head2 TimeoutConfig => L<Paws::IoT::TimeoutConfig>




=head2 _request_id => Str


=cut

