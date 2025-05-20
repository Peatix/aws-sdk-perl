
package Paws::SESv2::ListMultiRegionEndpointsResponse;
  use Moose;
  has MultiRegionEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::MultiRegionEndpoint]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListMultiRegionEndpointsResponse

=head1 ATTRIBUTES


=head2 MultiRegionEndpoints => ArrayRef[L<Paws::SESv2::MultiRegionEndpoint>]

An array that contains key multi-region endpoint (global-endpoint)
properties.


=head2 NextToken => Str

A token indicating that there are additional multi-region endpoints
(global-endpoints) available to be listed. Pass this token to a
subsequent C<ListMultiRegionEndpoints> call to retrieve the next page.


=head2 _request_id => Str


=cut

