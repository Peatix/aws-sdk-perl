
package Paws::BedrockRuntime::GetAsyncInvokeResponse;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has FailureMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureMessage');
  has InvocationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'invocationArn', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has ModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelArn', required => 1);
  has OutputDataConfig => (is => 'ro', isa => 'Paws::BedrockRuntime::AsyncInvokeOutputDataConfig', traits => ['NameInRequest'], request_name => 'outputDataConfig', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has SubmitTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'submitTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BedrockRuntime::GetAsyncInvokeResponse

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The invocation's idempotency token.


=head2 EndTime => Str

When the invocation ended.


=head2 FailureMessage => Str

An error message.


=head2 B<REQUIRED> InvocationArn => Str

The invocation's ARN.


=head2 LastModifiedTime => Str

The invocation's last modified time.


=head2 B<REQUIRED> ModelArn => Str

The invocation's model ARN.


=head2 B<REQUIRED> OutputDataConfig => L<Paws::BedrockRuntime::AsyncInvokeOutputDataConfig>

Output data settings.


=head2 B<REQUIRED> Status => Str

The invocation's status.

Valid values are: C<"InProgress">, C<"Completed">, C<"Failed">
=head2 B<REQUIRED> SubmitTime => Str

When the invocation request was submitted.


=head2 _request_id => Str


=cut

