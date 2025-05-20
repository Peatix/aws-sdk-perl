
package Paws::RedshiftServerless::GetCredentialsResponse;
  use Moose;
  has DbPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbPassword' );
  has DbUser => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbUser' );
  has Expiration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiration' );
  has NextRefreshTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextRefreshTime' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetCredentialsResponse

=head1 ATTRIBUTES


=head2 DbPassword => Str

A temporary password that authorizes the user name returned by
C<DbUser> to log on to the database C<DbName>.


=head2 DbUser => Str

A database user name that is authorized to log on to the database
C<DbName> using the password C<DbPassword>. If the specified C<DbUser>
exists in the database, the new user name has the same database
privileges as the the user named in C<DbUser>. By default, the user is
added to PUBLIC.


=head2 Expiration => Str

The date and time the password in C<DbPassword> expires.


=head2 NextRefreshTime => Str

The date and time of when the C<DbUser> and C<DbPassword> authorization
refreshes.


=head2 _request_id => Str


=cut

1;