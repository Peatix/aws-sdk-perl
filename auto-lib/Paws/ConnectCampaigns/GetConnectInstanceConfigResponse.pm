
package Paws::ConnectCampaigns::GetConnectInstanceConfigResponse;
  use Moose;
  has ConnectInstanceConfig => (is => 'ro', isa => 'Paws::ConnectCampaigns::InstanceConfig', traits => ['NameInRequest'], request_name => 'connectInstanceConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCampaigns::GetConnectInstanceConfigResponse

=head1 ATTRIBUTES


=head2 ConnectInstanceConfig => L<Paws::ConnectCampaigns::InstanceConfig>




=head2 _request_id => Str


=cut

