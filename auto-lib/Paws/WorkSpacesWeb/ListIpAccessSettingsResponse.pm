
package Paws::WorkSpacesWeb::ListIpAccessSettingsResponse;
  use Moose;
  has IpAccessSettings => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpacesWeb::IpAccessSettingsSummary]', traits => ['NameInRequest'], request_name => 'ipAccessSettings');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::ListIpAccessSettingsResponse

=head1 ATTRIBUTES


=head2 IpAccessSettings => ArrayRef[L<Paws::WorkSpacesWeb::IpAccessSettingsSummary>]

The IP access settings.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

