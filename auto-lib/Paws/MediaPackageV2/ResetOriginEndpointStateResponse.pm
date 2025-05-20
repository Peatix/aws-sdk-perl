
package Paws::MediaPackageV2::ResetOriginEndpointStateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has OriginEndpointName => (is => 'ro', isa => 'Str', required => 1);
  has ResetAt => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ResetOriginEndpointStateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) associated with the endpoint that you
just reset.


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group that contains the channel with the origin
endpoint that you just reset.


=head2 B<REQUIRED> ChannelName => Str

The name of the channel with the origin endpoint that you just reset.


=head2 B<REQUIRED> OriginEndpointName => Str

The name of the origin endpoint that you just reset.


=head2 B<REQUIRED> ResetAt => Str

The time that the origin endpoint was last reset.


=head2 _request_id => Str


=cut

