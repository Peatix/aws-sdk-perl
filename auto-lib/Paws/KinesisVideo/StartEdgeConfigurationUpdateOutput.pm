
package Paws::KinesisVideo::StartEdgeConfigurationUpdateOutput;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has EdgeConfig => (is => 'ro', isa => 'Paws::KinesisVideo::EdgeConfig');
  has FailedStatusDetails => (is => 'ro', isa => 'Str');
  has LastUpdatedTime => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');
  has SyncStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::StartEdgeConfigurationUpdateOutput

=head1 ATTRIBUTES


=head2 CreationTime => Str

The timestamp at which a streamE<rsquo>s edge configuration was first
created.


=head2 EdgeConfig => L<Paws::KinesisVideo::EdgeConfig>

A description of the stream's edge configuration that will be used to
sync with the Edge Agent IoT Greengrass component. The Edge Agent
component will run on an IoT Hub Device setup at your premise.


=head2 FailedStatusDetails => Str

A description of the generated failure status.


=head2 LastUpdatedTime => Str

The timestamp at which a streamE<rsquo>s edge configuration was last
updated.


=head2 StreamARN => Str

The Amazon Resource Name (ARN) of the stream.


=head2 StreamName => Str

The name of the stream from which the edge configuration was updated.


=head2 SyncStatus => Str

The current sync status of the stream's edge configuration. When you
invoke this API, the sync status will be set to the C<SYNCING> state.
Use the C<DescribeEdgeConfiguration> API to get the latest status of
the edge configuration.

Valid values are: C<"SYNCING">, C<"ACKNOWLEDGED">, C<"IN_SYNC">, C<"SYNC_FAILED">, C<"DELETING">, C<"DELETE_FAILED">, C<"DELETING_ACKNOWLEDGED">
=head2 _request_id => Str


=cut

