
package Paws::Billingconductor::ListAccountAssociationsOutput;
  use Moose;
  has LinkedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Billingconductor::AccountAssociationsListElement]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Billingconductor::ListAccountAssociationsOutput

=head1 ATTRIBUTES


=head2 LinkedAccounts => ArrayRef[L<Paws::Billingconductor::AccountAssociationsListElement>]

The list of linked accounts in the payer account.


=head2 NextToken => Str

The pagination token that's used on subsequent calls to get accounts.


=head2 _request_id => Str


=cut

