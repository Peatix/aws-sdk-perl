
package Paws::LexModelsV2::DescribeBotVersion;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBotVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botversions/{botVersion}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeBotVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBotVersion - Arguments for method DescribeBotVersion on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBotVersion on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeBotVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBotVersion.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeBotVersionResponse = $models - v2 -lex->DescribeBotVersion(
      BotId      => 'MyId',
      BotVersion => 'MyNumericalBotVersion',

    );

    # Results:
    my $BotId            = $DescribeBotVersionResponse->BotId;
    my $BotMembers       = $DescribeBotVersionResponse->BotMembers;
    my $BotName          = $DescribeBotVersionResponse->BotName;
    my $BotStatus        = $DescribeBotVersionResponse->BotStatus;
    my $BotType          = $DescribeBotVersionResponse->BotType;
    my $BotVersion       = $DescribeBotVersionResponse->BotVersion;
    my $CreationDateTime = $DescribeBotVersionResponse->CreationDateTime;
    my $DataPrivacy      = $DescribeBotVersionResponse->DataPrivacy;
    my $Description      = $DescribeBotVersionResponse->Description;
    my $FailureReasons   = $DescribeBotVersionResponse->FailureReasons;
    my $IdleSessionTTLInSeconds =
      $DescribeBotVersionResponse->IdleSessionTTLInSeconds;
    my $ParentBotNetworks = $DescribeBotVersionResponse->ParentBotNetworks;
    my $RoleArn           = $DescribeBotVersionResponse->RoleArn;

    # Returns a L<Paws::LexModelsV2::DescribeBotVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeBotVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier of the bot containing the version to return metadata
for.



=head2 B<REQUIRED> BotVersion => Str

The version of the bot to return metadata for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBotVersion in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

