
package Paws::CodeArtifact::ListPackageGroupsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PackageGroups => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::PackageGroupSummary]', traits => ['NameInRequest'], request_name => 'packageGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListPackageGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 PackageGroups => ArrayRef[L<Paws::CodeArtifact::PackageGroupSummary>]

The list of package groups in the requested domain.


=head2 _request_id => Str


=cut

