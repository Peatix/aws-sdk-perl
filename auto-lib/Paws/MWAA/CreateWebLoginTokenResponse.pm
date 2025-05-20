
package Paws::MWAA::CreateWebLoginTokenResponse;
  use Moose;
  has AirflowIdentity => (is => 'ro', isa => 'Str');
  has IamIdentity => (is => 'ro', isa => 'Str');
  has WebServerHostname => (is => 'ro', isa => 'Str');
  has WebToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::CreateWebLoginTokenResponse

=head1 ATTRIBUTES


=head2 AirflowIdentity => Str

The user name of the Apache Airflow identity creating the web login
token.


=head2 IamIdentity => Str

The name of the IAM identity creating the web login token. This might
be an IAM user, or an assumed or federated identity. For example,
C<assumed-role/Admin/your-name>.


=head2 WebServerHostname => Str

The Airflow web server hostname for the environment.


=head2 WebToken => Str

An Airflow web server login token.


=head2 _request_id => Str


=cut

