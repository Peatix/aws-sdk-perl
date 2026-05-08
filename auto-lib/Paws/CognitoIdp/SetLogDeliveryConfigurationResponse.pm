
package Paws::CognitoIdp::SetLogDeliveryConfigurationResponse;
  use Moose;
  has LogDeliveryConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::LogDeliveryConfigurationType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SetLogDeliveryConfigurationResponse

=head1 ATTRIBUTES


=head2 LogDeliveryConfiguration => L<Paws::CognitoIdp::LogDeliveryConfigurationType>

The logging configuration that you applied to the requested user pool.


=head2 _request_id => Str


=cut

1;