
package Paws::IoT::AssociateSbomWithPackageVersionResponse;
  use Moose;
  has PackageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageName');
  has Sbom => (is => 'ro', isa => 'Paws::IoT::Sbom', traits => ['NameInRequest'], request_name => 'sbom');
  has SbomValidationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sbomValidationStatus');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AssociateSbomWithPackageVersionResponse

=head1 ATTRIBUTES


=head2 PackageName => Str

The name of the new software package.


=head2 Sbom => L<Paws::IoT::Sbom>




=head2 SbomValidationStatus => Str

The status of the initial validation for the software bill of materials
against the Software Package Data Exchange (SPDX) and CycloneDX
industry standard formats.

Valid values are: C<"IN_PROGRESS">, C<"FAILED">, C<"SUCCEEDED">
=head2 VersionName => Str

The name of the new package version.


=head2 _request_id => Str


=cut

