
package Paws::SageMaker::CreateOptimizationJobResponse;
  use Moose;
  has OptimizationJobArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateOptimizationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> OptimizationJobArn => Str

The Amazon Resource Name (ARN) of the optimization job.


=head2 _request_id => Str


=cut

1;