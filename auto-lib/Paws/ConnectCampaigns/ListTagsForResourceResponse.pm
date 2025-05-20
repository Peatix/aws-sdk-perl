
package Paws::ConnectCampaigns::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ConnectCampaigns::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ConnectCampaigns::TagMap>




=head2 _request_id => Str


=cut

