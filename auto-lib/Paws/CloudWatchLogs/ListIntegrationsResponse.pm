
package Paws::CloudWatchLogs::ListIntegrationsResponse;
  use Moose;
  has IntegrationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::IntegrationSummary]', traits => ['NameInRequest'], request_name => 'integrationSummaries' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ListIntegrationsResponse

=head1 ATTRIBUTES


=head2 IntegrationSummaries => ArrayRef[L<Paws::CloudWatchLogs::IntegrationSummary>]

An array, where each object in the array contains information about one
CloudWatch Logs integration in this account.


=head2 _request_id => Str


=cut

1;