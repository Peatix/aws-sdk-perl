
package Paws::Detective::ListDatasourcePackagesResponse;
  use Moose;
  has DatasourcePackages => (is => 'ro', isa => 'Paws::Detective::DatasourcePackageIngestDetails');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::ListDatasourcePackagesResponse

=head1 ATTRIBUTES


=head2 DatasourcePackages => L<Paws::Detective::DatasourcePackageIngestDetails>

Details on the data source packages active in the behavior graph.


=head2 NextToken => Str

For requests to get the next page of results, the pagination token that
was returned with the previous set of results. The initial request does
not include a pagination token.


=head2 _request_id => Str


=cut

