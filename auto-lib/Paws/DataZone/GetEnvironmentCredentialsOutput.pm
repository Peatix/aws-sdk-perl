
package Paws::DataZone::GetEnvironmentCredentialsOutput;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessKeyId');
  has Expiration => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'expiration');
  has SecretAccessKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'secretAccessKey');
  has SessionToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentCredentialsOutput

=head1 ATTRIBUTES


=head2 AccessKeyId => Str

The access key ID of the environment.


=head2 Expiration => Str

The expiration timestamp of the environment credentials.


=head2 SecretAccessKey => Str

The secret access key of the environment credentials.


=head2 SessionToken => Str

The session token of the environment credentials.


=head2 _request_id => Str


=cut

