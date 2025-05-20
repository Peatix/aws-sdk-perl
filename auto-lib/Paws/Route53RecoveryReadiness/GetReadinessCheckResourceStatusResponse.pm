
package Paws::Route53RecoveryReadiness::GetReadinessCheckResourceStatusResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Readiness => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readiness');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::RuleResult]', traits => ['NameInRequest'], request_name => 'rules');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::GetReadinessCheckResourceStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 Readiness => Str

The readiness at a rule level.

Valid values are: C<"READY">, C<"NOT_READY">, C<"UNKNOWN">, C<"NOT_AUTHORIZED">
=head2 Rules => ArrayRef[L<Paws::Route53RecoveryReadiness::RuleResult>]

Details of the rule's results.


=head2 _request_id => Str


=cut

