
package Paws::ConnectCampaignsV2::ListConnectInstanceIntegrationsResponse;
  use Moose;
  has IntegrationSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::IntegrationSummary]', traits => ['NameInRequest'], request_name => 'integrationSummaryList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::ListConnectInstanceIntegrationsResponse

=head1 ATTRIBUTES


=head2 IntegrationSummaryList => ArrayRef[L<Paws::ConnectCampaignsV2::IntegrationSummary>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

