
package Paws::CodeArtifact::DescribePackageGroupResult;
  use Moose;
  has PackageGroup => (is => 'ro', isa => 'Paws::CodeArtifact::PackageGroupDescription', traits => ['NameInRequest'], request_name => 'packageGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DescribePackageGroupResult

=head1 ATTRIBUTES


=head2 PackageGroup => L<Paws::CodeArtifact::PackageGroupDescription>

A PackageGroupDescription
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html)
object that contains information about the requested package group.


=head2 _request_id => Str


=cut

