
package Paws::LexModelsV2::DeleteUtterances;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'localeId');
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sessionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUtterances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/utterances/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteUtterancesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteUtterances - Arguments for method DeleteUtterances on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUtterances on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteUtterances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUtterances.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteUtterancesResponse = $models - v2 -lex->DeleteUtterances(
      BotId     => 'MyId',
      LocaleId  => 'MyLocaleId',     # OPTIONAL
      SessionId => 'MySessionId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteUtterances>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot that contains the utterances.



=head2 LocaleId => Str

The identifier of the language and locale where the utterances were
collected. The string must match one of the supported locales. For more
information, see Supported languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).



=head2 SessionId => Str

The unique identifier of the session with the user. The ID is returned
in the response from the RecognizeText
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeText.html)
and RecognizeUtterance
(https://docs.aws.amazon.com/lexv2/latest/APIReference/API_runtime_RecognizeUtterance.html)
operations.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUtterances in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

