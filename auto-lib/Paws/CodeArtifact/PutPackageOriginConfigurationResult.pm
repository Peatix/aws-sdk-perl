
package Paws::CodeArtifact::PutPackageOriginConfigurationResult;
  use Moose;
  has OriginConfiguration => (is => 'ro', isa => 'Paws::CodeArtifact::PackageOriginConfiguration', traits => ['NameInRequest'], request_name => 'originConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::PutPackageOriginConfigurationResult

=head1 ATTRIBUTES


=head2 OriginConfiguration => L<Paws::CodeArtifact::PackageOriginConfiguration>

A PackageOriginConfiguration
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginConfiguration.html)
object that describes the origin configuration set for the package. It
contains a PackageOriginRestrictions
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html)
object that describes how new versions of the package can be introduced
to the repository.


=head2 _request_id => Str


=cut

