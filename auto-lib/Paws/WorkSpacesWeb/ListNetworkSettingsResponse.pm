
package Paws::WorkSpacesWeb::ListNetworkSettingsResponse;
  use Moose;
  has NetworkSettings => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::NetworkSettingsSummary]', traits => ['NameInRequest'], request_name => 'networkSettings');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListNetworkSettingsResponse

=head1 ATTRIBUTES


=head2 NetworkSettings => ArrayRef[L<Paws::WorkSpacesWeb::NetworkSettingsSummary>]

The network settings.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

