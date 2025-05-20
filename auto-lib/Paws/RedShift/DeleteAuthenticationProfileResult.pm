
package Paws::RedShift::DeleteAuthenticationProfileResult;
  use Moose;
  has AuthenticationProfileName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteAuthenticationProfileResult

=head1 ATTRIBUTES


=head2 AuthenticationProfileName => Str

The name of the authentication profile that was deleted.


=head2 _request_id => Str


=cut

