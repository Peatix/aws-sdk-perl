
package Paws::MigrationHubRefactorSpaces::ListServicesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubRefactorSpaces::ServiceSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubRefactorSpaces::ListServicesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next page of results.


=head2 ServiceSummaryList => ArrayRef[L<Paws::MigrationHubRefactorSpaces::ServiceSummary>]

The list of C<ServiceSummary> objects.


=head2 _request_id => Str


=cut

