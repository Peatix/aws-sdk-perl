
package Paws::ConnectCampaigns::ListCampaignsResponse;
  use Moose;
  has CampaignSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaigns::CampaignSummary]', traits => ['NameInRequest'], request_name => 'campaignSummaryList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::ListCampaignsResponse

=head1 ATTRIBUTES


=head2 CampaignSummaryList => ArrayRef[L<Paws::ConnectCampaigns::CampaignSummary>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

