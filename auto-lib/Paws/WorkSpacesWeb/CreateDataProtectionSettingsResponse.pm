
package Paws::WorkSpacesWeb::CreateDataProtectionSettingsResponse;
  use Moose;
  has DataProtectionSettingsArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataProtectionSettingsArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::CreateDataProtectionSettingsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataProtectionSettingsArn => Str

The ARN of the data protection settings resource.


=head2 _request_id => Str


=cut

