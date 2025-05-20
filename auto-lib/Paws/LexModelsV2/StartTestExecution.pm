
package Paws::LexModelsV2::StartTestExecution;
  use Moose;
  has ApiMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiMode', required => 1);
  has Target => (is => 'ro', isa => 'Paws::LexModelsV2::TestExecutionTarget', traits => ['NameInRequest'], request_name => 'target', required => 1);
  has TestExecutionModality => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testExecutionModality');
  has TestSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'testSetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTestExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/testsets/{testSetId}/testexecutions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::StartTestExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartTestExecution - Arguments for method StartTestExecution on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTestExecution on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method StartTestExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTestExecution.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $StartTestExecutionResponse = $models - v2 -lex->StartTestExecution(
      ApiMode => 'Streaming',
      Target  => {
        BotAliasTarget => {
          BotAliasId => 'MyBotAliasId',    # min: 10, max: 10
          BotId      => 'MyId',            # min: 10, max: 10
          LocaleId   => 'MyLocaleId',

        },    # OPTIONAL
      },
      TestSetId             => 'MyId',
      TestExecutionModality => 'Text',    # OPTIONAL
    );

    # Results:
    my $ApiMode          = $StartTestExecutionResponse->ApiMode;
    my $CreationDateTime = $StartTestExecutionResponse->CreationDateTime;
    my $Target           = $StartTestExecutionResponse->Target;
    my $TestExecutionId  = $StartTestExecutionResponse->TestExecutionId;
    my $TestExecutionModality =
      $StartTestExecutionResponse->TestExecutionModality;
    my $TestSetId = $StartTestExecutionResponse->TestSetId;

    # Returns a L<Paws::LexModelsV2::StartTestExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/StartTestExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiMode => Str

Indicates whether we use streaming or non-streaming APIs for the test
set execution. For streaming, StartConversation Runtime API is used.
Whereas, for non-streaming, RecognizeUtterance and RecognizeText Amazon
Lex Runtime API are used.

Valid values are: C<"Streaming">, C<"NonStreaming">

=head2 B<REQUIRED> Target => L<Paws::LexModelsV2::TestExecutionTarget>

The target bot for the test set execution.



=head2 TestExecutionModality => Str

Indicates whether audio or text is used.

Valid values are: C<"Text">, C<"Audio">

=head2 B<REQUIRED> TestSetId => Str

The test set Id for the test set execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTestExecution in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

