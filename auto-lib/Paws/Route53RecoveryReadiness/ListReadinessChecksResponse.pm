
package Paws::Route53RecoveryReadiness::ListReadinessChecksResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ReadinessChecks => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::ReadinessCheckOutput]', traits => ['NameInRequest'], request_name => 'readinessChecks');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListReadinessChecksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 ReadinessChecks => ArrayRef[L<Paws::Route53RecoveryReadiness::ReadinessCheckOutput>]

A list of readiness checks associated with the account.


=head2 _request_id => Str


=cut

