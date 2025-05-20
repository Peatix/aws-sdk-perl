
package Paws::Glue::GetDataQualityModelResponse;
  use Moose;
  has CompletedOn => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has StartedOn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataQualityModelResponse

=head1 ATTRIBUTES


=head2 CompletedOn => Str

The timestamp when the data quality model training completed.


=head2 FailureReason => Str

The training failure reason.


=head2 StartedOn => Str

The timestamp when the data quality model training started.


=head2 Status => Str

The training status of the data quality model.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;