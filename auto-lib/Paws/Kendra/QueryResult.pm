
package Paws::Kendra::QueryResult;
  use Moose;
  has FacetResults => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FacetResult]');
  has FeaturedResultsItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FeaturedResultsItem]');
  has QueryId => (is => 'ro', isa => 'Str');
  has ResultItems => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::QueryResultItem]');
  has SpellCorrectedQueries => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::SpellCorrectedQuery]');
  has TotalNumberOfResults => (is => 'ro', isa => 'Int');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Warning]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::QueryResult

=head1 ATTRIBUTES


=head2 FacetResults => ArrayRef[L<Paws::Kendra::FacetResult>]

Contains the facet results. A C<FacetResult> contains the counts for
each field/attribute key that was specified in the C<Facets> input
parameter.


=head2 FeaturedResultsItems => ArrayRef[L<Paws::Kendra::FeaturedResultsItem>]

The list of featured result items. Featured results are displayed at
the top of the search results page, placed above all other results for
certain queries. If there's an exact match of a query, then certain
documents are featured in the search results.


=head2 QueryId => Str

The identifier for the search. You also use C<QueryId> to identify the
search when using the SubmitFeedback
(https://docs.aws.amazon.com/kendra/latest/APIReference/API_SubmitFeedback.html)
API.


=head2 ResultItems => ArrayRef[L<Paws::Kendra::QueryResultItem>]

The results of the search.


=head2 SpellCorrectedQueries => ArrayRef[L<Paws::Kendra::SpellCorrectedQuery>]

A list of information related to suggested spell corrections for a
query.


=head2 TotalNumberOfResults => Int

The total number of items found by the search. However, you can only
retrieve up to 100 items. For example, if the search found 192 items,
you can only retrieve the first 100 of the items.


=head2 Warnings => ArrayRef[L<Paws::Kendra::Warning>]

A list of warning codes and their messages on problems with your query.

Amazon Kendra currently only supports one type of warning, which is a
warning on invalid syntax used in the query. For examples of invalid
query syntax, see Searching with advanced query syntax
(https://docs.aws.amazon.com/kendra/latest/dg/searching-example.html#searching-index-query-syntax).


=head2 _request_id => Str


=cut

1;