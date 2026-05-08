
package Paws::CognitoIdp::CreateUserPoolDomainResponse;
  use Moose;
  has CloudFrontDomain => (is => 'ro', isa => 'Str');
  has ManagedLoginVersion => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateUserPoolDomainResponse

=head1 ATTRIBUTES


=head2 CloudFrontDomain => Str

The fully-qualified domain name (FQDN) of the Amazon CloudFront
distribution that hosts your managed login or classic hosted UI pages.
Your domain-name authority must have an alias record that points
requests for your custom domain to this FQDN. Amazon Cognito returns
this value if you set a custom domain with C<CustomDomainConfig>. If
you set an Amazon Cognito prefix domain, this parameter returns null.


=head2 ManagedLoginVersion => Int

The version of managed login branding applied your domain. A value of
C<1> indicates hosted UI (classic) and a version of C<2> indicates
managed login.


=head2 _request_id => Str


=cut

1;