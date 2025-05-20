
package Paws::Route53::ListCidrLocationsResponse;
  use Moose;
  has CidrLocations => (is => 'ro', isa => 'ArrayRef[Paws::Route53::LocationSummary]');
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListCidrLocationsResponse

=head1 ATTRIBUTES


=head2 CidrLocations => ArrayRef[L<Paws::Route53::LocationSummary>]

A complex type that contains information about the list of CIDR
locations.



=head2 NextToken => Str

An opaque pagination token to indicate where the service is to begin
enumerating results.

If no value is provided, the listing of results starts from the
beginning.




=cut

