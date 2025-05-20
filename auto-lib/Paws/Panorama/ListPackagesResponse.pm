
package Paws::Panorama::ListPackagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Packages => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::PackageListItem]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListPackagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 Packages => ArrayRef[L<Paws::Panorama::PackageListItem>]

A list of packages.


=head2 _request_id => Str


=cut

