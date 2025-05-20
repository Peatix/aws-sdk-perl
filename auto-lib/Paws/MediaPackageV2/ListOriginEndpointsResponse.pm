
package Paws::MediaPackageV2::ListOriginEndpointsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaPackageV2::OriginEndpointListConfiguration]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageV2::ListOriginEndpointsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaPackageV2::OriginEndpointListConfiguration>]

The objects being returned.


=head2 NextToken => Str

The pagination token from the GET list request. Use the token to fetch
the next page of results.


=head2 _request_id => Str


=cut

