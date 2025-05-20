
package Paws::ConnectCampaignsV2::GetCampaignStateBatchResponse;
  use Moose;
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::FailedCampaignStateResponse]', traits => ['NameInRequest'], request_name => 'failedRequests');
  has SuccessfulRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::SuccessfulCampaignStateResponse]', traits => ['NameInRequest'], request_name => 'successfulRequests');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::GetCampaignStateBatchResponse

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[L<Paws::ConnectCampaignsV2::FailedCampaignStateResponse>]




=head2 SuccessfulRequests => ArrayRef[L<Paws::ConnectCampaignsV2::SuccessfulCampaignStateResponse>]




=head2 _request_id => Str


=cut

