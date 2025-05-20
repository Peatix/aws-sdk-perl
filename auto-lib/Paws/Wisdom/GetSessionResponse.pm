
package Paws::Wisdom::GetSessionResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Paws::Wisdom::SessionData', traits => ['NameInRequest'], request_name => 'session');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::GetSessionResponse

=head1 ATTRIBUTES


=head2 Session => L<Paws::Wisdom::SessionData>

The session.


=head2 _request_id => Str


=cut

