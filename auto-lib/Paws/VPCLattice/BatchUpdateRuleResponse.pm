
package Paws::VPCLattice::BatchUpdateRuleResponse;
  use Moose;
  has Successful => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::RuleUpdateSuccess]', traits => ['NameInRequest'], request_name => 'successful');
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::VPCLattice::RuleUpdateFailure]', traits => ['NameInRequest'], request_name => 'unsuccessful');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::BatchUpdateRuleResponse

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[L<Paws::VPCLattice::RuleUpdateSuccess>]

The rules that were successfully updated.


=head2 Unsuccessful => ArrayRef[L<Paws::VPCLattice::RuleUpdateFailure>]

The rules that the operation couldn't update.


=head2 _request_id => Str


=cut

