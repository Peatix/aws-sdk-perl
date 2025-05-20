
package Paws::Bedrock::ListEvaluationJobsResponse;
  use Moose;
  has JobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Bedrock::EvaluationSummary]', traits => ['NameInRequest'], request_name => 'jobSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListEvaluationJobsResponse

=head1 ATTRIBUTES


=head2 JobSummaries => ArrayRef[L<Paws::Bedrock::EvaluationSummary>]

A list of summaries of the evaluation jobs.


=head2 NextToken => Str

Continuation token from the previous response, for Amazon Bedrock to
list the next set of results.


=head2 _request_id => Str


=cut

