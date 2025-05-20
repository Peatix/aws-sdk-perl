
package Paws::LexModelsV2::DeleteCustomVocabulary;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomVocabulary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DeleteCustomVocabularyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DeleteCustomVocabulary - Arguments for method DeleteCustomVocabulary on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomVocabulary on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DeleteCustomVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomVocabulary.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DeleteCustomVocabularyResponse =
      $models - v2 -lex->DeleteCustomVocabulary(
      BotId      => 'MyId',
      BotVersion => 'MyDraftBotVersion',
      LocaleId   => 'MyLocaleId',

      );

    # Results:
    my $BotId      = $DeleteCustomVocabularyResponse->BotId;
    my $BotVersion = $DeleteCustomVocabularyResponse->BotVersion;
    my $CustomVocabularyStatus =
      $DeleteCustomVocabularyResponse->CustomVocabularyStatus;
    my $LocaleId = $DeleteCustomVocabularyResponse->LocaleId;

    # Returns a L<Paws::LexModelsV2::DeleteCustomVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DeleteCustomVocabulary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot to remove the custom vocabulary from.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot to remove the custom vocabulary from.



=head2 B<REQUIRED> LocaleId => Str

The locale identifier for the locale that contains the custom
vocabulary to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomVocabulary in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

