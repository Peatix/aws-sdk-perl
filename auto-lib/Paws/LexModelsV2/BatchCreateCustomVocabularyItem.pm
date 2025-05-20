
package Paws::LexModelsV2::BatchCreateCustomVocabularyItem;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has CustomVocabularyItemList => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::NewCustomVocabularyItem]', traits => ['NameInRequest'], request_name => 'customVocabularyItemList', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateCustomVocabularyItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchcreate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::BatchCreateCustomVocabularyItemResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BatchCreateCustomVocabularyItem - Arguments for method BatchCreateCustomVocabularyItem on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateCustomVocabularyItem on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method BatchCreateCustomVocabularyItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateCustomVocabularyItem.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $BatchCreateCustomVocabularyItemResponse =
      $models - v2 -lex->BatchCreateCustomVocabularyItem(
      BotId                    => 'MyId',
      BotVersion               => 'MyBotVersion',
      CustomVocabularyItemList => [
        {
          Phrase    => 'MyPhrase',    # min: 1, max: 100
          DisplayAs => 'MyPhrase',    # min: 1, max: 100
          Weight    => 1,             # max: 3; OPTIONAL
        },
        ...
      ],
      LocaleId => 'MyLocaleId',

      );

    # Results:
    my $BotId      = $BatchCreateCustomVocabularyItemResponse->BotId;
    my $BotVersion = $BatchCreateCustomVocabularyItemResponse->BotVersion;
    my $Errors     = $BatchCreateCustomVocabularyItemResponse->Errors;
    my $LocaleId   = $BatchCreateCustomVocabularyItemResponse->LocaleId;
    my $Resources  = $BatchCreateCustomVocabularyItemResponse->Resources;

# Returns a L<Paws::LexModelsV2::BatchCreateCustomVocabularyItemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/BatchCreateCustomVocabularyItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with this custom vocabulary.



=head2 B<REQUIRED> BotVersion => Str

The identifier of the version of the bot associated with this custom
vocabulary.



=head2 B<REQUIRED> CustomVocabularyItemList => ArrayRef[L<Paws::LexModelsV2::NewCustomVocabularyItem>]

A list of new custom vocabulary items. Each entry must contain a phrase
and can optionally contain a displayAs and/or a weight.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale where this custom vocabulary
is used. The string must match one of the supported locales. For more
information, see Supported Languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateCustomVocabularyItem in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

