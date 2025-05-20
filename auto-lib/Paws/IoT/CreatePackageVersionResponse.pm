
package Paws::IoT::CreatePackageVersionResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT::ResourceAttributes', traits => ['NameInRequest'], request_name => 'attributes');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has ErrorReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorReason');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageName');
  has PackageVersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageVersionArn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePackageVersionResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT::ResourceAttributes>

Metadata that were added to the package version that can be used to
define a package versionE<rsquo>s configuration.


=head2 Description => Str

The package version description.


=head2 ErrorReason => Str

Error reason for a package version failure during creation or update.


=head2 PackageName => Str

The name of the associated software package.


=head2 PackageVersionArn => Str

The Amazon Resource Name (ARN) for the package.


=head2 Status => Str

The status of the package version. For more information, see Package
version lifecycle
(https://docs.aws.amazon.com/iot/latest/developerguide/preparing-to-use-software-package-catalog.html#package-version-lifecycle).

Valid values are: C<"DRAFT">, C<"PUBLISHED">, C<"DEPRECATED">
=head2 VersionName => Str

The name of the new package version.


=head2 _request_id => Str


=cut

