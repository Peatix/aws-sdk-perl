
package Paws::MediaPackageV2::GetChannelGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has EgressDomain => (is => 'ro', isa => 'Str', required => 1);
  has ETag => (is => 'ro', isa => 'Str');
  has ModifiedAt => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaPackageV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::GetChannelGroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) associated with the resource.


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.


=head2 B<REQUIRED> CreatedAt => Str

The date and time the channel group was created.


=head2 Description => Str

The description for your channel group.


=head2 B<REQUIRED> EgressDomain => Str

The output domain where the source stream should be sent. Integrate the
domain with a downstream CDN (such as Amazon CloudFront) or playback
device.


=head2 ETag => Str

The current Entity Tag (ETag) associated with this resource. The entity
tag can be used to safely make concurrent updates to the resource.


=head2 B<REQUIRED> ModifiedAt => Str

The date and time the channel group was modified.


=head2 Tags => L<Paws::MediaPackageV2::TagMap>

The comma-separated list of tag key:value pairs assigned to the channel
group.


=head2 _request_id => Str


=cut

