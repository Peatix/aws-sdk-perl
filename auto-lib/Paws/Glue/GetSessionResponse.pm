
package Paws::Glue::GetSessionResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Paws::Glue::Session');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSessionResponse

=head1 ATTRIBUTES


=head2 Session => L<Paws::Glue::Session>

The session object is returned in the response.


=head2 _request_id => Str


=cut

1;