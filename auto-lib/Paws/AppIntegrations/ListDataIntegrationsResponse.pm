
package Paws::AppIntegrations::ListDataIntegrationsResponse;
  use Moose;
  has DataIntegrations => (is => 'ro', isa => 'ArrayRef[Paws::AppIntegrations::DataIntegrationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppIntegrations::ListDataIntegrationsResponse

=head1 ATTRIBUTES


=head2 DataIntegrations => ArrayRef[L<Paws::AppIntegrations::DataIntegrationSummary>]

The DataIntegrations associated with this account.


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 _request_id => Str


=cut

