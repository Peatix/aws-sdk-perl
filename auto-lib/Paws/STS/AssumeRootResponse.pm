
package Paws::STS::AssumeRootResponse;
  use Moose;
  has Credentials => (is => 'ro', isa => 'Paws::STS::Credentials');
  has SourceIdentity => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::AssumeRootResponse

=head1 ATTRIBUTES


=head2 Credentials => L<Paws::STS::Credentials>

The temporary security credentials, which include an access key ID, a
secret access key, and a security token.

The size of the security token that STS API operations return is not
fixed. We strongly recommend that you make no assumptions about the
maximum size.


=head2 SourceIdentity => Str

The source identity specified by the principal that is calling the
C<AssumeRoot> operation.

You can use the C<aws:SourceIdentity> condition key to control access
based on the value of source identity. For more information about using
source identity, see Monitor and control actions taken with assumed
roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_control-access_monitor.html)
in the I<IAM User Guide>.

The regex used to validate this parameter is a string of characters
consisting of upper- and lower-case alphanumeric characters with no
spaces. You can also include underscores or any of the following
characters: =,.@-


=head2 _request_id => Str


=cut

