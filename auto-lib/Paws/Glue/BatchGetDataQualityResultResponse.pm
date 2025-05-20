
package Paws::Glue::BatchGetDataQualityResultResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Glue::DataQualityResult]', required => 1);
  has ResultsNotFound => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetDataQualityResultResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::Glue::DataQualityResult>]

A list of C<DataQualityResult> objects representing the data quality
results.


=head2 ResultsNotFound => ArrayRef[Str|Undef]

A list of result IDs for which results were not found.


=head2 _request_id => Str


=cut

1;