
package Paws::Connect::GetFederationTokenResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::Connect::Credentials');
  has SignInUrl => (is => 'ro', isa => 'Str');
  has UserArn => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetFederationTokenResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::Connect::Credentials>

The credentials to use for federation.


=head2 SignInUrl => Str

The URL to sign into the user's instance.


=head2 UserArn => Str

The Amazon Resource Name (ARN) of the user.


=head2 UserId => Str

The identifier for the user. This can be the ID or the ARN of the user.


=head2 _request_id => Str


=cut

