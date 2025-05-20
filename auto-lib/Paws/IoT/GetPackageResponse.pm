
package Paws::IoT::GetPackageResponse;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has DefaultVersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultVersionName');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has PackageArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageArn');
  has PackageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'packageName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetPackageResponse

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date the package was created.


=head2 DefaultVersionName => Str

The name of the default package version.


=head2 Description => Str

The package description.


=head2 LastModifiedDate => Str

The date when the package was last updated.


=head2 PackageArn => Str

The ARN for the package.


=head2 PackageName => Str

The name of the software package.


=head2 _request_id => Str


=cut

