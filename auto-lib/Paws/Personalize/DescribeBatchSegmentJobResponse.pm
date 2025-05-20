
package Paws::Personalize::DescribeBatchSegmentJobResponse;
  use Moose;
  has BatchSegmentJob => (is => 'ro', isa => 'Paws::Personalize::BatchSegmentJob', traits => ['NameInRequest'], request_name => 'batchSegmentJob' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::DescribeBatchSegmentJobResponse

=head1 ATTRIBUTES


=head2 BatchSegmentJob => L<Paws::Personalize::BatchSegmentJob>

Information on the specified batch segment job.


=head2 _request_id => Str


=cut

1;