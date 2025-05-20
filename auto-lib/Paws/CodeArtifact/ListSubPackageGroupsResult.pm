
package Paws::CodeArtifact::ListSubPackageGroupsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PackageGroups => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::PackageGroupSummary]', traits => ['NameInRequest'], request_name => 'packageGroups');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListSubPackageGroupsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are additional results, this is the token for the next set of
results.


=head2 PackageGroups => ArrayRef[L<Paws::CodeArtifact::PackageGroupSummary>]

A list of sub package groups for the requested package group.


=head2 _request_id => Str


=cut

