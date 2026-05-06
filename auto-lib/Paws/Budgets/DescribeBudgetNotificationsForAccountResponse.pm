
package Paws::Budgets::DescribeBudgetNotificationsForAccountResponse;
  use Moose;
  has BudgetNotificationsForAccount => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::BudgetNotificationsForAccount]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetNotificationsForAccountResponse

=head1 ATTRIBUTES


=head2 BudgetNotificationsForAccount => ArrayRef[L<Paws::Budgets::BudgetNotificationsForAccount>]

A list of budget names and associated notifications for an account.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;