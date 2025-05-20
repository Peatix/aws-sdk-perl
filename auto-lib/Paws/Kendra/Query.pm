
package Paws::Kendra::Query;
  use Moose;
  has AttributeFilter => (is => 'ro', isa => 'Paws::Kendra::AttributeFilter');
  has CollapseConfiguration => (is => 'ro', isa => 'Paws::Kendra::CollapseConfiguration');
  has DocumentRelevanceOverrideConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentRelevanceConfiguration]');
  has Facets => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Facet]');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has PageNumber => (is => 'ro', isa => 'Int');
  has PageSize => (is => 'ro', isa => 'Int');
  has QueryResultTypeFilter => (is => 'ro', isa => 'Str');
  has QueryText => (is => 'ro', isa => 'Str');
  has RequestedDocumentAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SortingConfiguration => (is => 'ro', isa => 'Paws::Kendra::SortingConfiguration');
  has SortingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::SortingConfiguration]');
  has SpellCorrectionConfiguration => (is => 'ro', isa => 'Paws::Kendra::SpellCorrectionConfiguration');
  has UserContext => (is => 'ro', isa => 'Paws::Kendra::UserContext');
  has VisitorId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::QueryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Query - Arguments for method Query on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Query on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method Query.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Query.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $QueryResult = $kendra->Query(
      IndexId         => 'MyIndexId',
      AttributeFilter => {
        AndAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
        ContainsAll   => {
          Key   => 'MyDocumentAttributeKey',            # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        ContainsAny => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        EqualsTo => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThan => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        GreaterThanOrEquals => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThan => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        LessThanOrEquals => {
          Key   => 'MyDocumentAttributeKey',    # min: 1, max: 200
          Value => {
            DateValue       => '1970-01-01T01:00:00',    # OPTIONAL
            LongValue       => 1,                        # OPTIONAL
            StringListValue => [
              'MyString', ...                            # min: 1, max: 2048
            ],    # OPTIONAL
            StringValue =>
              'MyDocumentAttributeStringValue',    # min: 1, max: 2048; OPTIONAL
          },

        },    # OPTIONAL
        NotFilter    => <AttributeFilter>,
        OrAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
      },    # OPTIONAL
      CollapseConfiguration => {
        DocumentAttributeKey => 'MyDocumentAttributeKey',    # min: 1, max: 200
        Expand               => 1,                           # OPTIONAL
        ExpandConfiguration  => {
          MaxExpandedResultsPerItem => 1,                    # OPTIONAL
          MaxResultItemsToExpand    => 1,                    # OPTIONAL
        },    # OPTIONAL
        MissingAttributeKeyStrategy =>
          'IGNORE',    # values: IGNORE, COLLAPSE, EXPAND; OPTIONAL
        SortingConfigurations => [
          {
            DocumentAttributeKey => 'MyDocumentAttributeKey', # min: 1, max: 200
            SortOrder            => 'DESC',    # values: DESC, ASC

          },
          ...
        ],    # min: 1; OPTIONAL
      },    # OPTIONAL
      DocumentRelevanceOverrideConfigurations => [
        {
          Name      => 'MyDocumentMetadataConfigurationName',  # min: 1, max: 30
          Relevance => {
            Duration   => 'MyDuration',    # min: 1, max: 10; OPTIONAL
            Freshness  => 1,               # OPTIONAL
            Importance => 1,               # min: 1, max: 10; OPTIONAL
            RankOrder  => 'ASCENDING', # values: ASCENDING, DESCENDING; OPTIONAL
            ValueImportanceMap => {
              'MyValueImportanceMapKey' =>
                1,    # key: min: 1, max: 50, value: min: 1, max: 10; OPTIONAL
            },    # OPTIONAL
          },

        },
        ...
      ],    # OPTIONAL
      Facets => [
        {
          DocumentAttributeKey => 'MyDocumentAttributeKey',   # min: 1, max: 200
          Facets               => <FacetList>,
          MaxResults           => 1,    # max: 5000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      PageNumber                  => 1,                # OPTIONAL
      PageSize                    => 1,                # OPTIONAL
      QueryResultTypeFilter       => 'DOCUMENT',       # OPTIONAL
      QueryText                   => 'MyQueryText',    # OPTIONAL
      RequestedDocumentAttributes => [
        'MyDocumentAttributeKey', ...                  # min: 1, max: 200
      ],    # OPTIONAL
      SortingConfiguration => {
        DocumentAttributeKey => 'MyDocumentAttributeKey',    # min: 1, max: 200
        SortOrder            => 'DESC',                      # values: DESC, ASC

      },    # OPTIONAL
      SortingConfigurations => [
        {
          DocumentAttributeKey => 'MyDocumentAttributeKey',  # min: 1, max: 200
          SortOrder            => 'DESC',                    # values: DESC, ASC

        },
        ...
      ],    # OPTIONAL
      SpellCorrectionConfiguration => {
        IncludeQuerySpellCheckSuggestions => 1,    # OPTIONAL

      },    # OPTIONAL
      UserContext => {
        DataSourceGroups => [
          {
            DataSourceId => 'MyDataSourceId',     # min: 1, max: 100
            GroupId      => 'MyPrincipalName',    # min: 1, max: 200

          },
          ...
        ],    # min: 1, max: 2048; OPTIONAL
        Groups => [
          'MyPrincipalName', ...    # min: 1, max: 200
        ],    # min: 1, max: 2048; OPTIONAL
        Token  => 'MyToken',            # min: 1, max: 100000; OPTIONAL
        UserId => 'MyPrincipalName',    # min: 1, max: 200
      },    # OPTIONAL
      VisitorId => 'MyVisitorId',    # OPTIONAL
    );

    # Results:
    my $FacetResults          = $QueryResult->FacetResults;
    my $FeaturedResultsItems  = $QueryResult->FeaturedResultsItems;
    my $QueryId               = $QueryResult->QueryId;
    my $ResultItems           = $QueryResult->ResultItems;
    my $SpellCorrectedQueries = $QueryResult->SpellCorrectedQueries;
    my $TotalNumberOfResults  = $QueryResult->TotalNumberOfResults;
    my $Warnings              = $QueryResult->Warnings;

    # Returns a L<Paws::Kendra::QueryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/Query>

=head1 ATTRIBUTES


=head2 AttributeFilter => L<Paws::Kendra::AttributeFilter>

Filters search results by document fields/attributes. You can only
provide one attribute filter; however, the C<AndAllFilters>,
C<NotFilter>, and C<OrAllFilters> parameters contain a list of other
filters.

The C<AttributeFilter> parameter means you can create a set of
filtering rules that a document must satisfy to be included in the
query results.

For Amazon Kendra Gen AI Enterprise Edition indices use
C<AttributeFilter> to enable document filtering for end users using
C<_email_id> or include public documents (C<_email_id=null>).



=head2 CollapseConfiguration => L<Paws::Kendra::CollapseConfiguration>

Provides configuration to determine how to group results by document
attribute value, and how to display them (collapsed or expanded) under
a designated primary document for each group.



=head2 DocumentRelevanceOverrideConfigurations => ArrayRef[L<Paws::Kendra::DocumentRelevanceConfiguration>]

Overrides relevance tuning configurations of fields/attributes set at
the index level.

If you use this API to override the relevance tuning configured at the
index level, but there is no relevance tuning configured at the index
level, then Amazon Kendra does not apply any relevance tuning.

If there is relevance tuning configured for fields at the index level,
and you use this API to override only some of these fields, then for
the fields you did not override, the importance is set to 1.



=head2 Facets => ArrayRef[L<Paws::Kendra::Facet>]

An array of documents fields/attributes for faceted search. Amazon
Kendra returns a count for each field key specified. This helps your
users narrow their search.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for the search.



=head2 PageNumber => Int

Query results are returned in pages the size of the C<PageSize>
parameter. By default, Amazon Kendra returns the first page of results.
Use this parameter to get result pages after the first one.



=head2 PageSize => Int

Sets the number of results that are returned in each page of results.
The default page size is 10. The maximum number of results returned is
100. If you ask for more than 100 results, only 100 are returned.



=head2 QueryResultTypeFilter => Str

Sets the type of query result or response. Only results for the
specified type are returned.

Valid values are: C<"DOCUMENT">, C<"QUESTION_ANSWER">, C<"ANSWER">

=head2 QueryText => Str

The input query text for the search. Amazon Kendra truncates queries at
30 token words, which excludes punctuation and stop words. Truncation
still applies if you use Boolean or more advanced, complex queries. For
example, C<Timeoff AND October AND Category:HR> is counted as 3 tokens:
C<timeoff>, C<october>, C<hr>. For more information, see Searching with
advanced query syntax
(https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax)
in the Amazon Kendra Developer Guide.



=head2 RequestedDocumentAttributes => ArrayRef[Str|Undef]

An array of document fields/attributes to include in the response. You
can limit the response to include certain document fields. By default,
all document attributes are included in the response.



=head2 SortingConfiguration => L<Paws::Kendra::SortingConfiguration>

Provides information that determines how the results of the query are
sorted. You can set the field that Amazon Kendra should sort the
results on, and specify whether the results should be sorted in
ascending or descending order. In the case of ties in sorting the
results, the results are sorted by relevance.

If you don't provide sorting configuration, the results are sorted by
the relevance that Amazon Kendra determines for the result.



=head2 SortingConfigurations => ArrayRef[L<Paws::Kendra::SortingConfiguration>]

Provides configuration information to determine how the results of a
query are sorted.

You can set upto 3 fields that Amazon Kendra should sort the results
on, and specify whether the results should be sorted in ascending or
descending order. The sort field quota can be increased.

If you don't provide a sorting configuration, the results are sorted by
the relevance that Amazon Kendra determines for the result. In the case
of ties in sorting the results, the results are sorted by relevance.



=head2 SpellCorrectionConfiguration => L<Paws::Kendra::SpellCorrectionConfiguration>

Enables suggested spell corrections for queries.



=head2 UserContext => L<Paws::Kendra::UserContext>

The user context token or user and group information.



=head2 VisitorId => Str

Provides an identifier for a specific user. The C<VisitorId> should be
a unique identifier, such as a GUID. Don't use personally identifiable
information, such as the user's email address, as the C<VisitorId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Query in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

