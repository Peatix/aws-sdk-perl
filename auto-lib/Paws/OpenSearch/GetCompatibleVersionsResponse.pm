
package Paws::OpenSearch::GetCompatibleVersionsResponse;
  use Moose;
  has CompatibleVersions => (is => 'ro', isa => 'ArrayRef[Paws::OpenSearch::CompatibleVersionsMap]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::GetCompatibleVersionsResponse

=head1 ATTRIBUTES


=head2 CompatibleVersions => ArrayRef[L<Paws::OpenSearch::CompatibleVersionsMap>]

A map of OpenSearch or Elasticsearch versions and the versions you can
upgrade them to.


=head2 _request_id => Str


=cut

