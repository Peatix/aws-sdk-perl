
package Paws::MediaTailor::ConfigureLogsForChannelResponse;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str');
  has LogTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ConfigureLogsForChannelResponse

=head1 ATTRIBUTES


=head2 ChannelName => Str

The name of the channel.


=head2 LogTypes => ArrayRef[Str|Undef]

The types of logs collected.


=head2 _request_id => Str


=cut

