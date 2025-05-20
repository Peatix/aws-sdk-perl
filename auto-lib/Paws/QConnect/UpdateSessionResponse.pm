
package Paws::QConnect::UpdateSessionResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Paws::QConnect::SessionData', traits => ['NameInRequest'], request_name => 'session');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateSessionResponse

=head1 ATTRIBUTES


=head2 Session => L<Paws::QConnect::SessionData>




=head2 _request_id => Str


=cut

