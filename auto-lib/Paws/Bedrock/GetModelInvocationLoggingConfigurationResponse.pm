
package Paws::Bedrock::GetModelInvocationLoggingConfigurationResponse;
  use Moose;
  has LoggingConfig => (is => 'ro', isa => 'Paws::Bedrock::LoggingConfig', traits => ['NameInRequest'], request_name => 'loggingConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::GetModelInvocationLoggingConfigurationResponse

=head1 ATTRIBUTES


=head2 LoggingConfig => L<Paws::Bedrock::LoggingConfig>

The current configuration values.


=head2 _request_id => Str


=cut

