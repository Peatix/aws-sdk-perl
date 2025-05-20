
package Paws::Panorama::CreatePackageResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has PackageId => (is => 'ro', isa => 'Str');
  has StorageLocation => (is => 'ro', isa => 'Paws::Panorama::StorageLocation', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreatePackageResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The package's ARN.


=head2 PackageId => Str

The package's ID.


=head2 B<REQUIRED> StorageLocation => L<Paws::Panorama::StorageLocation>

The package's storage location.


=head2 _request_id => Str


=cut

