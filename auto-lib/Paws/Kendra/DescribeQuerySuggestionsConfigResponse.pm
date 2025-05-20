
package Paws::Kendra::DescribeQuerySuggestionsConfigResponse;
  use Moose;
  has AttributeSuggestionsConfig => (is => 'ro', isa => 'Paws::Kendra::AttributeSuggestionsDescribeConfig');
  has IncludeQueriesWithoutUserInformation => (is => 'ro', isa => 'Bool');
  has LastClearTime => (is => 'ro', isa => 'Str');
  has LastSuggestionsBuildTime => (is => 'ro', isa => 'Str');
  has MinimumNumberOfQueryingUsers => (is => 'ro', isa => 'Int');
  has MinimumQueryCount => (is => 'ro', isa => 'Int');
  has Mode => (is => 'ro', isa => 'Str');
  has QueryLogLookBackWindowInDays => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has TotalSuggestionsCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeQuerySuggestionsConfigResponse

=head1 ATTRIBUTES


=head2 AttributeSuggestionsConfig => L<Paws::Kendra::AttributeSuggestionsDescribeConfig>

Configuration information for the document fields/attributes that you
want to base query suggestions on.


=head2 IncludeQueriesWithoutUserInformation => Bool

C<TRUE> to use all queries, otherwise use only queries that include
user information to generate the query suggestions.


=head2 LastClearTime => Str

The Unix timestamp when query suggestions for an index was last
cleared.

After you clear suggestions, Amazon Kendra learns new suggestions based
on new queries added to the query log from the time you cleared
suggestions. Amazon Kendra only considers re-occurences of a query from
the time you cleared suggestions.


=head2 LastSuggestionsBuildTime => Str

The Unix timestamp when query suggestions for an index was last
updated.

Amazon Kendra automatically updates suggestions every 24 hours, after
you change a setting or after you apply a block list
(https://docs.aws.amazon.com/kendra/latest/dg/query-suggestions.html#query-suggestions-blocklist).


=head2 MinimumNumberOfQueryingUsers => Int

The minimum number of unique users who must search a query in order for
the query to be eligible to suggest to your users.


=head2 MinimumQueryCount => Int

The minimum number of times a query must be searched in order for the
query to be eligible to suggest to your users.


=head2 Mode => Str

Whether query suggestions are currently in C<ENABLED> mode or
C<LEARN_ONLY> mode.

By default, Amazon Kendra enables query suggestions.C<LEARN_ONLY> turns
off query suggestions for your users. You can change the mode using the
UpdateQuerySuggestionsConfig
(https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateQuerySuggestionsConfig.html)
API.

Valid values are: C<"ENABLED">, C<"LEARN_ONLY">
=head2 QueryLogLookBackWindowInDays => Int

How recent your queries are in your query log time window (in days).


=head2 Status => Str

Whether the status of query suggestions settings is currently C<ACTIVE>
or C<UPDATING>.

Active means the current settings apply and Updating means your changed
settings are in the process of applying.

Valid values are: C<"ACTIVE">, C<"UPDATING">
=head2 TotalSuggestionsCount => Int

The current total count of query suggestions for an index.

This count can change when you update your query suggestions settings,
if you filter out certain queries from suggestions using a block list,
and as the query log accumulates more queries for Amazon Kendra to
learn from.

If the count is much lower than you expected, it could be because
Amazon Kendra needs more queries in the query history to learn from or
your current query suggestions settings are too strict.


=head2 _request_id => Str


=cut

1;