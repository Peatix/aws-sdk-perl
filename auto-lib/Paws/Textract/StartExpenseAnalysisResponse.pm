
package Paws::Textract::StartExpenseAnalysisResponse;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::StartExpenseAnalysisResponse

=head1 ATTRIBUTES


=head2 JobId => Str

A unique identifier for the text detection job. The C<JobId> is
returned from C<StartExpenseAnalysis>. A C<JobId> value is only valid
for 7 days.


=head2 _request_id => Str


=cut

1;