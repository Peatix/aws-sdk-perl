
package Paws::MediaPackageV2::ResetChannelStateResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has ChannelGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has ResetAt => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ResetChannelStateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) associated with the channel that you
just reset.


=head2 B<REQUIRED> ChannelGroupName => Str

The name of the channel group that contains the channel that you just
reset.


=head2 B<REQUIRED> ChannelName => Str

The name of the channel that you just reset.


=head2 B<REQUIRED> ResetAt => Str

The time that the channel was last reset.


=head2 _request_id => Str


=cut

