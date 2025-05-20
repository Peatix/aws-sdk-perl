
package Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsyncResponse;
  use Moose;
  has InvocationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::BedrockDataAutomationRuntime::InvokeDataAutomationAsyncResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationArn => Str

ARN of the automation job


=head2 _request_id => Str


=cut

1;