
package Paws::Forecast::CreateWhatIfAnalysisResponse;
  use Moose;
  has WhatIfAnalysisArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateWhatIfAnalysisResponse

=head1 ATTRIBUTES


=head2 WhatIfAnalysisArn => Str

The Amazon Resource Name (ARN) of the what-if analysis.


=head2 _request_id => Str


=cut

1;