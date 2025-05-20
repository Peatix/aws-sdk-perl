
package Paws::Panorama::DescribePackageResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreatedTime => (is => 'ro', isa => 'Str', required => 1);
  has PackageId => (is => 'ro', isa => 'Str', required => 1);
  has PackageName => (is => 'ro', isa => 'Str', required => 1);
  has ReadAccessPrincipalArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StorageLocation => (is => 'ro', isa => 'Paws::Panorama::StorageLocation', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Panorama::TagMap', required => 1);
  has WriteAccessPrincipalArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::DescribePackageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The package's ARN.


=head2 B<REQUIRED> CreatedTime => Str

When the package was created.


=head2 B<REQUIRED> PackageId => Str

The package's ID.


=head2 B<REQUIRED> PackageName => Str

The package's name.


=head2 ReadAccessPrincipalArns => ArrayRef[Str|Undef]

ARNs of accounts that have read access to the package.


=head2 B<REQUIRED> StorageLocation => L<Paws::Panorama::StorageLocation>

The package's storage location.


=head2 B<REQUIRED> Tags => L<Paws::Panorama::TagMap>

The package's tags.


=head2 WriteAccessPrincipalArns => ArrayRef[Str|Undef]

ARNs of accounts that have write access to the package.


=head2 _request_id => Str


=cut

