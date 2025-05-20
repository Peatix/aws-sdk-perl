
package Paws::Forecast::ListWhatIfAnalysesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has WhatIfAnalyses => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::WhatIfAnalysisSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::ListWhatIfAnalysesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Forecast returns this token. To retrieve
the next set of results, use the token in the next request.


=head2 WhatIfAnalyses => ArrayRef[L<Paws::Forecast::WhatIfAnalysisSummary>]

An array of C<WhatIfAnalysisSummary> objects that describe the matched
analyses.


=head2 _request_id => Str


=cut

1;