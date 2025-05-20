
package Paws::WorkSpacesWeb::UpdateIpAccessSettingsResponse;
  use Moose;
  has IpAccessSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::IpAccessSettings', traits => ['NameInRequest'], request_name => 'ipAccessSettings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdateIpAccessSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpAccessSettings => L<Paws::WorkSpacesWeb::IpAccessSettings>

The IP access settings.


=head2 _request_id => Str


=cut

