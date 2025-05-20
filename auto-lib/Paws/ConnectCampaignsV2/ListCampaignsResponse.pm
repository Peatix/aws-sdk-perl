
package Paws::ConnectCampaignsV2::ListCampaignsResponse;
  use Moose;
  has CampaignSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::CampaignSummary]', traits => ['NameInRequest'], request_name => 'campaignSummaryList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::ListCampaignsResponse

=head1 ATTRIBUTES


=head2 CampaignSummaryList => ArrayRef[L<Paws::ConnectCampaignsV2::CampaignSummary>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

