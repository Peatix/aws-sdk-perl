
package Paws::CloudTrail::DescribeQueryResponse;
  use Moose;
  has DeliveryS3Uri => (is => 'ro', isa => 'Str');
  has DeliveryStatus => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has EventDataStoreOwnerAccountId => (is => 'ro', isa => 'Str');
  has Prompt => (is => 'ro', isa => 'Str');
  has QueryId => (is => 'ro', isa => 'Str');
  has QueryStatistics => (is => 'ro', isa => 'Paws::CloudTrail::QueryStatisticsForDescribeQuery');
  has QueryStatus => (is => 'ro', isa => 'Str');
  has QueryString => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::DescribeQueryResponse

=head1 ATTRIBUTES


=head2 DeliveryS3Uri => Str

The URI for the S3 bucket where CloudTrail delivered query results, if
applicable.


=head2 DeliveryStatus => Str

The delivery status.

Valid values are: C<"SUCCESS">, C<"FAILED">, C<"FAILED_SIGNING_FILE">, C<"PENDING">, C<"RESOURCE_NOT_FOUND">, C<"ACCESS_DENIED">, C<"ACCESS_DENIED_SIGNING_FILE">, C<"CANCELLED">, C<"UNKNOWN">
=head2 ErrorMessage => Str

The error message returned if a query failed.


=head2 EventDataStoreOwnerAccountId => Str

The account ID of the event data store owner.


=head2 Prompt => Str

The prompt used for a generated query. For information about generated
queries, see Create CloudTrail Lake queries from natural language
prompts
(https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html)
in the I<CloudTrail > user guide.


=head2 QueryId => Str

The ID of the query.


=head2 QueryStatistics => L<Paws::CloudTrail::QueryStatisticsForDescribeQuery>

Metadata about a query, including the number of events that were
matched, the total number of events scanned, the query run time in
milliseconds, and the query's creation time.


=head2 QueryStatus => Str

The status of a query. Values for C<QueryStatus> include C<QUEUED>,
C<RUNNING>, C<FINISHED>, C<FAILED>, C<TIMED_OUT>, or C<CANCELLED>

Valid values are: C<"QUEUED">, C<"RUNNING">, C<"FINISHED">, C<"FAILED">, C<"CANCELLED">, C<"TIMED_OUT">
=head2 QueryString => Str

The SQL code of a query.


=head2 _request_id => Str


=cut

1;