
package Paws::FinspaceData::DisableUserResponse;
  use Moose;
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::DisableUserResponse

=head1 ATTRIBUTES


=head2 UserId => Str

The unique identifier for the deactivated user.


=head2 _request_id => Str


=cut

