
package Paws::CognitoIdp::UpdateUserPoolDomainResponse;
  use Moose;
  has CloudFrontDomain => (is => 'ro', isa => 'Str');
  has ManagedLoginVersion => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolDomainResponse

=head1 ATTRIBUTES


=head2 CloudFrontDomain => Str

The fully-qualified domain name (FQDN) of the Amazon CloudFront
distribution that hosts your managed login or classic hosted UI pages.
You domain-name authority must have an alias record that points
requests for your custom domain to this FQDN. Amazon Cognito returns
this value if you set a custom domain with C<CustomDomainConfig>. If
you set an Amazon Cognito prefix domain, this operation returns a blank
response.


=head2 ManagedLoginVersion => Int

A version number that indicates the state of managed login for your
domain. Version C<1> is hosted UI (classic). Version C<2> is the newer
managed login with the branding designer. For more information, see
Managed login
(https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-managed-login.html).


=head2 _request_id => Str


=cut

1;