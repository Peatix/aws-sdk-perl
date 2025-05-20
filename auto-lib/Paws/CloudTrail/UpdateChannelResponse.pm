
package Paws::CloudTrail::UpdateChannelResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Destination]');
  has Name => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::UpdateChannelResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The ARN of the channel that was updated.


=head2 Destinations => ArrayRef[L<Paws::CloudTrail::Destination>]

The event data stores that log events arriving through the channel.


=head2 Name => Str

The name of the channel that was updated.


=head2 Source => Str

The event source of the channel that was updated.


=head2 _request_id => Str


=cut

1;