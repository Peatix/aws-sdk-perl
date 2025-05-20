
package Paws::MediaPackageV2::CreateHarvestJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::MediaPackageV2::Destination', required => 1);
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has HarvestedManifests => (is => 'ro', isa => 'Paws::MediaPackageV2::HarvestedManifests', required => 1);
  has HarvestJobName => (is => 'ro', isa => 'Str', required => 1);
  has ModifiedAt => (is => 'ro', isa => 'Str', required => 1);
  has OriginEndpointName => (is => 'ro', isa => 'Str', required => 1);
  has ScheduleConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::HarvesterScheduleConfiguration', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::CreateHarvestJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the created harvest job.


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group containing the channel from which content
is being harvested.


=head2 B<REQUIRED> ChannelName => Str

The name of the channel from which content is being harvested.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the harvest job was created.


=head2 Description => Str

The description of the harvest job, if provided.


=head2 B<REQUIRED> Destination => L<Paws::MediaPackageV2::Destination>

The S3 destination where the harvested content will be placed.


=head2 ErrorMessage => Str

An error message if the harvest job creation failed.


=head2 ETag => Str

The current version of the harvest job. Used for concurrency control.


=head2 B<REQUIRED> HarvestedManifests => L<Paws::MediaPackageV2::HarvestedManifests>

A list of manifests that will be harvested.


=head2 B<REQUIRED> HarvestJobName => Str

The name of the created harvest job.


=head2 B<REQUIRED> ModifiedAt => Str

The date and time the harvest job was last modified.


=head2 B<REQUIRED> OriginEndpointName => Str

The name of the origin endpoint from which content is being harvested.


=head2 B<REQUIRED> ScheduleConfiguration => L<Paws::MediaPackageV2::HarvesterScheduleConfiguration>

The configuration for when the harvest job will run, including start
and end times.


=head2 B<REQUIRED> Status => Str

The current status of the harvest job (e.g., CREATED, IN_PROGRESS,
ABORTED, COMPLETED, FAILED).

Valid values are: C<"QUEUED">, C<"IN_PROGRESS">, C<"CANCELLED">, C<"COMPLETED">, C<"FAILED">
=head2 Tags => L<Paws::MediaPackageV2::TagMap>

A collection of tags associated with the harvest job.


=head2 _request_id => Str


=cut

