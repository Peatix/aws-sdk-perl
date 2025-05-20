
package Paws::CloudTrail::GetQueryResultsResponse;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryResultRows => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::CloudTrail::QueryResultColumn]]');
  has QueryStatistics => (is => 'ro', isa => 'Paws::CloudTrail::QueryStatistics');
  has QueryStatus => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::GetQueryResultsResponse

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

The error message returned if a query failed.


=head2 NextToken => Str

A token you can use to get the next page of query results.


=head2 QueryResultRows => ArrayRef[L<ArrayRef[Paws::CloudTrail::QueryResultColumn]>]

Contains the individual event results of the query.


=head2 QueryStatistics => L<Paws::CloudTrail::QueryStatistics>

Shows the count of query results.


=head2 QueryStatus => Str

The status of the query. Values include C<QUEUED>, C<RUNNING>,
C<FINISHED>, C<FAILED>, C<TIMED_OUT>, or C<CANCELLED>.

Valid values are: C<"QUEUED">, C<"RUNNING">, C<"FINISHED">, C<"FAILED">, C<"CANCELLED">, C<"TIMED_OUT">
=head2 _request_id => Str


=cut

1;