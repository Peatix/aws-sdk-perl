
package Paws::WorkSpacesWeb::CreateIpAccessSettingsResponse;
  use Moose;
  has IpAccessSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipAccessSettingsArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateIpAccessSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IpAccessSettingsArn => Str

The ARN of the IP access settings resource.


=head2 _request_id => Str


=cut

