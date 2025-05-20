
package Paws::RedshiftData::GetStatementResultV2Response;
  use Moose;
  has ColumnMetadata => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftData::ColumnMetadata]');
  has NextToken => (is => 'ro', isa => 'Str');
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::RedshiftData::QueryRecords]', required => 1);
  has ResultFormat => (is => 'ro', isa => 'Str');
  has TotalNumRows => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::GetStatementResultV2Response

=head1 ATTRIBUTES


=head2 ColumnMetadata => ArrayRef[L<Paws::RedshiftData::ColumnMetadata>]

The properties (metadata) of a column.


=head2 NextToken => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have
been retrieved for the request.


=head2 B<REQUIRED> Records => ArrayRef[L<Paws::RedshiftData::QueryRecords>]

The results of the SQL statement in CSV format.


=head2 ResultFormat => Str

The data format of the result of the SQL statement.

Valid values are: C<"JSON">, C<"CSV">
=head2 TotalNumRows => Int

The total number of rows in the result set returned from a query. You
can use this number to estimate the number of calls to the
C<GetStatementResultV2> operation needed to page through the results.


=head2 _request_id => Str


=cut

1;