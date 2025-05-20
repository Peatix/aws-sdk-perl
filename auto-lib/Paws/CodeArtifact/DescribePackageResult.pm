
package Paws::CodeArtifact::DescribePackageResult;
  use Moose;
  has Package => (is => 'ro', isa => 'Paws::CodeArtifact::PackageDescription', traits => ['NameInRequest'], request_name => 'package', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DescribePackageResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Package => L<Paws::CodeArtifact::PackageDescription>

A PackageDescription
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html)
object that contains information about the requested package.


=head2 _request_id => Str


=cut

