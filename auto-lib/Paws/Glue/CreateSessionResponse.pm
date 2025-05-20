
package Paws::Glue::CreateSessionResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Paws::Glue::Session');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateSessionResponse

=head1 ATTRIBUTES


=head2 Session => L<Paws::Glue::Session>

Returns the session object in the response.


=head2 _request_id => Str


=cut

1;