
package Paws::Route53RecoveryReadiness::ListRecoveryGroupsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RecoveryGroups => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::RecoveryGroupOutput]', traits => ['NameInRequest'], request_name => 'recoveryGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListRecoveryGroupsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 RecoveryGroups => ArrayRef[L<Paws::Route53RecoveryReadiness::RecoveryGroupOutput>]

A list of recovery groups.


=head2 _request_id => Str


=cut

