
package Paws::Grafana::ListVersionsResponse;
  use Moose;
  has GrafanaVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'grafanaVersions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::ListVersionsResponse

=head1 ATTRIBUTES


=head2 GrafanaVersions => ArrayRef[Str|Undef]

The Grafana versions available to create. If a workspace ID is included
in the request, the Grafana versions to which this workspace can be
upgraded.


=head2 NextToken => Str

The token to use in a subsequent C<ListVersions> operation to return
the next set of results.


=head2 _request_id => Str


=cut

