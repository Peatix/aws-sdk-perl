
package Paws::CodeArtifact::DeletePackageResult;
  use Moose;
  has DeletedPackage => (is => 'ro', isa => 'Paws::CodeArtifact::PackageSummary', traits => ['NameInRequest'], request_name => 'deletedPackage');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DeletePackageResult

=head1 ATTRIBUTES


=head2 DeletedPackage => L<Paws::CodeArtifact::PackageSummary>




=head2 _request_id => Str


=cut

