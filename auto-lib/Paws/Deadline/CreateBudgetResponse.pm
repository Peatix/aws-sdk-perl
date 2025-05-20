
package Paws::Deadline::CreateBudgetResponse;
  use Moose;
  has BudgetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'budgetId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateBudgetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BudgetId => Str

The budget ID.


=head2 _request_id => Str


=cut

