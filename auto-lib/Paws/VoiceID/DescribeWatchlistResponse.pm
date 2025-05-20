
package Paws::VoiceID::DescribeWatchlistResponse;
  use Moose;
  has Watchlist => (is => 'ro', isa => 'Paws::VoiceID::Watchlist');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::DescribeWatchlistResponse

=head1 ATTRIBUTES


=head2 Watchlist => L<Paws::VoiceID::Watchlist>

Information about the specified watchlist.


=head2 _request_id => Str


=cut

1;