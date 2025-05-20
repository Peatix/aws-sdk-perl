
package Paws::MediaTailor::ConfigureLogsForPlaybackConfigurationResponse;
  use Moose;
  has AdsInteractionLog => (is => 'ro', isa => 'Paws::MediaTailor::AdsInteractionLog');
  has EnabledLoggingStrategies => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ManifestServiceInteractionLog => (is => 'ro', isa => 'Paws::MediaTailor::ManifestServiceInteractionLog');
  has PercentEnabled => (is => 'ro', isa => 'Int', required => 1);
  has PlaybackConfigurationName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ConfigureLogsForPlaybackConfigurationResponse

=head1 ATTRIBUTES


=head2 AdsInteractionLog => L<Paws::MediaTailor::AdsInteractionLog>

The event types that MediaTailor emits in logs for interactions with
the ADS.


=head2 EnabledLoggingStrategies => ArrayRef[Str|Undef]

The method used for collecting logs from AWS Elemental MediaTailor.
C<LEGACY_CLOUDWATCH> indicates that MediaTailor is sending logs
directly to Amazon CloudWatch Logs. C<VENDED_LOGS> indicates that
MediaTailor is sending logs to CloudWatch, which then vends the logs to
your destination of choice. Supported destinations are CloudWatch Logs
log group, Amazon S3 bucket, and Amazon Data Firehose stream.


=head2 ManifestServiceInteractionLog => L<Paws::MediaTailor::ManifestServiceInteractionLog>

The event types that MediaTailor emits in logs for interactions with
the origin server.


=head2 B<REQUIRED> PercentEnabled => Int

The percentage of session logs that MediaTailor sends to your
Cloudwatch Logs account.


=head2 PlaybackConfigurationName => Str

The name of the playback configuration.


=head2 _request_id => Str


=cut

