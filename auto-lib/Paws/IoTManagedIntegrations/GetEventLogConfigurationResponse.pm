
package Paws::IoTManagedIntegrations::GetEventLogConfigurationResponse;
  use Moose;
  has EventLogLevel => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::GetEventLogConfigurationResponse

=head1 ATTRIBUTES


=head2 EventLogLevel => Str

The logging level for the event log configuration.

Valid values are: C<"DEBUG">, C<"ERROR">, C<"INFO">, C<"WARN">
=head2 Id => Str

The identifier of the event log configuration.


=head2 ResourceId => Str

The identifier of the resource for the event log configuration.


=head2 ResourceType => Str

The type of resource for the event log configuration.


=head2 _request_id => Str


=cut

