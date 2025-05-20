
package Paws::WorkSpacesWeb::GetSessionResponse;
  use Moose;
  has Session => (is => 'ro', isa => 'Paws::WorkSpacesWeb::Session', traits => ['NameInRequest'], request_name => 'session');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetSessionResponse

=head1 ATTRIBUTES


=head2 Session => L<Paws::WorkSpacesWeb::Session>

The sessions in a list.


=head2 _request_id => Str


=cut

