
package Paws::M2::ListBatchJobRestartPointsResponse;
  use Moose;
  has BatchJobSteps => (is => 'ro', isa => 'ArrayRef[Paws::M2::JobStep]', traits => ['NameInRequest'], request_name => 'batchJobSteps');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListBatchJobRestartPointsResponse

=head1 ATTRIBUTES


=head2 BatchJobSteps => ArrayRef[L<Paws::M2::JobStep>]

Returns all the batch job steps and related information for a batch job
that previously ran.


=head2 _request_id => Str


=cut

