
package Paws::Forecast::CreateWhatIfForecastResponse;
  use Moose;
  has WhatIfForecastArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateWhatIfForecastResponse

=head1 ATTRIBUTES


=head2 WhatIfForecastArn => Str

The Amazon Resource Name (ARN) of the what-if forecast.


=head2 _request_id => Str


=cut

1;