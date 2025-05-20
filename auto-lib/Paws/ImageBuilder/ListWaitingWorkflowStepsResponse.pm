
package Paws::ImageBuilder::ListWaitingWorkflowStepsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::WorkflowStepExecution]', traits => ['NameInRequest'], request_name => 'steps');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListWaitingWorkflowStepsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The next token used for paginated responses. When this field isn't
empty, there are additional elements that the service hasn't included
in this request. Use this token with the next request to retrieve
additional objects.


=head2 Steps => ArrayRef[L<Paws::ImageBuilder::WorkflowStepExecution>]

An array of the workflow steps that are waiting for action in your
Amazon Web Services account.


=head2 _request_id => Str


=cut

