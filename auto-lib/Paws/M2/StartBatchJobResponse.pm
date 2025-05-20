
package Paws::M2::StartBatchJobResponse;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::StartBatchJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionId => Str

The unique identifier of this execution of the batch job.


=head2 _request_id => Str


=cut

