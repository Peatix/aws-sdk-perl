
package Paws::MediaPackageV2::GetChannelResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has IngestEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::IngestEndpoint]');
  has InputSwitchConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::InputSwitchConfiguration');
  has InputType => (is => 'ro', isa => 'Str');
  has ModifiedAt => (is => 'ro', isa => 'Str', required => 1);
  has OutputHeaderConfiguration => (is => 'ro', isa => 'Paws::MediaPackageV2::OutputHeaderConfiguration');
  has ResetAt => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::GetChannelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) associated with the resource.


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.


=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the channel was created.


=head2 Description => Str

The description for your channel.


=head2 ETag => Str

The current Entity Tag (ETag) associated with this resource. The entity
tag can be used to safely make concurrent updates to the resource.


=head2 IngestEndpoints => ArrayRef[L<Paws::MediaPackageV2::IngestEndpoint>]




=head2 InputSwitchConfiguration => L<Paws::MediaPackageV2::InputSwitchConfiguration>

The configuration for input switching based on the media quality
confidence score (MQCS) as provided from AWS Elemental MediaLive. This
setting is valid only when C<InputType> is C<CMAF>.


=head2 InputType => Str

The input type will be an immutable field which will be used to define
whether the channel will allow CMAF ingest or HLS ingest. If
unprovided, it will default to HLS to preserve current behavior.

The allowed values are:

=over

=item *

C<HLS> - The HLS streaming specification (which defines M3U8 manifests
and TS segments).

=item *

C<CMAF> - The DASH-IF CMAF Ingest specification (which defines CMAF
segments with optional DASH manifests).

=back


Valid values are: C<"HLS">, C<"CMAF">
=head2 B<REQUIRED> ModifiedAt => Str

The date and time the channel was modified.


=head2 OutputHeaderConfiguration => L<Paws::MediaPackageV2::OutputHeaderConfiguration>

The settings for what common media server data (CMSD) headers AWS
Elemental MediaPackage includes in responses to the CDN. This setting
is valid only when C<InputType> is C<CMAF>.


=head2 ResetAt => Str

The time that the channel was last reset.


=head2 Tags => L<Paws::MediaPackageV2::TagMap>

The comma-separated list of tag key:value pairs assigned to the
channel.


=head2 _request_id => Str


=cut

