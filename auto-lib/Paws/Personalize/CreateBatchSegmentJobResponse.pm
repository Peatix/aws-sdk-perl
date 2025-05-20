
package Paws::Personalize::CreateBatchSegmentJobResponse;
  use Moose;
  has BatchSegmentJobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'batchSegmentJobArn' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::CreateBatchSegmentJobResponse

=head1 ATTRIBUTES


=head2 BatchSegmentJobArn => Str

The ARN of the batch segment job.


=head2 _request_id => Str


=cut

1;