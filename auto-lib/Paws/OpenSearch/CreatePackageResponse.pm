
package Paws::OpenSearch::CreatePackageResponse;
  use Moose;
  has PackageDetails => (is => 'ro', isa => 'Paws::OpenSearch::PackageDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::CreatePackageResponse

=head1 ATTRIBUTES


=head2 PackageDetails => L<Paws::OpenSearch::PackageDetails>

Basic information about an OpenSearch Service package.


=head2 _request_id => Str


=cut

