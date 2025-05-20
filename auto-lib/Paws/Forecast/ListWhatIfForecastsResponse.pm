
package Paws::Forecast::ListWhatIfForecastsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WhatIfForecasts => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::WhatIfForecastSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListWhatIfForecastsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the result of the previous request was truncated, the response
includes a C<NextToken>. To retrieve the next set of results, use the
token in the next request. Tokens expire after 24 hours.


=head2 WhatIfForecasts => ArrayRef[L<Paws::Forecast::WhatIfForecastSummary>]

An array of C<WhatIfForecasts> objects that describe the matched
forecasts.


=head2 _request_id => Str


=cut

1;