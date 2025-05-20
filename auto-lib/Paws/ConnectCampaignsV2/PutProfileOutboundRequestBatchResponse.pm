
package Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatchResponse;
  use Moose;
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::FailedProfileOutboundRequest]', traits => ['NameInRequest'], request_name => 'failedRequests');
  has SuccessfulRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaignsV2::SuccessfulProfileOutboundRequest]', traits => ['NameInRequest'], request_name => 'successfulRequests');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::PutProfileOutboundRequestBatchResponse

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[L<Paws::ConnectCampaignsV2::FailedProfileOutboundRequest>]




=head2 SuccessfulRequests => ArrayRef[L<Paws::ConnectCampaignsV2::SuccessfulProfileOutboundRequest>]




=head2 _request_id => Str


=cut

