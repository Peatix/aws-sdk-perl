
package Paws::CodeArtifact::ListAssociatedPackagesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Packages => (is => 'ro', isa => 'ArrayRef[Paws::CodeArtifact::AssociatedPackage]', traits => ['NameInRequest'], request_name => 'packages');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::ListAssociatedPackagesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 Packages => ArrayRef[L<Paws::CodeArtifact::AssociatedPackage>]

The list of packages associated with the requested package group.


=head2 _request_id => Str


=cut

