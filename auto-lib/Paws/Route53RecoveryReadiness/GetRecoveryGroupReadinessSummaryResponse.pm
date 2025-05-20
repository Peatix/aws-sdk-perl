
package Paws::Route53RecoveryReadiness::GetRecoveryGroupReadinessSummaryResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Readiness => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readiness');
  has ReadinessChecks => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::ReadinessCheckSummary]', traits => ['NameInRequest'], request_name => 'readinessChecks');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::GetRecoveryGroupReadinessSummaryResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 Readiness => Str

The readiness status at a recovery group level.

Valid values are: C<"READY">, C<"NOT_READY">, C<"UNKNOWN">, C<"NOT_AUTHORIZED">
=head2 ReadinessChecks => ArrayRef[L<Paws::Route53RecoveryReadiness::ReadinessCheckSummary>]

Summaries of the readiness checks for the recovery group.


=head2 _request_id => Str


=cut

