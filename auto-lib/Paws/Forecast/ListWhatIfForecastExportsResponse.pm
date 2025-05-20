
package Paws::Forecast::ListWhatIfForecastExportsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WhatIfForecastExports => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::WhatIfForecastExportSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListWhatIfForecastExportsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Forecast returns this token. To retrieve
the next set of results, use the token in the next request.


=head2 WhatIfForecastExports => ArrayRef[L<Paws::Forecast::WhatIfForecastExportSummary>]

An array of C<WhatIfForecastExports> objects that describe the matched
forecast exports.


=head2 _request_id => Str


=cut

1;