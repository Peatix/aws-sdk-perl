
package Paws::AppIntegrations::GetEventIntegrationResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EventBridgeBus => (is => 'ro', isa => 'Str');
  has EventFilter => (is => 'ro', isa => 'Paws::AppIntegrations::EventFilter');
  has EventIntegrationArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::AppIntegrations::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::GetEventIntegrationResponse

=head1 ATTRIBUTES


=head2 Description => Str

The description of the event integration.


=head2 EventBridgeBus => Str

The EventBridge bus.


=head2 EventFilter => L<Paws::AppIntegrations::EventFilter>

The event filter.


=head2 EventIntegrationArn => Str

The Amazon Resource Name (ARN) for the event integration.


=head2 Name => Str

The name of the event integration.


=head2 Tags => L<Paws::AppIntegrations::TagMap>

The tags used to organize, track, or control access for this resource.
For example, { "tags": {"key1":"value1", "key2":"value2"} }.


=head2 _request_id => Str


=cut

