
package Paws::Textract::StartLendingAnalysisResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::StartLendingAnalysisResponse

=head1 ATTRIBUTES


=head2 JobId => Str

A unique identifier for the lending or text-detection job. The C<JobId>
is returned from C<StartLendingAnalysis>. A C<JobId> value is only
valid for 7 days.


=head2 _request_id => Str


=cut

1;