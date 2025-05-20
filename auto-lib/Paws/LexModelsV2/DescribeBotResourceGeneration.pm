
package Paws::LexModelsV2::DescribeBotResourceGeneration;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has GenerationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'generationId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBotResourceGeneration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations/{generationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeBotResourceGenerationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotResourceGeneration - Arguments for method DescribeBotResourceGeneration on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBotResourceGeneration on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeBotResourceGeneration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBotResourceGeneration.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeBotResourceGenerationResponse =
      $models - v2 -lex->DescribeBotResourceGeneration(
      BotId        => 'MyId',
      BotVersion   => 'MyBotVersion',
      GenerationId => 'MyId',
      LocaleId     => 'MyLocaleId',

      );

    # Results:
    my $BotId      = $DescribeBotResourceGenerationResponse->BotId;
    my $BotVersion = $DescribeBotResourceGenerationResponse->BotVersion;
    my $CreationDateTime =
      $DescribeBotResourceGenerationResponse->CreationDateTime;
    my $FailureReasons = $DescribeBotResourceGenerationResponse->FailureReasons;
    my $GeneratedBotLocaleUrl =
      $DescribeBotResourceGenerationResponse->GeneratedBotLocaleUrl;
    my $GenerationId = $DescribeBotResourceGenerationResponse->GenerationId;
    my $GenerationInputPrompt =
      $DescribeBotResourceGenerationResponse->GenerationInputPrompt;
    my $GenerationStatus =
      $DescribeBotResourceGenerationResponse->GenerationStatus;
    my $LastUpdatedDateTime =
      $DescribeBotResourceGenerationResponse->LastUpdatedDateTime;
    my $LocaleId = $DescribeBotResourceGenerationResponse->LocaleId;
    my $ModelArn = $DescribeBotResourceGenerationResponse->ModelArn;

 # Returns a L<Paws::LexModelsV2::DescribeBotResourceGenerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeBotResourceGeneration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot for which to return the generation
details.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot for which to return the generation details.



=head2 B<REQUIRED> GenerationId => Str

The unique identifier of the generation request for which to return the
generation details.



=head2 B<REQUIRED> LocaleId => Str

The locale of the bot for which to return the generation details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBotResourceGeneration in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

