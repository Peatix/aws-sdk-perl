
package Paws::FinspaceData::ResetUserPasswordResponse;
  use Moose;
  has TemporaryPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'temporaryPassword');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::ResetUserPasswordResponse

=head1 ATTRIBUTES


=head2 TemporaryPassword => Str

A randomly generated temporary password for the requested user. This
password expires in 7 days.


=head2 UserId => Str

The unique identifier of the user that a new password is generated for.


=head2 _request_id => Str


=cut

