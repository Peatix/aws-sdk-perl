
package Paws::FinspaceData::EnableUserResponse;
  use Moose;
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::EnableUserResponse

=head1 ATTRIBUTES


=head2 UserId => Str

The unique identifier for the active user.


=head2 _request_id => Str


=cut

