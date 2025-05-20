
package Paws::MigrationHubRefactorSpaces::ListEnvironmentsResponse;
  use Moose;
  has EnvironmentSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubRefactorSpaces::EnvironmentSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::ListEnvironmentsResponse

=head1 ATTRIBUTES


=head2 EnvironmentSummaryList => ArrayRef[L<Paws::MigrationHubRefactorSpaces::EnvironmentSummary>]

The list of C<EnvironmentSummary> objects.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

