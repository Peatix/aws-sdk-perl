
package Paws::LexModelsV2::ListIntentPaths;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has EndDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endDateTime', required => 1);
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::AnalyticsPathFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has IntentPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'intentPath', required => 1);
  has StartDateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startDateTime', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIntentPaths');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/analytics/intentpaths');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListIntentPathsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListIntentPaths - Arguments for method ListIntentPaths on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIntentPaths on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListIntentPaths.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIntentPaths.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListIntentPathsResponse = $models - v2 -lex->ListIntentPaths(
      BotId         => 'MyId',
      EndDateTime   => '1970-01-01T01:00:00',
      IntentPath    => 'MyAnalyticsPath',
      StartDateTime => '1970-01-01T01:00:00',
      Filters       => [
        {
          Name => 'BotAliasId'
          ,    # values: BotAliasId, BotVersion, LocaleId, Modality, Channel
          Operator => 'EQ',                                 # values: EQ, GT, LT
          Values   => [ 'MyAnalyticsFilterValue', ... ],    # min: 1, max: 5

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NodeSummaries = $ListIntentPathsResponse->NodeSummaries;

    # Returns a L<Paws::LexModelsV2::ListIntentPathsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListIntentPaths>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The identifier for the bot for which you want to retrieve intent path
metrics.



=head2 B<REQUIRED> EndDateTime => Str

The date and time that marks the end of the range of time for which you
want to see intent path metrics.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::AnalyticsPathFilter>]

A list of objects, each describes a condition by which you want to
filter the results.



=head2 B<REQUIRED> IntentPath => Str

The intent path for which you want to retrieve metrics. Use a forward
slash to separate intents in the path. For example:

=over

=item *

/BookCar

=item *

/BookCar/BookHotel

=item *

/BookHotel/BookCar

=back




=head2 B<REQUIRED> StartDateTime => Str

The date and time that marks the beginning of the range of time for
which you want to see intent path metrics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIntentPaths in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

