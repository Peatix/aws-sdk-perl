package Paws::TimestreamQuery;
  use Moose;
  sub service { 'query.timestream' }
  sub signing_name { 'timestream' }
  sub version { '2018-11-01' }
  sub target_prefix { 'Timestream_20181101' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CancelQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::CancelQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateScheduledQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::CreateScheduledQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteScheduledQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::DeleteScheduledQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::DescribeAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::DescribeEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::DescribeScheduledQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteScheduledQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::ExecuteScheduledQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListScheduledQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::ListScheduledQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PrepareQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::PrepareQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Query {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::Query', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateScheduledQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::TimestreamQuery::UpdateScheduledQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllScheduledQueries {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListScheduledQueries(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListScheduledQueries(@_, NextToken => $next_result->NextToken);
        push @{ $result->ScheduledQueries }, @{ $next_result->ScheduledQueries };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ScheduledQueries') foreach (@{ $result->ScheduledQueries });
        $result = $self->ListScheduledQueries(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ScheduledQueries') foreach (@{ $result->ScheduledQueries });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTagsForResource(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->ListTagsForResource(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub QueryAll {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->Query(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->Query(@_, NextToken => $next_result->NextToken);
        push @{ $result->Rows }, @{ $next_result->Rows };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Rows') foreach (@{ $result->Rows });
        $result = $self->Query(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Rows') foreach (@{ $result->Rows });
    }

    return undef
  }


  sub operations { qw/CancelQuery CreateScheduledQuery DeleteScheduledQuery DescribeAccountSettings DescribeEndpoints DescribeScheduledQuery ExecuteScheduledQuery ListScheduledQueries ListTagsForResource PrepareQuery Query TagResource UntagResource UpdateAccountSettings UpdateScheduledQuery / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery - Perl Interface to AWS Amazon Timestream Query

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('TimestreamQuery');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Timestream Query

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream-2018-11-01>


=head1 METHODS

=head2 CancelQuery

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::CancelQuery>

Returns: a L<Paws::TimestreamQuery::CancelQueryResponse> instance

Cancels a query that has been issued. Cancellation is provided only if
the query has not completed running before the cancellation request was
issued. Because cancellation is an idempotent operation, subsequent
cancellation requests will return a C<CancellationMessage>, indicating
that the query has already been canceled. See code sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.cancel-query.html)
for details.


=head2 CreateScheduledQuery

=over

=item ErrorReportConfiguration => L<Paws::TimestreamQuery::ErrorReportConfiguration>

=item Name => Str

=item NotificationConfiguration => L<Paws::TimestreamQuery::NotificationConfiguration>

=item QueryString => Str

=item ScheduleConfiguration => L<Paws::TimestreamQuery::ScheduleConfiguration>

=item ScheduledQueryExecutionRoleArn => Str

=item [ClientToken => Str]

=item [KmsKeyId => Str]

=item [Tags => ArrayRef[L<Paws::TimestreamQuery::Tag>]]

=item [TargetConfiguration => L<Paws::TimestreamQuery::TargetConfiguration>]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::CreateScheduledQuery>

Returns: a L<Paws::TimestreamQuery::CreateScheduledQueryResponse> instance

Create a scheduled query that will be run on your behalf at the
configured schedule. Timestream assumes the execution role provided as
part of the C<ScheduledQueryExecutionRoleArn> parameter to run the
query. You can use the C<NotificationConfiguration> parameter to
configure notification for your scheduled query operations.


=head2 DeleteScheduledQuery

=over

=item ScheduledQueryArn => Str


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::DeleteScheduledQuery>

Returns: nothing

Deletes a given scheduled query. This is an irreversible operation.


=head2 DescribeAccountSettings






Each argument is described in detail in: L<Paws::TimestreamQuery::DescribeAccountSettings>

Returns: a L<Paws::TimestreamQuery::DescribeAccountSettingsResponse> instance

Describes the settings for your account that include the query pricing
model and the configured maximum TCUs the service can use for your
query workload.

You're charged only for the duration of compute units used for your
workloads.


=head2 DescribeEndpoints






Each argument is described in detail in: L<Paws::TimestreamQuery::DescribeEndpoints>

Returns: a L<Paws::TimestreamQuery::DescribeEndpointsResponse> instance

DescribeEndpoints returns a list of available endpoints to make
Timestream API calls against. This API is available through both Write
and Query.

Because the Timestream SDKs are designed to transparently work with the
serviceE<rsquo>s architecture, including the management and mapping of
the service endpoints, I<it is not recommended that you use this API
unless>:

=over

=item *

You are using VPC endpoints (Amazon Web Services PrivateLink) with
Timestream
(https://docs.aws.amazon.com/timestream/latest/developerguide/VPCEndpoints)

=item *

Your application uses a programming language that does not yet have SDK
support

=item *

You require better control over the client-side implementation

=back

For detailed information on how and when to use and implement
DescribeEndpoints, see The Endpoint Discovery Pattern
(https://docs.aws.amazon.com/timestream/latest/developerguide/Using.API.html#Using-API.endpoint-discovery).


=head2 DescribeScheduledQuery

=over

=item ScheduledQueryArn => Str


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::DescribeScheduledQuery>

Returns: a L<Paws::TimestreamQuery::DescribeScheduledQueryResponse> instance

Provides detailed information about a scheduled query.


=head2 ExecuteScheduledQuery

=over

=item InvocationTime => Str

=item ScheduledQueryArn => Str

=item [ClientToken => Str]

=item [QueryInsights => L<Paws::TimestreamQuery::ScheduledQueryInsights>]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::ExecuteScheduledQuery>

Returns: nothing

You can use this API to run a scheduled query manually.

If you enabled C<QueryInsights>, this API also returns insights and
metrics related to the query that you executed as part of an Amazon SNS
notification. C<QueryInsights> helps with performance tuning of your
query. For more information about C<QueryInsights>, see Using query
insights to optimize queries in Amazon Timestream
(https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html).


=head2 ListScheduledQueries

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::ListScheduledQueries>

Returns: a L<Paws::TimestreamQuery::ListScheduledQueriesResponse> instance

Gets a list of all scheduled queries in the caller's Amazon account and
Region. C<ListScheduledQueries> is eventually consistent.


=head2 ListTagsForResource

=over

=item ResourceARN => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::ListTagsForResource>

Returns: a L<Paws::TimestreamQuery::ListTagsForResourceResponse> instance

List all tags on a Timestream query resource.


=head2 PrepareQuery

=over

=item QueryString => Str

=item [ValidateOnly => Bool]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::PrepareQuery>

Returns: a L<Paws::TimestreamQuery::PrepareQueryResponse> instance

A synchronous operation that allows you to submit a query with
parameters to be stored by Timestream for later running. Timestream
only supports using this operation with C<ValidateOnly> set to C<true>.


=head2 Query

=over

=item QueryString => Str

=item [ClientToken => Str]

=item [MaxRows => Int]

=item [NextToken => Str]

=item [QueryInsights => L<Paws::TimestreamQuery::QueryInsights>]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::Query>

Returns: a L<Paws::TimestreamQuery::QueryResponse> instance

C<Query> is a synchronous operation that enables you to run a query
against your Amazon Timestream data.

If you enabled C<QueryInsights>, this API also returns insights and
metrics related to the query that you executed. C<QueryInsights> helps
with performance tuning of your query. For more information about
C<QueryInsights>, see Using query insights to optimize queries in
Amazon Timestream
(https://docs.aws.amazon.com/timestream/latest/developerguide/using-query-insights.html).

The maximum number of C<Query> API requests you're allowed to make with
C<QueryInsights> enabled is 1 query per second (QPS). If you exceed
this query rate, it might result in throttling.

C<Query> will time out after 60 seconds. You must update the default
timeout in the SDK to support a timeout of 60 seconds. See the code
sample
(https://docs.aws.amazon.com/timestream/latest/developerguide/code-samples.run-query.html)
for details.

Your query request will fail in the following cases:

=over

=item *

If you submit a C<Query> request with the same client token outside of
the 5-minute idempotency window.

=item *

If you submit a C<Query> request with the same client token, but change
other parameters, within the 5-minute idempotency window.

=item *

If the size of the row (including the query metadata) exceeds 1 MB,
then the query will fail with the following error message:

C<Query aborted as max page response size has been exceeded by the
output result row>

=item *

If the IAM principal of the query initiator and the result reader are
not the same and/or the query initiator and the result reader do not
have the same query string in the query requests, the query will fail
with an C<Invalid pagination token> error.

=back



=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::TimestreamQuery::Tag>]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::TagResource>

Returns: a L<Paws::TimestreamQuery::TagResourceResponse> instance

Associate a set of tags with a Timestream resource. You can then
activate these user-defined tags so that they appear on the Billing and
Cost Management console for cost allocation tracking.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::UntagResource>

Returns: a L<Paws::TimestreamQuery::UntagResourceResponse> instance

Removes the association of tags from a Timestream query resource.


=head2 UpdateAccountSettings

=over

=item [MaxQueryTCU => Int]

=item [QueryCompute => L<Paws::TimestreamQuery::QueryComputeRequest>]

=item [QueryPricingModel => Str]


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::UpdateAccountSettings>

Returns: a L<Paws::TimestreamQuery::UpdateAccountSettingsResponse> instance

Transitions your account to use TCUs for query pricing and modifies the
maximum query compute units that you've configured. If you reduce the
value of C<MaxQueryTCU> to a desired configuration, the new value can
take up to 24 hours to be effective.

After you've transitioned your account to use TCUs for query pricing,
you can't transition to using bytes scanned for query pricing.


=head2 UpdateScheduledQuery

=over

=item ScheduledQueryArn => Str

=item State => Str


=back

Each argument is described in detail in: L<Paws::TimestreamQuery::UpdateScheduledQuery>

Returns: nothing

Update a scheduled query.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllScheduledQueries(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllScheduledQueries([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ScheduledQueries, passing the object as the first parameter, and the string 'ScheduledQueries' as the second parameter 

If not, it will return a a L<Paws::TimestreamQuery::ListScheduledQueriesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceARN => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceARN => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::TimestreamQuery::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 QueryAll(sub { },QueryString => Str, [ClientToken => Str, MaxRows => Int, NextToken => Str, QueryInsights => L<Paws::TimestreamQuery::QueryInsights>])

=head2 QueryAll(QueryString => Str, [ClientToken => Str, MaxRows => Int, NextToken => Str, QueryInsights => L<Paws::TimestreamQuery::QueryInsights>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Rows, passing the object as the first parameter, and the string 'Rows' as the second parameter 

If not, it will return a a L<Paws::TimestreamQuery::QueryResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

