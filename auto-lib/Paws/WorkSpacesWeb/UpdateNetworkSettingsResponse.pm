
package Paws::WorkSpacesWeb::UpdateNetworkSettingsResponse;
  use Moose;
  has NetworkSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::NetworkSettings', traits => ['NameInRequest'], request_name => 'networkSettings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdateNetworkSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> NetworkSettings => L<Paws::WorkSpacesWeb::NetworkSettings>

The network settings.


=head2 _request_id => Str


=cut

