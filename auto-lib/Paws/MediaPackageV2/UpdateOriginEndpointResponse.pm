
package Paws::MediaPackageV2::UpdateOriginEndpointResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has ContainerType => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has DashManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::GetDashManifestConfiguration]');
  has Description => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has ForceEndpointErrorConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::ForceEndpointErrorConfiguration');
  has HlsManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::GetHlsManifestConfiguration]');
  has LowLatencyHlsManifests => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::GetLowLatencyHlsManifestConfiguration]');
  has ModifiedAt => (is => 'ro', isa => 'Str', required => 1);
  has OriginEndpointName => (is => 'ro', isa => 'Str', required => 1);
  has Segment => (is => 'ro', isa => 'Paws::MediaPackageV2::Segment', required => 1);
  has StartoverWindowSeconds => (is => 'ro', isa => 'Int');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::UpdateOriginEndpointResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The ARN associated with the resource.


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.


=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group.


=head2 B<REQUIRED> ContainerType => Str

The type of container attached to this origin endpoint.

Valid values are: C<"TS">, C<"CMAF">
=head2 B<REQUIRED> CreatedAt => Str

The date and time the origin endpoint was created.


=head2 DashManifests => ArrayRef[L<Paws::MediaPackageV2::GetDashManifestConfiguration>]

A DASH manifest configuration.


=head2 Description => Str

The description of the origin endpoint.


=head2 ETag => Str

The current Entity Tag (ETag) associated with this resource. The entity
tag can be used to safely make concurrent updates to the resource.


=head2 ForceEndpointErrorConfiguration => L<Paws::MediaPackageV2::ForceEndpointErrorConfiguration>

The failover settings for the endpoint.


=head2 HlsManifests => ArrayRef[L<Paws::MediaPackageV2::GetHlsManifestConfiguration>]

An HTTP live streaming (HLS) manifest configuration.


=head2 LowLatencyHlsManifests => ArrayRef[L<Paws::MediaPackageV2::GetLowLatencyHlsManifestConfiguration>]

A low-latency HLS manifest configuration.


=head2 B<REQUIRED> ModifiedAt => Str

The date and time the origin endpoint was modified.


=head2 B<REQUIRED> OriginEndpointName => Str

The name that describes the origin endpoint. The name is the primary
identifier for the origin endpoint, and and must be unique for your
account in the AWS Region and channel.


=head2 B<REQUIRED> Segment => L<Paws::MediaPackageV2::Segment>

The segment configuration, including the segment name, duration, and
other configuration values.


=head2 StartoverWindowSeconds => Int

The size of the window (in seconds) to create a window of the live
stream that's available for on-demand viewing. Viewers can start-over
or catch-up on content that falls within the window.


=head2 Tags => L<Paws::MediaPackageV2::TagMap>

The comma-separated list of tag key:value pairs assigned to the origin
endpoint.


=head2 _request_id => Str


=cut

