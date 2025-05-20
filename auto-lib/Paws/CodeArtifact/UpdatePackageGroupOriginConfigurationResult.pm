
package Paws::CodeArtifact::UpdatePackageGroupOriginConfigurationResult;
  use Moose;
  has AllowedRepositoryUpdates => (is => 'ro', isa => 'Paws::CodeArtifact::PackageGroupAllowedRepositoryUpdates', traits => ['NameInRequest'], request_name => 'allowedRepositoryUpdates');
  has PackageGroup => (is => 'ro', isa => 'Paws::CodeArtifact::PackageGroupDescription', traits => ['NameInRequest'], request_name => 'packageGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::UpdatePackageGroupOriginConfigurationResult

=head1 ATTRIBUTES


=head2 AllowedRepositoryUpdates => L<Paws::CodeArtifact::PackageGroupAllowedRepositoryUpdates>

Information about the updated allowed repositories after processing the
request.


=head2 PackageGroup => L<Paws::CodeArtifact::PackageGroupDescription>

The package group and information about it after processing the
request.


=head2 _request_id => Str


=cut

