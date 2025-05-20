
package Paws::Connect::StartContactStreamingResponse;
  use Moose;
  has StreamingId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartContactStreamingResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> StreamingId => Str

The identifier of the streaming configuration enabled.


=head2 _request_id => Str


=cut

