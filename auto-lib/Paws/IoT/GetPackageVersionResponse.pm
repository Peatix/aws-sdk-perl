
package Paws::IoT::GetPackageVersionResponse;
  use Moose;
  has Artifact => (is => 'ro', isa => 'Paws::IoT::PackageVersionArtifact', traits => ['NameInRequest'], request_name => 'artifact');
  has Attributes => (is => 'ro', isa => 'Paws::IoT::ResourceAttributes', traits => ['NameInRequest'], request_name => 'attributes');
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ErrorReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorReason');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageName');
  has PackageVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageVersionArn');
  has Recipe => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recipe');
  has Sbom => (is => 'ro', isa => 'Paws::IoT::Sbom', traits => ['NameInRequest'], request_name => 'sbom');
  has SbomValidationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sbomValidationStatus');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPackageVersionResponse

=head1 ATTRIBUTES


=head2 Artifact => L<Paws::IoT::PackageVersionArtifact>

The various components that make up a software package version.


=head2 Attributes => L<Paws::IoT::ResourceAttributes>

Metadata that were added to the package version that can be used to
define a package versionE<rsquo>s configuration.


=head2 CreationDate => Str

The date when the package version was created.


=head2 Description => Str

The package version description.


=head2 ErrorReason => Str

Error reason for a package version failure during creation or update.


=head2 LastModifiedDate => Str

The date when the package version was last updated.


=head2 PackageName => Str

The name of the software package.


=head2 PackageVersionArn => Str

The ARN for the package version.


=head2 Recipe => Str

The inline job document associated with a software package version used
for a quick job deployment.


=head2 Sbom => L<Paws::IoT::Sbom>

The software bill of materials for a software package version.


=head2 SbomValidationStatus => Str

The status of the validation for a new software bill of materials added
to a software package version.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"SUCCEEDED">
=head2 Status => Str

The status associated to the package version. For more information, see
Package version lifecycle
(https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle).

Valid values are: C<"DRAFT">, C<"PUBLISHED">, C<"DEPRECATED">
=head2 VersionName => Str

The name of the package version.


=head2 _request_id => Str


=cut

