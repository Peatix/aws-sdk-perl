
package Paws::LakeFormation::AssumeDecoratedRoleWithSAMLResponse;
  use Moose;
  has AccessKeyId => (is => 'ro', isa => 'Str');
  has Expiration => (is => 'ro', isa => 'Str');
  has SecretAccessKey => (is => 'ro', isa => 'Str');
  has SessionToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::AssumeDecoratedRoleWithSAMLResponse

=head1 ATTRIBUTES


=head2 AccessKeyId => Str

The access key ID for the temporary credentials. (The access key
consists of an access key ID and a secret key).


=head2 Expiration => Str

The date and time when the temporary credentials expire.


=head2 SecretAccessKey => Str

The secret key for the temporary credentials. (The access key consists
of an access key ID and a secret key).


=head2 SessionToken => Str

The session token for the temporary credentials.


=head2 _request_id => Str


=cut

