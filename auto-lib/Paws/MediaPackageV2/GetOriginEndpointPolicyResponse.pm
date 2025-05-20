
package Paws::MediaPackageV2::GetOriginEndpointPolicyResponse;
  use Moose;
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has OriginEndpointName => (is => 'ro', isa => 'Str', required => 1);
  has Policy => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::GetOriginEndpointPolicyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelGroupName => Str

The name that describes the channel group. The name is the primary
identifier for the channel group, and must be unique for your account
in the AWS Region.


=head2 B<REQUIRED> ChannelName => Str

The name that describes the channel. The name is the primary identifier
for the channel, and must be unique for your account in the AWS Region
and channel group.


=head2 B<REQUIRED> OriginEndpointName => Str

The name that describes the origin endpoint. The name is the primary
identifier for the origin endpoint, and and must be unique for your
account in the AWS Region and channel.


=head2 B<REQUIRED> Policy => Str

The policy assigned to the origin endpoint.


=head2 _request_id => Str


=cut

