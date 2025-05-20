
package Paws::WorkSpacesWeb::ListDataProtectionSettingsResponse;
  use Moose;
  has DataProtectionSettings => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::DataProtectionSettingsSummary]', traits => ['NameInRequest'], request_name => 'dataProtectionSettings');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListDataProtectionSettingsResponse

=head1 ATTRIBUTES


=head2 DataProtectionSettings => ArrayRef[L<Paws::WorkSpacesWeb::DataProtectionSettingsSummary>]

The data protection settings.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

