
package Paws::WorkSpacesWeb::GetNetworkSettingsResponse;
  use Moose;
  has NetworkSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::NetworkSettings', traits => ['NameInRequest'], request_name => 'networkSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetNetworkSettingsResponse

=head1 ATTRIBUTES


=head2 NetworkSettings => L<Paws::WorkSpacesWeb::NetworkSettings>

The network settings.


=head2 _request_id => Str


=cut

