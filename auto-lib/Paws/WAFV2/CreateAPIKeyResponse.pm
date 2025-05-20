
package Paws::WAFV2::CreateAPIKeyResponse;
  use Moose;
  has APIKey => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::CreateAPIKeyResponse

=head1 ATTRIBUTES


=head2 APIKey => Str

The generated, encrypted API key. You can copy this for use in your
JavaScript CAPTCHA integration.


=head2 _request_id => Str


=cut

1;