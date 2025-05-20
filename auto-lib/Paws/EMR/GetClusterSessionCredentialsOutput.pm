
package Paws::EMR::GetClusterSessionCredentialsOutput;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::EMR::Credentials');
  has ExpiresAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::GetClusterSessionCredentialsOutput

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::EMR::Credentials>

The credentials that you can use to connect to cluster endpoints that
support username and password authentication.


=head2 ExpiresAt => Str

The time when the credentials that are returned by the
C<GetClusterSessionCredentials> API expire.


=head2 _request_id => Str


=cut

1;