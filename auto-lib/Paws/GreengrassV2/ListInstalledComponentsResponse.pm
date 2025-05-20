
package Paws::GreengrassV2::ListInstalledComponentsResponse;
  use Moose;
  has InstalledComponents => (is => 'ro', isa => 'ArrayRef[Paws::GreengrassV2::InstalledComponent]', traits => ['NameInRequest'], request_name => 'installedComponents');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::ListInstalledComponentsResponse

=head1 ATTRIBUTES


=head2 InstalledComponents => ArrayRef[L<Paws::GreengrassV2::InstalledComponent>]

A list that summarizes each component on the core device.

Greengrass nucleus v2.7.0 or later is required to get an accurate
C<lastStatusChangeTimestamp> response. This response can be inaccurate
in earlier Greengrass nucleus versions.

Greengrass nucleus v2.8.0 or later is required to get an accurate
C<lastInstallationSource> and C<lastReportedTimestamp> response. This
response can be inaccurate or null in earlier Greengrass nucleus
versions.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

