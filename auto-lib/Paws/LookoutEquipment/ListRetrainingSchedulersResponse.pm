
package Paws::LookoutEquipment::ListRetrainingSchedulersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RetrainingSchedulerSummaries => (is => 'ro', isa => 'ArrayRef[Paws::LookoutEquipment::RetrainingSchedulerSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LookoutEquipment::ListRetrainingSchedulersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the number of results exceeds the maximum, this pagination token is
returned. Use this token in the request to show the next page of
retraining schedulers.


=head2 RetrainingSchedulerSummaries => ArrayRef[L<Paws::LookoutEquipment::RetrainingSchedulerSummary>]

Provides information on the specified retraining scheduler, including
the model name, model ARN, status, and start date.


=head2 _request_id => Str


=cut

1;