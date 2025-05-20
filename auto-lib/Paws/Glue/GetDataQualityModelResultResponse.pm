
package Paws::Glue::GetDataQualityModelResultResponse;
  use Moose;
  has CompletedOn => (is => 'ro', isa => 'Str');
  has Model => (is => 'ro', isa => 'ArrayRef[Paws::Glue::StatisticModelResult]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityModelResultResponse

=head1 ATTRIBUTES


=head2 CompletedOn => Str

The timestamp when the data quality model training completed.


=head2 Model => ArrayRef[L<Paws::Glue::StatisticModelResult>]

A list of C<StatisticModelResult>


=head2 _request_id => Str


=cut

1;