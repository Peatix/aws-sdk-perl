
package Paws::ConnectCampaigns::PutDialRequestBatchResponse;
  use Moose;
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaigns::FailedRequest]', traits => ['NameInRequest'], request_name => 'failedRequests');
  has SuccessfulRequests => (is => 'ro', isa => 'ArrayRef[Paws::ConnectCampaigns::SuccessfulRequest]', traits => ['NameInRequest'], request_name => 'successfulRequests');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::PutDialRequestBatchResponse

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[L<Paws::ConnectCampaigns::FailedRequest>]




=head2 SuccessfulRequests => ArrayRef[L<Paws::ConnectCampaigns::SuccessfulRequest>]




=head2 _request_id => Str


=cut

