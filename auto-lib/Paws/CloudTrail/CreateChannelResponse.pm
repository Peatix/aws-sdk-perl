
package Paws::CloudTrail::CreateChannelResponse;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Destination]');
  has Name => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::CreateChannelResponse

=head1 ATTRIBUTES


=head2 ChannelArn => Str

The Amazon Resource Name (ARN) of the new channel.


=head2 Destinations => ArrayRef[L<Paws::CloudTrail::Destination>]

The event data stores that log the events arriving through the channel.


=head2 Name => Str

The name of the new channel.


=head2 Source => Str

The partner or external event source name.


=head2 Tags => ArrayRef[L<Paws::CloudTrail::Tag>]




=head2 _request_id => Str


=cut

1;