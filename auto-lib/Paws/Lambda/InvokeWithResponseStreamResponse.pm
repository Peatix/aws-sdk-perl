
package Paws::Lambda::InvokeWithResponseStreamResponse;
  use Moose;
  has EventStream => (is => 'ro', isa => 'Paws::Lambda::InvokeWithResponseStreamResponseEvent');
  has ExecutedVersion => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Executed-Version');
  has ResponseStreamContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  has StatusCode => (is => 'ro', isa => 'Int');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'EventStream');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::InvokeWithResponseStreamResponse

=head1 ATTRIBUTES


=head2 EventStream => L<Paws::Lambda::InvokeWithResponseStreamResponseEvent>

The stream of response payloads.


=head2 ExecutedVersion => Str

The version of the function that executed. When you invoke a function
with an alias, this indicates which version the alias resolved to.


=head2 ResponseStreamContentType => Str

The type of data the stream is returning.


=head2 StatusCode => Int

For a successful request, the HTTP status code is in the 200 range. For
the C<RequestResponse> invocation type, this status code is 200. For
the C<DryRun> invocation type, this status code is 204.


=head2 _request_id => Str


=cut

