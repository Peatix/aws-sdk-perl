
package Paws::LexModelsV2::StartTestExecutionResponse;
  use Moose;
  has ApiMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMode');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has Target => (is => 'ro', isa => 'Paws::LexModelsV2::TestExecutionTarget', traits => ['NameInRequest'], request_name => 'target');
  has TestExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testExecutionId');
  has TestExecutionModality => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testExecutionModality');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartTestExecutionResponse

=head1 ATTRIBUTES


=head2 ApiMode => Str

Indicates whether we use streaming or non-streaming APIs for the test
set execution. For streaming, StartConversation Amazon Lex Runtime API
is used. Whereas for non-streaming, RecognizeUtterance and
RecognizeText Amazon Lex Runtime API are used.

Valid values are: C<"Streaming">, C<"NonStreaming">
=head2 CreationDateTime => Str

The creation date and time for the test set execution.


=head2 Target => L<Paws::LexModelsV2::TestExecutionTarget>

The target bot for the test set execution.


=head2 TestExecutionId => Str

The unique identifier of the test set execution.


=head2 TestExecutionModality => Str

Indicates whether audio or text is used.

Valid values are: C<"Text">, C<"Audio">
=head2 TestSetId => Str

The test set Id for the test set execution.


=head2 _request_id => Str


=cut

