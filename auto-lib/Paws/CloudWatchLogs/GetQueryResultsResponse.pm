
package Paws::CloudWatchLogs::GetQueryResultsResponse;
  use Moose;
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has QueryLanguage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'queryLanguage' );
  has Results => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::CloudWatchLogs::ResultField]]', traits => ['NameInRequest'], request_name => 'results' );
  has Statistics => (is => 'ro', isa => 'Paws::CloudWatchLogs::QueryStatistics', traits => ['NameInRequest'], request_name => 'statistics' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::GetQueryResultsResponse

=head1 ATTRIBUTES


=head2 EncryptionKey => Str

If you associated an KMS key with the CloudWatch Logs Insights query
results in this account, this field displays the ARN of the key that's
used to encrypt the query results when StartQuery
(https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_StartQuery.html)
stores them.


=head2 QueryLanguage => Str

The query language used for this query. For more information about the
query languages that CloudWatch Logs supports, see Supported query
languages
(https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_AnalyzeLogData_Languages.html).

Valid values are: C<"CWLI">, C<"SQL">, C<"PPL">
=head2 Results => ArrayRef[L<ArrayRef[Paws::CloudWatchLogs::ResultField]>]

The log events that matched the query criteria during the most recent
time it ran.

The C<results> value is an array of arrays. Each log event is one
object in the top-level array. Each of these log event objects is an
array of C<field>/C<value> pairs.


=head2 Statistics => L<Paws::CloudWatchLogs::QueryStatistics>

Includes the number of log events scanned by the query, the number of
log events that matched the query criteria, and the total number of
bytes in the scanned log events. These values reflect the full raw
results of the query.


=head2 Status => Str

The status of the most recent running of the query. Possible values are
C<Cancelled>, C<Complete>, C<Failed>, C<Running>, C<Scheduled>,
C<Timeout>, and C<Unknown>.

Queries time out after 60 minutes of runtime. To avoid having your
queries time out, reduce the time range being searched or partition
your query into a number of queries.

Valid values are: C<"Scheduled">, C<"Running">, C<"Complete">, C<"Failed">, C<"Cancelled">, C<"Timeout">, C<"Unknown">
=head2 _request_id => Str


=cut

1;