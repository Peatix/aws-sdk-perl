
package Paws::WorkMail::DescribeIdentityProviderConfigurationResponse;
  use Moose;
  has AuthenticationMode => (is => 'ro', isa => 'Str');
  has IdentityCenterConfiguration => (is => 'ro', isa => 'Paws::WorkMail::IdentityCenterConfiguration');
  has PersonalAccessTokenConfiguration => (is => 'ro', isa => 'Paws::WorkMail::PersonalAccessTokenConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeIdentityProviderConfigurationResponse

=head1 ATTRIBUTES


=head2 AuthenticationMode => Str

The authentication mode used in WorkMail.

Valid values are: C<"IDENTITY_PROVIDER_ONLY">, C<"IDENTITY_PROVIDER_AND_DIRECTORY">
=head2 IdentityCenterConfiguration => L<Paws::WorkMail::IdentityCenterConfiguration>

The details of the IAM Identity Center configuration.


=head2 PersonalAccessTokenConfiguration => L<Paws::WorkMail::PersonalAccessTokenConfiguration>

The details of the Personal Access Token configuration.


=head2 _request_id => Str


=cut

1;