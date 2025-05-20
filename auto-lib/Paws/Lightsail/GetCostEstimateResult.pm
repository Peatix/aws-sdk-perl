
package Paws::Lightsail::GetCostEstimateResult;
  use Moose;
  has ResourcesBudgetEstimate => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ResourceBudgetEstimate]', traits => ['NameInRequest'], request_name => 'resourcesBudgetEstimate' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetCostEstimateResult

=head1 ATTRIBUTES


=head2 ResourcesBudgetEstimate => ArrayRef[L<Paws::Lightsail::ResourceBudgetEstimate>]

Returns the estimate's forecasted cost or usage.


=head2 _request_id => Str


=cut

1;