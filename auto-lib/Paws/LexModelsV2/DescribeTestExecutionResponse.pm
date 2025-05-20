
package Paws::LexModelsV2::DescribeTestExecutionResponse;
  use Moose;
  has ApiMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMode');
  has CreationDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDateTime');
  has FailureReasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'failureReasons');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedDateTime');
  has Target => (is => 'ro', isa => 'Paws::LexModelsV2::TestExecutionTarget', traits => ['NameInRequest'], request_name => 'target');
  has TestExecutionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testExecutionId');
  has TestExecutionModality => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testExecutionModality');
  has TestExecutionStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testExecutionStatus');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetId');
  has TestSetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testSetName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeTestExecutionResponse

=head1 ATTRIBUTES


=head2 ApiMode => Str

Indicates whether we use streaming or non-streaming APIs are used for
the test set execution. For streaming, C<StartConversation> Amazon Lex
Runtime API is used. Whereas for non-streaming, C<RecognizeUtterance>
and C<RecognizeText> Amazon Lex Runtime API is used.

Valid values are: C<"Streaming">, C<"NonStreaming">
=head2 CreationDateTime => Str

The execution creation date and time for the test set execution.


=head2 FailureReasons => ArrayRef[Str|Undef]

Reasons for the failure of the test set execution.


=head2 LastUpdatedDateTime => Str

The date and time of the last update for the execution.


=head2 Target => L<Paws::LexModelsV2::TestExecutionTarget>

The target bot for the test set execution details.


=head2 TestExecutionId => Str

The execution Id for the test set execution.


=head2 TestExecutionModality => Str

Indicates whether test set is audio or text.

Valid values are: C<"Text">, C<"Audio">
=head2 TestExecutionStatus => Str

The test execution status for the test execution.

Valid values are: C<"Pending">, C<"Waiting">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Stopping">, C<"Stopped">
=head2 TestSetId => Str

The test set Id for the test set execution.


=head2 TestSetName => Str

The test set name of the test set execution.


=head2 _request_id => Str


=cut

