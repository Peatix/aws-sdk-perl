
package Paws::Kendra::GetQuerySuggestions;
  use Moose;
  has AttributeSuggestionsConfig => (is => 'ro', isa => 'Paws::Kendra::AttributeSuggestionsGetConfig');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has MaxSuggestionsCount => (is => 'ro', isa => 'Int');
  has QueryText => (is => 'ro', isa => 'Str', required => 1);
  has SuggestionTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQuerySuggestions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::GetQuerySuggestionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::GetQuerySuggestions - Arguments for method GetQuerySuggestions on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQuerySuggestions on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method GetQuerySuggestions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQuerySuggestions.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $GetQuerySuggestionsResponse = $kendra->GetQuerySuggestions(
      IndexId                    => 'MyIndexId',
      QueryText                  => 'MySuggestionQueryText',
      AttributeSuggestionsConfig => {
        AdditionalResponseAttributes => [
          'MyDocumentAttributeKey', ...    # min: 1, max: 200
        ],    # min: 1, max: 100; OPTIONAL
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
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
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
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
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
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
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
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
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
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
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
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
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
                'MyDocumentAttributeStringValue',  # min: 1, max: 2048; OPTIONAL
            },

          },    # OPTIONAL
          NotFilter    => <AttributeFilter>,
          OrAllFilters => [ <AttributeFilter>, ... ],    # OPTIONAL
        },    # OPTIONAL
        SuggestionAttributes => [
          'MyDocumentAttributeKey', ...    # min: 1, max: 200
        ],    # min: 1, max: 100; OPTIONAL
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
      },    # OPTIONAL
      MaxSuggestionsCount => 1,    # OPTIONAL
      SuggestionTypes     => [
        'QUERY', ...               # values: QUERY, DOCUMENT_ATTRIBUTES
      ],    # OPTIONAL
    );

    # Results:
    my $QuerySuggestionsId = $GetQuerySuggestionsResponse->QuerySuggestionsId;
    my $Suggestions        = $GetQuerySuggestionsResponse->Suggestions;

    # Returns a L<Paws::Kendra::GetQuerySuggestionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/GetQuerySuggestions>

=head1 ATTRIBUTES


=head2 AttributeSuggestionsConfig => L<Paws::Kendra::AttributeSuggestionsGetConfig>

Configuration information for the document fields/attributes that you
want to base query suggestions on.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index you want to get query suggestions from.



=head2 MaxSuggestionsCount => Int

The maximum number of query suggestions you want to show to your users.



=head2 B<REQUIRED> QueryText => Str

The text of a user's query to generate query suggestions.

A query is suggested if the query prefix matches what a user starts to
type as their query.

Amazon Kendra does not show any suggestions if a user types fewer than
two characters or more than 60 characters. A query must also have at
least one search result and contain at least one word of more than four
characters.



=head2 SuggestionTypes => ArrayRef[Str|Undef]

The suggestions type to base query suggestions on. The suggestion types
are query history or document fields/attributes. You can set one type
or the other.

If you set query history as your suggestions type, Amazon Kendra
suggests queries relevant to your users based on popular queries in the
query history.

If you set document fields/attributes as your suggestions type, Amazon
Kendra suggests queries relevant to your users based on the contents of
document fields.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQuerySuggestions in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

