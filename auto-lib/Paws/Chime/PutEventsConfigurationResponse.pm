
package Paws::Chime::PutEventsConfigurationResponse;
  use Moose;
  has EventsConfiguration => (is => 'ro', isa => 'Paws::Chime::EventsConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutEventsConfigurationResponse

=head1 ATTRIBUTES


=head2 EventsConfiguration => L<Paws::Chime::EventsConfiguration>

The configuration that allows a bot to receive outgoing events. Can be
an HTTPS endpoint or an AWS Lambda function ARN.


=head2 _request_id => Str


=cut

