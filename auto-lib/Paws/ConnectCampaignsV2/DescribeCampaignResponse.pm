
package Paws::ConnectCampaignsV2::DescribeCampaignResponse;
  use Moose;
  has Campaign => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::Campaign', traits => ['NameInRequest'], request_name => 'campaign');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::DescribeCampaignResponse

=head1 ATTRIBUTES


=head2 Campaign => L<Paws::ConnectCampaignsV2::Campaign>




=head2 _request_id => Str


=cut

