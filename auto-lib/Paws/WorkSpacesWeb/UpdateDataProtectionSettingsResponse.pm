
package Paws::WorkSpacesWeb::UpdateDataProtectionSettingsResponse;
  use Moose;
  has DataProtectionSettings => (is => 'ro', isa => 'Paws::WorkSpacesWeb::DataProtectionSettings', traits => ['NameInRequest'], request_name => 'dataProtectionSettings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::UpdateDataProtectionSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataProtectionSettings => L<Paws::WorkSpacesWeb::DataProtectionSettings>

The data protection settings.


=head2 _request_id => Str


=cut

