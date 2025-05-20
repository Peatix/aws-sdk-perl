
package Paws::ConnectCampaignsV2::GetConnectInstanceConfigResponse;
  use Moose;
  has ConnectInstanceConfig => (is => 'ro', isa => 'Paws::ConnectCampaignsV2::InstanceConfig', traits => ['NameInRequest'], request_name => 'connectInstanceConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaignsV2::GetConnectInstanceConfigResponse

=head1 ATTRIBUTES


=head2 ConnectInstanceConfig => L<Paws::ConnectCampaignsV2::InstanceConfig>




=head2 _request_id => Str


=cut

