
package Paws::ObservabilityAdmin::ListResourceTelemetryForOrganizationOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TelemetryConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ObservabilityAdmin::TelemetryConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ObservabilityAdmin::ListResourceTelemetryForOrganizationOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. A previous call provides
this token.


=head2 TelemetryConfigurations => ArrayRef[L<Paws::ObservabilityAdmin::TelemetryConfiguration>]

A list of telemetry configurations for AWS resources supported by
telemetry config in the organization.


=head2 _request_id => Str


=cut

