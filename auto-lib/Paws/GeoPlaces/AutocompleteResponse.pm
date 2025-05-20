
package Paws::GeoPlaces::AutocompleteResponse;
  use Moose;
  has PricingBucket => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-geo-pricing-bucket', required => 1);
  has ResultItems => (is => 'ro', isa => 'ArrayRef[Paws::GeoPlaces::AutocompleteResultItem]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GeoPlaces::AutocompleteResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> PricingBucket => Str

The pricing bucket for which the query is charged at.

For more inforamtion on pricing, please visit Amazon Location Service
Pricing (https://aws.amazon.com/location/pricing/).


=head2 ResultItems => ArrayRef[L<Paws::GeoPlaces::AutocompleteResultItem>]

List of places or results returned for a query.


=head2 _request_id => Str


=cut

