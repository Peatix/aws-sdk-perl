
package Paws::Route53RecoveryReadiness::ListRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::ListRulesOutput]', traits => ['NameInRequest'], request_name => 'rules');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 Rules => ArrayRef[L<Paws::Route53RecoveryReadiness::ListRulesOutput>]

A list of readiness rules for a specific resource type.


=head2 _request_id => Str


=cut

