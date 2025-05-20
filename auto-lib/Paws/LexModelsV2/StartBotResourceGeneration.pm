
package Paws::LexModelsV2::StartBotResourceGeneration;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has GenerationInputPrompt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'generationInputPrompt', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartBotResourceGeneration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/startgeneration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::StartBotResourceGenerationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::StartBotResourceGeneration - Arguments for method StartBotResourceGeneration on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartBotResourceGeneration on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method StartBotResourceGeneration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartBotResourceGeneration.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $StartBotResourceGenerationResponse =
      $models - v2 -lex->StartBotResourceGeneration(
      BotId                 => 'MyId',
      BotVersion            => 'MyBotVersion',
      GenerationInputPrompt => 'MyGenerationInput',
      LocaleId              => 'MyLocaleId',

      );

    # Results:
    my $BotId      = $StartBotResourceGenerationResponse->BotId;
    my $BotVersion = $StartBotResourceGenerationResponse->BotVersion;
    my $CreationDateTime =
      $StartBotResourceGenerationResponse->CreationDateTime;
    my $GenerationId = $StartBotResourceGenerationResponse->GenerationId;
    my $GenerationInputPrompt =
      $StartBotResourceGenerationResponse->GenerationInputPrompt;
    my $GenerationStatus =
      $StartBotResourceGenerationResponse->GenerationStatus;
    my $LocaleId = $StartBotResourceGenerationResponse->LocaleId;

    # Returns a L<Paws::LexModelsV2::StartBotResourceGenerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/StartBotResourceGeneration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot for which to generate intents and slot
types.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot for which to generate intents and slot types.



=head2 B<REQUIRED> GenerationInputPrompt => Str

The prompt to generate intents and slot types for the bot locale. Your
description should be both I<detailed> and I<precise> to help generate
appropriate and sufficient intents for your bot. Include a list of
actions to improve the intent creation process.



=head2 B<REQUIRED> LocaleId => Str

The locale of the bot for which to generate intents and slot types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartBotResourceGeneration in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

