
package Paws::ConnectCampaigns::CreateCampaignResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Tags => (is => 'ro', isa => 'Paws::ConnectCampaigns::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::CreateCampaignResponse

=head1 ATTRIBUTES


=head2 Arn => Str




=head2 Id => Str




=head2 Tags => L<Paws::ConnectCampaigns::TagMap>




=head2 _request_id => Str


=cut

