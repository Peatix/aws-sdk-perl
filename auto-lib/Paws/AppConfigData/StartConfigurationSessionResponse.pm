
package Paws::AppConfigData::StartConfigurationSessionResponse;
  use Moose;
  has InitialConfigurationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfigData::StartConfigurationSessionResponse

=head1 ATTRIBUTES


=head2 InitialConfigurationToken => Str

Token encapsulating state about the configuration session. Provide this
token to the C<GetLatestConfiguration> API to retrieve configuration
data.

This token should only be used once in your first call to
C<GetLatestConfiguration>. You I<must> use the new token in the
C<GetLatestConfiguration> response (C<NextPollConfigurationToken>) in
each subsequent call to C<GetLatestConfiguration>.

The C<InitialConfigurationToken> and C<NextPollConfigurationToken>
should only be used once. To support long poll use cases, the tokens
are valid for up to 24 hours. If a C<GetLatestConfiguration> call uses
an expired token, the system returns C<BadRequestException>.


=head2 _request_id => Str


=cut

