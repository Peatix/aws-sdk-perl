
package Paws::TimestreamQuery::Query;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has MaxRows => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryInsights => (is => 'ro', isa => 'Paws::TimestreamQuery::QueryInsights');
  has QueryString => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::QueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::Query - Arguments for method Query on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Query on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method Query.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Query.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $QueryResponse = $query . timestream->Query(
      QueryString   => 'MyQueryString',
      ClientToken   => 'MyClientRequestToken',    # OPTIONAL
      MaxRows       => 1,                         # OPTIONAL
      NextToken     => 'MyPaginationToken',       # OPTIONAL
      QueryInsights => {
        Mode => 'ENABLED_WITH_RATE_CONTROL'
        ,    # values: ENABLED_WITH_RATE_CONTROL, DISABLED

      },    # OPTIONAL
    );

    # Results:
    my $ColumnInfo            = $QueryResponse->ColumnInfo;
    my $NextToken             = $QueryResponse->NextToken;
    my $QueryId               = $QueryResponse->QueryId;
    my $QueryInsightsResponse = $QueryResponse->QueryInsightsResponse;
    my $QueryStatus           = $QueryResponse->QueryStatus;
    my $Rows                  = $QueryResponse->Rows;

    # Returns a L<Paws::TimestreamQuery::QueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/Query>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive string of up to 64 ASCII characters specified
when a C<Query> request is made. Providing a C<ClientToken> makes the
call to C<Query> I<idempotent>. This means that running the same query
repeatedly will produce the same result. In other words, making
multiple identical C<Query> requests has the same effect as making a
single request. When using C<ClientToken> in a query, note the
following:

=over

=item *

If the Query API is instantiated without a C<ClientToken>, the Query
SDK generates a C<ClientToken> on your behalf.

=item *

If the C<Query> invocation only contains the C<ClientToken> but does
not include a C<NextToken>, that invocation of C<Query> is assumed to
be a new query run.

=item *

If the invocation contains C<NextToken>, that particular invocation is
assumed to be a subsequent invocation of a prior call to the Query API,
and a result set is returned.

=item *

After 4 hours, any request with the same C<ClientToken> is treated as a
new request.

=back




=head2 MaxRows => Int

The total number of rows to be returned in the C<Query> output. The
initial run of C<Query> with a C<MaxRows> value specified will return
the result set of the query in two cases:

=over

=item *

The size of the result is less than C<1MB>.

=item *

The number of rows in the result set is less than the value of
C<maxRows>.

=back

Otherwise, the initial invocation of C<Query> only returns a
C<NextToken>, which can then be used in subsequent calls to fetch the
result set. To resume pagination, provide the C<NextToken> value in the
subsequent command.

If the row size is large (e.g. a row has many columns), Timestream may
return fewer rows to keep the response size from exceeding the 1 MB
limit. If C<MaxRows> is not provided, Timestream will send the
necessary number of rows to meet the 1 MB limit.



=head2 NextToken => Str

A pagination token used to return a set of results. When the C<Query>
API is invoked using C<NextToken>, that particular invocation is
assumed to be a subsequent invocation of a prior call to C<Query>, and
a result set is returned. However, if the C<Query> invocation only
contains the C<ClientToken>, that invocation of C<Query> is assumed to
be a new query run.

Note the following when using NextToken in a query:

=over

=item *

A pagination token can be used for up to five C<Query> invocations, OR
for a duration of up to 1 hour E<ndash> whichever comes first.

=item *

Using the same C<NextToken> will return the same set of records. To
keep paginating through the result set, you must to use the most recent
C<nextToken>.

=item *

Suppose a C<Query> invocation returns two C<NextToken> values,
C<TokenA> and C<TokenB>. If C<TokenB> is used in a subsequent C<Query>
invocation, then C<TokenA> is invalidated and cannot be reused.

=item *

To request a previous result set from a query after pagination has
begun, you must re-invoke the Query API.

=item *

The latest C<NextToken> should be used to paginate until C<null> is
returned, at which point a new C<NextToken> should be used.

=item *

If the IAM principal of the query initiator and the result reader are
not the same and/or the query initiator and the result reader do not
have the same query string in the query requests, the query will fail
with an C<Invalid pagination token> error.

=back




=head2 QueryInsights => L<Paws::TimestreamQuery::QueryInsights>

Encapsulates settings for enabling C<QueryInsights>.

Enabling C<QueryInsights> returns insights and metrics in addition to
query results for the query that you executed. You can use
C<QueryInsights> to tune your query performance.



=head2 B<REQUIRED> QueryString => Str

The query to be run by Timestream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Query in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

