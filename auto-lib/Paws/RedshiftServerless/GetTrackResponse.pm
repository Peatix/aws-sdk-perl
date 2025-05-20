
package Paws::RedshiftServerless::GetTrackResponse;
  use Moose;
  has Track => (is => 'ro', isa => 'Paws::RedshiftServerless::ServerlessTrack', traits => ['NameInRequest'], request_name => 'track' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetTrackResponse

=head1 ATTRIBUTES


=head2 Track => L<Paws::RedshiftServerless::ServerlessTrack>

The version of the specified track.


=head2 _request_id => Str


=cut

1;