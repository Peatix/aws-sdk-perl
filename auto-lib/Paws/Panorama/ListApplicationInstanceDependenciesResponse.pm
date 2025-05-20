
package Paws::Panorama::ListApplicationInstanceDependenciesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PackageObjects => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::PackageObject]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListApplicationInstanceDependenciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 PackageObjects => ArrayRef[L<Paws::Panorama::PackageObject>]

A list of package objects.


=head2 _request_id => Str


=cut

