
package Paws::Bedrock::BatchDeleteEvaluationJobResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::BatchDeleteEvaluationJobError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);
  has EvaluationJobs => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::BatchDeleteEvaluationJobItem]', traits => ['NameInRequest'], request_name => 'evaluationJobs', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::BatchDeleteEvaluationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::Bedrock::BatchDeleteEvaluationJobError>]

A JSON object containing the HTTP status codes and the ARNs of
evaluation jobs that failed to be deleted.


=head2 B<REQUIRED> EvaluationJobs => ArrayRef[L<Paws::Bedrock::BatchDeleteEvaluationJobItem>]

The list of evaluation jobs for deletion.


=head2 _request_id => Str


=cut

