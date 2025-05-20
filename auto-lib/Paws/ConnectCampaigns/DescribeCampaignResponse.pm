
package Paws::ConnectCampaigns::DescribeCampaignResponse;
  use Moose;
  has Campaign => (is => 'ro', isa => 'Paws::ConnectCampaigns::Campaign', traits => ['NameInRequest'], request_name => 'campaign');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::DescribeCampaignResponse

=head1 ATTRIBUTES


=head2 Campaign => L<Paws::ConnectCampaigns::Campaign>




=head2 _request_id => Str


=cut

