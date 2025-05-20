
package Paws::RedShift::CreateAuthenticationProfileResult;
  use Moose;
  has AuthenticationProfileContent => (is => 'ro', isa => 'Str');
  has AuthenticationProfileName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateAuthenticationProfileResult

=head1 ATTRIBUTES


=head2 AuthenticationProfileContent => Str

The content of the authentication profile in JSON format.


=head2 AuthenticationProfileName => Str

The name of the authentication profile that was created.


=head2 _request_id => Str


=cut

