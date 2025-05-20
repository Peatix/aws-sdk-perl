
package Paws::LexModelsV2::DescribeCustomVocabularyMetadata;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCustomVocabularyMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/metadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeCustomVocabularyMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeCustomVocabularyMetadata - Arguments for method DescribeCustomVocabularyMetadata on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCustomVocabularyMetadata on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeCustomVocabularyMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCustomVocabularyMetadata.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeCustomVocabularyMetadataResponse =
      $models - v2 -lex->DescribeCustomVocabularyMetadata(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      LocaleId   => 'MyLocaleId',

      );

    # Results:
    my $BotId      = $DescribeCustomVocabularyMetadataResponse->BotId;
    my $BotVersion = $DescribeCustomVocabularyMetadataResponse->BotVersion;
    my $CreationDateTime =
      $DescribeCustomVocabularyMetadataResponse->CreationDateTime;
    my $CustomVocabularyStatus =
      $DescribeCustomVocabularyMetadataResponse->CustomVocabularyStatus;
    my $LastUpdatedDateTime =
      $DescribeCustomVocabularyMetadataResponse->LastUpdatedDateTime;
    my $LocaleId = $DescribeCustomVocabularyMetadataResponse->LocaleId;

# Returns a L<Paws::LexModelsV2::DescribeCustomVocabularyMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeCustomVocabularyMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot that contains the custom vocabulary.



=head2 B<REQUIRED> BotVersion => Str

The bot version of the bot to return metadata for.



=head2 B<REQUIRED> LocaleId => Str

The locale to return the custom vocabulary information for. The locale
must be C<en_GB>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCustomVocabularyMetadata in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

