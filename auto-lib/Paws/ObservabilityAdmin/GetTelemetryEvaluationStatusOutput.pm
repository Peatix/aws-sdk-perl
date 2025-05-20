
package Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusOutput;
  use Moose;
  has FailureReason => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ObservabilityAdmin::GetTelemetryEvaluationStatusOutput

=head1 ATTRIBUTES


=head2 FailureReason => Str

Describes the reason for the failure status. The field will only be
populated if C<Status> is C<FAILED_START> or C<FAILED_STOP>.


=head2 Status => Str

The onboarding status of the telemetry config feature.

Valid values are: C<"NOT_STARTED">, C<"STARTING">, C<"FAILED_START">, C<"RUNNING">, C<"STOPPING">, C<"FAILED_STOP">, C<"STOPPED">
=head2 _request_id => Str


=cut

