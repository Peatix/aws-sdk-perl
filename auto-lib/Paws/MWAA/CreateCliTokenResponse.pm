
package Paws::MWAA::CreateCliTokenResponse;
  use Moose;
  has CliToken => (is => 'ro', isa => 'Str');
  has WebServerHostname => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::CreateCliTokenResponse

=head1 ATTRIBUTES


=head2 CliToken => Str

An Airflow CLI login token.


=head2 WebServerHostname => Str

The Airflow web server hostname for the environment.


=head2 _request_id => Str


=cut

