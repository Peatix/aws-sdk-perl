
package Paws::Kendra::Retrieve;
  use Moose;
  has AttributeFilter => (is => 'ro', isa => 'Paws::Kendra::AttributeFilter');
  has DocumentRelevanceOverrideConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::DocumentRelevanceConfiguration]');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has PageNumber => (is => 'ro', isa => 'Int');
  has PageSize => (is => 'ro', isa => 'Int');
  has QueryText => (is => 'ro', isa => 'Str', required => 1);
  has RequestedDocumentAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserContext => (is => 'ro', isa => 'Paws::Kendra::UserContext');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Retrieve');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::RetrieveResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Retrieve - Arguments for method Retrieve on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Retrieve on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method Retrieve.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Retrieve.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $RetrieveResult = $kendra->Retrieve(
      IndexId         => 'MyIndexId',
      QueryText       => 'MyQueryText',
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
      PageNumber                  => 1,    # OPTIONAL
      PageSize                    => 1,    # OPTIONAL
      RequestedDocumentAttributes => [
        'MyDocumentAttributeKey', ...      # min: 1, max: 200
      ],    # OPTIONAL
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
    );

    # Results:
    my $QueryId     = $RetrieveResult->QueryId;
    my $ResultItems = $RetrieveResult->ResultItems;

    # Returns a L<Paws::Kendra::RetrieveResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/Retrieve>

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



=head2 DocumentRelevanceOverrideConfigurations => ArrayRef[L<Paws::Kendra::DocumentRelevanceConfiguration>]

Overrides relevance tuning configurations of fields/attributes set at
the index level.

If you use this API to override the relevance tuning configured at the
index level, but there is no relevance tuning configured at the index
level, then Amazon Kendra does not apply any relevance tuning.

If there is relevance tuning configured for fields at the index level,
and you use this API to override only some of these fields, then for
the fields you did not override, the importance is set to 1.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index to retrieve relevant passages for the
search.



=head2 PageNumber => Int

Retrieved relevant passages are returned in pages the size of the
C<PageSize> parameter. By default, Amazon Kendra returns the first page
of results. Use this parameter to get result pages after the first one.



=head2 PageSize => Int

Sets the number of retrieved relevant passages that are returned in
each page of results. The default page size is 10. The maximum number
of results returned is 100. If you ask for more than 100 results, only
100 are returned.



=head2 B<REQUIRED> QueryText => Str

The input query text to retrieve relevant passages for the search.
Amazon Kendra truncates queries at 30 token words, which excludes
punctuation and stop words. Truncation still applies if you use Boolean
or more advanced, complex queries. For example, C<Timeoff AND October
AND Category:HR> is counted as 3 tokens: C<timeoff>, C<october>, C<hr>.
For more information, see Searching with advanced query syntax
(https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax)
in the Amazon Kendra Developer Guide.



=head2 RequestedDocumentAttributes => ArrayRef[Str|Undef]

A list of document fields/attributes to include in the response. You
can limit the response to include certain document fields. By default,
all document fields are included in the response.



=head2 UserContext => L<Paws::Kendra::UserContext>

The user context token or user and group information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Retrieve in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

