
package Paws::LexModelsV2::BatchDeleteCustomVocabularyItem;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has CustomVocabularyItemList => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::CustomVocabularyEntryId]', traits => ['NameInRequest'], request_name => 'customVocabularyItemList', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteCustomVocabularyItem');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchdelete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::BatchDeleteCustomVocabularyItemResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::BatchDeleteCustomVocabularyItem - Arguments for method BatchDeleteCustomVocabularyItem on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteCustomVocabularyItem on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method BatchDeleteCustomVocabularyItem.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteCustomVocabularyItem.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $BatchDeleteCustomVocabularyItemResponse =
      $models - v2 -lex->BatchDeleteCustomVocabularyItem(
      BotId                    => 'MyId',
      BotVersion               => 'MyBotVersion',
      CustomVocabularyItemList => [
        {
          ItemId => 'MyItemId',    # min: 1, max: 32

        },
        ...
      ],
      LocaleId => 'MyLocaleId',

      );

    # Results:
    my $BotId      = $BatchDeleteCustomVocabularyItemResponse->BotId;
    my $BotVersion = $BatchDeleteCustomVocabularyItemResponse->BotVersion;
    my $Errors     = $BatchDeleteCustomVocabularyItemResponse->Errors;
    my $LocaleId   = $BatchDeleteCustomVocabularyItemResponse->LocaleId;
    my $Resources  = $BatchDeleteCustomVocabularyItemResponse->Resources;

# Returns a L<Paws::LexModelsV2::BatchDeleteCustomVocabularyItemResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/BatchDeleteCustomVocabularyItem>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot associated with this custom vocabulary.



=head2 B<REQUIRED> BotVersion => Str

The identifier of the version of the bot associated with this custom
vocabulary.



=head2 B<REQUIRED> CustomVocabularyItemList => ArrayRef[L<Paws::LexModelsV2::CustomVocabularyEntryId>]

A list of custom vocabulary items requested to be deleted. Each entry
must contain the unique custom vocabulary entry identifier.



=head2 B<REQUIRED> LocaleId => Str

The identifier of the language and locale where this custom vocabulary
is used. The string must match one of the supported locales. For more
information, see Supported Languages
(https://docs.aws.amazon.com/lexv2/latest/dg/how-languages.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteCustomVocabularyItem in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

