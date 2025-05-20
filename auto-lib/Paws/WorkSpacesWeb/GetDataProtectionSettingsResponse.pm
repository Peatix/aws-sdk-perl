
package Paws::WorkSpacesWeb::GetDataProtectionSettingsResponse;
  use Moose;
  has DataProtectionSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::DataProtectionSettings', traits => ['NameInRequest'], request_name => 'dataProtectionSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetDataProtectionSettingsResponse

=head1 ATTRIBUTES


=head2 DataProtectionSettings => L<Paws::WorkSpacesWeb::DataProtectionSettings>

The data protection settings.


=head2 _request_id => Str


=cut

