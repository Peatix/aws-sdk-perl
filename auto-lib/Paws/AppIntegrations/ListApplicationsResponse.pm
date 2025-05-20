
package Paws::AppIntegrations::ListApplicationsResponse;
  use Moose;
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::ApplicationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 Applications => ArrayRef[L<Paws::AppIntegrations::ApplicationSummary>]

The Applications associated with this account.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

