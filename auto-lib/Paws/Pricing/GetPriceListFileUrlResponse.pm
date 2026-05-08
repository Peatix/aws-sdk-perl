
package Paws::Pricing::GetPriceListFileUrlResponse;
  use Moose;
  has Url => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::GetPriceListFileUrlResponse

=head1 ATTRIBUTES


=head2 Url => Str

The URL to download your Price List file from.


=head2 _request_id => Str


=cut

1;