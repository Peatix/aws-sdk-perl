
package Paws::LexModelsV2::ListExports;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botId');
  has BotVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'botVersion');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::ExportFilter]', traits => ['NameInRequest'], request_name => 'filters');
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'localeId');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Paws::LexModelsV2::ExportSortBy', traits => ['NameInRequest'], request_name => 'sortBy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExports');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exports/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::ListExportsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListExports - Arguments for method ListExports on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExports on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method ListExports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExports.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $ListExportsResponse = $models - v2 -lex->ListExports(
      BotId      => 'MyId',            # OPTIONAL
      BotVersion => 'MyBotVersion',    # OPTIONAL
      Filters    => [
        {
          Name     => 'ExportResourceType',    # values: ExportResourceType
          Operator => 'CO',                    # values: CO, EQ
          Values   => [
            'MyFilterValue', ...               # min: 1, max: 100
          ],    # min: 1, max: 1

        },
        ...
      ],    # OPTIONAL
      LocaleId   => 'MyLocaleId',     # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => {
        Attribute => 'LastUpdatedDateTime',    # values: LastUpdatedDateTime
        Order     => 'Ascending',              # values: Ascending, Descending

      },    # OPTIONAL
    );

    # Results:
    my $BotId           = $ListExportsResponse->BotId;
    my $BotVersion      = $ListExportsResponse->BotVersion;
    my $ExportSummaries = $ListExportsResponse->ExportSummaries;
    my $LocaleId        = $ListExportsResponse->LocaleId;
    my $NextToken       = $ListExportsResponse->NextToken;

    # Returns a L<Paws::LexModelsV2::ListExportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/ListExports>

=head1 ATTRIBUTES


=head2 BotId => Str

The unique identifier that Amazon Lex assigned to the bot.



=head2 BotVersion => Str

The version of the bot to list exports for.



=head2 Filters => ArrayRef[L<Paws::LexModelsV2::ExportFilter>]

Provides the specification of a filter used to limit the exports in the
response to only those that match the filter specification. You can
only specify one filter and one string to filter on.



=head2 LocaleId => Str

Specifies the resources that should be exported. If you don't specify a
resource type in the C<filters> parameter, both bot locales and custom
vocabularies are exported.



=head2 MaxResults => Int

The maximum number of exports to return in each page of results. If
there are fewer results than the max page size, only the actual number
of results are returned.



=head2 NextToken => Str

If the response from the C<ListExports> operation contains more results
that specified in the C<maxResults> parameter, a token is returned in
the response.

Use the returned token in the C<nextToken> parameter of a
C<ListExports> request to return the next page of results. For a
complete set of results, call the C<ListExports> operation until the
C<nextToken> returned in the response is null.



=head2 SortBy => L<Paws::LexModelsV2::ExportSortBy>

Determines the field that the list of exports is sorted by. You can
sort by the C<LastUpdatedDateTime> field in ascending or descending
order.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExports in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

