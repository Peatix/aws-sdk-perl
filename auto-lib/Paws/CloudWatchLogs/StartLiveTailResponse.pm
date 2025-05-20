
package Paws::CloudWatchLogs::StartLiveTailResponse;
  use Moose;
  has ResponseStream => (is => 'ro', isa => 'Paws::CloudWatchLogs::StartLiveTailResponseStream', traits => ['NameInRequest'], request_name => 'responseStream' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StartLiveTailResponse

=head1 ATTRIBUTES


=head2 ResponseStream => L<Paws::CloudWatchLogs::StartLiveTailResponseStream>

An object that includes the stream returned by your request. It can
include both log events and exceptions.


=head2 _request_id => Str


=cut

1;