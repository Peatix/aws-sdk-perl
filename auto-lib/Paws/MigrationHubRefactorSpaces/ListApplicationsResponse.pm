
package Paws::MigrationHubRefactorSpaces::ListApplicationsResponse;
  use Moose;
  has ApplicationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubRefactorSpaces::ApplicationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 ApplicationSummaryList => ArrayRef[L<Paws::MigrationHubRefactorSpaces::ApplicationSummary>]

The list of C<ApplicationSummary> objects.


=head2 NextToken => Str

The token for the next page of results.


=head2 _request_id => Str


=cut

