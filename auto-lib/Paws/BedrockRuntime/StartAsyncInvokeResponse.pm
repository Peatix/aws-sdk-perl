
package Paws::BedrockRuntime::StartAsyncInvokeResponse;
  use Moose;
  has InvocationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::StartAsyncInvokeResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InvocationArn => Str

The ARN of the invocation.


=head2 _request_id => Str


=cut

