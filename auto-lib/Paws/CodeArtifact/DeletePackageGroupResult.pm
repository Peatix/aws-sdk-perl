
package Paws::CodeArtifact::DeletePackageGroupResult;
  use Moose;
  has PackageGroup => (is => 'ro', isa => 'Paws::CodeArtifact::PackageGroupDescription', traits => ['NameInRequest'], request_name => 'packageGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeletePackageGroupResult

=head1 ATTRIBUTES


=head2 PackageGroup => L<Paws::CodeArtifact::PackageGroupDescription>

Information about the deleted package group after processing the
request.


=head2 _request_id => Str


=cut

