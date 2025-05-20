
package Paws::ConnectCampaigns::GetCampaignStateBatchResponse;
  use Moose;
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaigns::FailedCampaignStateResponse]', traits => ['NameInRequest'], request_name => 'failedRequests');
  has SuccessfulRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaigns::SuccessfulCampaignStateResponse]', traits => ['NameInRequest'], request_name => 'successfulRequests');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::GetCampaignStateBatchResponse

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[L<Paws::ConnectCampaigns::FailedCampaignStateResponse>]




=head2 SuccessfulRequests => ArrayRef[L<Paws::ConnectCampaigns::SuccessfulCampaignStateResponse>]




=head2 _request_id => Str


=cut

