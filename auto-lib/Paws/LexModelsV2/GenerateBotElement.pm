
package Paws::LexModelsV2::GenerateBotElement;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);
  has IntentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateBotElement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::GenerateBotElementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::GenerateBotElement - Arguments for method GenerateBotElement on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateBotElement on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method GenerateBotElement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateBotElement.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $GenerateBotElementResponse = $models - v2 -lex->GenerateBotElement(
      BotId      => 'MyId',
      BotVersion => 'MyBotVersion',
      IntentId   => 'MyId',
      LocaleId   => 'MyLocaleId',

    );

    # Results:
    my $BotId            = $GenerateBotElementResponse->BotId;
    my $BotVersion       = $GenerateBotElementResponse->BotVersion;
    my $IntentId         = $GenerateBotElementResponse->IntentId;
    my $LocaleId         = $GenerateBotElementResponse->LocaleId;
    my $SampleUtterances = $GenerateBotElementResponse->SampleUtterances;

    # Returns a L<Paws::LexModelsV2::GenerateBotElementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/GenerateBotElement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The bot unique Id for the bot request to generate utterances.



=head2 B<REQUIRED> BotVersion => Str

The bot version for the bot request to generate utterances.



=head2 B<REQUIRED> IntentId => Str

The intent unique Id for the bot request to generate utterances.



=head2 B<REQUIRED> LocaleId => Str

The unique locale Id for the bot request to generate utterances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateBotElement in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

