
package Paws::RedShift::ClusterExtendedCredentials;
  use Moose;
  has DbPassword => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has NextRefreshTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterExtendedCredentials

=head1 ATTRIBUTES


=head2 DbPassword => Str

A temporary password that you provide when you connect to a database.


=head2 DbUser => Str

A database user name that you provide when you connect to a database.
The database user is mapped 1:1 to the source IAM identity.


=head2 Expiration => Str

The time (UTC) when the temporary password expires. After this
timestamp, a log in with the temporary password fails.


=head2 NextRefreshTime => Str

Reserved for future use.


=head2 _request_id => Str


=cut

