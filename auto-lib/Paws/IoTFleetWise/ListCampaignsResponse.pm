
package Paws::IoTFleetWise::ListCampaignsResponse;
  use Moose;
  has CampaignSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::CampaignSummary]', traits => ['NameInRequest'], request_name => 'campaignSummaries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListCampaignsResponse

=head1 ATTRIBUTES


=head2 CampaignSummaries => ArrayRef[L<Paws::IoTFleetWise::CampaignSummary>]

A summary of information about each campaign.


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 _request_id => Str


=cut

1;