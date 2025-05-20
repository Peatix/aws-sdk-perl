
package Paws::KendraRanking::CreateRescoreExecutionPlanResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KendraRanking::CreateRescoreExecutionPlanResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the rescore execution plan.


=head2 B<REQUIRED> Id => Str

The identifier of the rescore execution plan.


=head2 _request_id => Str


=cut

1;