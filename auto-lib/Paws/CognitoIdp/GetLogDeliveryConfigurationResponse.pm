
package Paws::CognitoIdp::GetLogDeliveryConfigurationResponse;
  use Moose;
  has LogDeliveryConfiguration => (is => 'ro', isa => 'Paws::CognitoIdp::LogDeliveryConfigurationType');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GetLogDeliveryConfigurationResponse

=head1 ATTRIBUTES


=head2 LogDeliveryConfiguration => L<Paws::CognitoIdp::LogDeliveryConfigurationType>

The logging configuration of the requested user pool. Includes types of
logs configured and their destinations.


=head2 _request_id => Str


=cut

1;