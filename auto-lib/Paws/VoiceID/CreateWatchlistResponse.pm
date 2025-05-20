
package Paws::VoiceID::CreateWatchlistResponse;
  use Moose;
  has Watchlist => (is => 'ro', isa => 'Paws::VoiceID::Watchlist');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VoiceID::CreateWatchlistResponse

=head1 ATTRIBUTES


=head2 Watchlist => L<Paws::VoiceID::Watchlist>

Information about the newly created watchlist.


=head2 _request_id => Str


=cut

1;