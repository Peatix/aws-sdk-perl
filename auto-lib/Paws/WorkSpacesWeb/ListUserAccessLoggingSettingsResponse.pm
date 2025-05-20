
package Paws::WorkSpacesWeb::ListUserAccessLoggingSettingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has UserAccessLoggingSettings => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::UserAccessLoggingSettingsSummary]', traits => ['NameInRequest'], request_name => 'userAccessLoggingSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListUserAccessLoggingSettingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 UserAccessLoggingSettings => ArrayRef[L<Paws::WorkSpacesWeb::UserAccessLoggingSettingsSummary>]

The user access logging settings.


=head2 _request_id => Str


=cut

