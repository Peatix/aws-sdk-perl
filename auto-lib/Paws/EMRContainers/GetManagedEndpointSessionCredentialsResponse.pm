
package Paws::EMRContainers::GetManagedEndpointSessionCredentialsResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::EMRContainers::Credentials', traits => ['NameInRequest'], request_name => 'credentials');
  has ExpiresAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiresAt');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::GetManagedEndpointSessionCredentialsResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::EMRContainers::Credentials>

The structure containing the session credentials.


=head2 ExpiresAt => Str

The date and time when the session token will expire.


=head2 Id => Str

The identifier of the session token returned.


=head2 _request_id => Str


=cut

