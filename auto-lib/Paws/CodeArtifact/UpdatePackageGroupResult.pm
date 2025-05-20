
package Paws::CodeArtifact::UpdatePackageGroupResult;
  use Moose;
  has PackageGroup => (is => 'ro', isa => 'Paws::CodeArtifact::PackageGroupDescription', traits => ['NameInRequest'], request_name => 'packageGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::UpdatePackageGroupResult

=head1 ATTRIBUTES


=head2 PackageGroup => L<Paws::CodeArtifact::PackageGroupDescription>

The package group and information about it after the request has been
processed.


=head2 _request_id => Str


=cut

