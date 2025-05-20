
package Paws::CloudWatchLogs::StartQuery;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'endTime' , required => 1);
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupIdentifiers' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' );
  has LogGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logGroupNames' );
  has QueryLanguage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryLanguage' );
  has QueryString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryString' , required => 1);
  has StartTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startTime' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::StartQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::StartQuery - Arguments for method StartQuery on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQuery on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method StartQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQuery.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $StartQueryResponse = $logs->StartQuery(
      EndTime             => 1,
      QueryString         => 'MyQueryString',
      StartTime           => 1,
      Limit               => 1,                 # OPTIONAL
      LogGroupIdentifiers => [
        'MyLogGroupIdentifier', ...             # min: 1, max: 2048
      ],    # OPTIONAL
      LogGroupName  => 'MyLogGroupName',    # OPTIONAL
      LogGroupNames => [
        'MyLogGroupName', ...               # min: 1, max: 512
      ],    # OPTIONAL
      QueryLanguage => 'CWLI',    # OPTIONAL
    );

    # Results:
    my $QueryId = $StartQueryResponse->QueryId;

    # Returns a L<Paws::CloudWatchLogs::StartQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/StartQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Int

The end of the time range to query. The range is inclusive, so the
specified end time is included in the query. Specified as epoch time,
the number of seconds since C<January 1, 1970, 00:00:00 UTC>.



=head2 Limit => Int

The maximum number of log events to return in the query. If the query
string uses the C<fields> command, only the specified fields and their
values are returned. The default is 10,000.



=head2 LogGroupIdentifiers => ArrayRef[Str|Undef]

The list of log groups to query. You can include up to 50 log groups.

You can specify them by the log group name or ARN. If a log group that
you're querying is in a source account and you're using a monitoring
account, you must specify the ARN of the log group here. The query
definition must also be defined in the monitoring account.

If you specify an ARN, use the format
arn:aws:logs:I<region>:I<account-id>:log-group:I<log_group_name> Don't
include an * at the end.

A C<StartQuery> operation must include exactly one of the following
parameters: C<logGroupName>, C<logGroupNames>, or
C<logGroupIdentifiers>. The exception is queries using the OpenSearch
Service SQL query language, where you specify the log group names
inside the C<querystring> instead of here.



=head2 LogGroupName => Str

The log group on which to perform the query.

A C<StartQuery> operation must include exactly one of the following
parameters: C<logGroupName>, C<logGroupNames>, or
C<logGroupIdentifiers>. The exception is queries using the OpenSearch
Service SQL query language, where you specify the log group names
inside the C<querystring> instead of here.



=head2 LogGroupNames => ArrayRef[Str|Undef]

The list of log groups to be queried. You can include up to 50 log
groups.

A C<StartQuery> operation must include exactly one of the following
parameters: C<logGroupName>, C<logGroupNames>, or
C<logGroupIdentifiers>. The exception is queries using the OpenSearch
Service SQL query language, where you specify the log group names
inside the C<querystring> instead of here.



=head2 QueryLanguage => Str

Specify the query language to use for this query. The options are Logs
Insights QL, OpenSearch PPL, and OpenSearch SQL. For more information
about the query languages that CloudWatch Logs supports, see Supported
query languages
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html).

Valid values are: C<"CWLI">, C<"SQL">, C<"PPL">

=head2 B<REQUIRED> QueryString => Str

The query string to use. For more information, see CloudWatch Logs
Insights Query Syntax
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).



=head2 B<REQUIRED> StartTime => Int

The beginning of the time range to query. The range is inclusive, so
the specified start time is included in the query. Specified as epoch
time, the number of seconds since C<January 1, 1970, 00:00:00 UTC>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQuery in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

