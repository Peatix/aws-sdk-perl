
package Paws::SSOAdmin::CreateTrustedTokenIssuerResponse;
  use Moose;
  has TrustedTokenIssuerArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateTrustedTokenIssuerResponse

=head1 ATTRIBUTES


=head2 TrustedTokenIssuerArn => Str

The ARN of the new trusted token issuer configuration.


=head2 _request_id => Str


=cut

1;