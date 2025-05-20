
package Paws::RedShift::ModifyAuthenticationProfileResult;
  use Moose;
  has AuthenticationProfileContent => (is => 'ro', isa => 'Str');
  has AuthenticationProfileName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyAuthenticationProfileResult

=head1 ATTRIBUTES


=head2 AuthenticationProfileContent => Str

The updated content of the authentication profile in JSON format.


=head2 AuthenticationProfileName => Str

The name of the authentication profile that was replaced.


=head2 _request_id => Str


=cut

