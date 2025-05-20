
package Paws::ApplicationInsights::ListProblemsResponse;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProblemList => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationInsights::Problem]');
  has ResourceGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListProblemsResponse

=head1 ATTRIBUTES


=head2 AccountId => Str

The Amazon Web Services account ID for the resource group owner.


=head2 NextToken => Str

The token used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ProblemList => ArrayRef[L<Paws::ApplicationInsights::Problem>]

The list of problems.


=head2 ResourceGroupName => Str

The name of the resource group.


=head2 _request_id => Str


=cut

1;