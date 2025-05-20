
package Paws::SSOAdmin::DescribeTrustedTokenIssuerResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has TrustedTokenIssuerArn => (is => 'ro', isa => 'Str');
  has TrustedTokenIssuerConfiguration => (is => 'ro', isa => 'Paws::SSOAdmin::TrustedTokenIssuerConfiguration');
  has TrustedTokenIssuerType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeTrustedTokenIssuerResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the trusted token issuer configuration.


=head2 TrustedTokenIssuerArn => Str

The ARN of the trusted token issuer configuration.


=head2 TrustedTokenIssuerConfiguration => L<Paws::SSOAdmin::TrustedTokenIssuerConfiguration>

A structure the describes the settings that apply of this trusted token
issuer.


=head2 TrustedTokenIssuerType => Str

The type of the trusted token issuer.

Valid values are: C<"OIDC_JWT">
=head2 _request_id => Str


=cut

1;