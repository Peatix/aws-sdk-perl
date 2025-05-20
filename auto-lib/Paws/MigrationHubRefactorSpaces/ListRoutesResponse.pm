
package Paws::MigrationHubRefactorSpaces::ListRoutesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RouteSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubRefactorSpaces::RouteSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::ListRoutesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 RouteSummaryList => ArrayRef[L<Paws::MigrationHubRefactorSpaces::RouteSummary>]

The list of C<RouteSummary> objects.


=head2 _request_id => Str


=cut

