
package Paws::RDSData::ExecuteStatementResponse;
  use Moose;
  has ColumnMetadata => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::ColumnMetadata]', traits => ['NameInRequest'], request_name => 'columnMetadata');
  has FormattedRecords => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'formattedRecords');
  has GeneratedFields => (is => 'ro', isa => 'ArrayRef[Paws::RDSData::Field]', traits => ['NameInRequest'], request_name => 'generatedFields');
  has NumberOfRecordsUpdated => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numberOfRecordsUpdated');
  has Records => (is => 'ro', isa => 'ArrayRef[ArrayRef[Paws::RDSData::Field]]', traits => ['NameInRequest'], request_name => 'records');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteStatementResponse

=head1 ATTRIBUTES


=head2 ColumnMetadata => ArrayRef[L<Paws::RDSData::ColumnMetadata>]

Metadata for the columns included in the results. This field is blank
if the C<formatRecordsAs> parameter is set to C<JSON>.


=head2 FormattedRecords => Str

A string value that represents the result set of a C<SELECT> statement
in JSON format. This value is only present when the C<formatRecordsAs>
parameter is set to C<JSON>.

The size limit for this field is currently 10 MB. If the JSON-formatted
string representing the result set requires more than 10 MB, the call
returns an error.


=head2 GeneratedFields => ArrayRef[L<Paws::RDSData::Field>]

Values for fields generated during a DML request.

The C<generatedFields> data isn't supported by Aurora PostgreSQL. To
get the values of generated fields, use the C<RETURNING> clause. For
more information, see Returning Data From Modified Rows
(https://www.postgresql.org/docs/10/dml-returning.html) in the
PostgreSQL documentation.


=head2 NumberOfRecordsUpdated => Int

The number of records updated by the request.


=head2 Records => ArrayRef[L<ArrayRef[Paws::RDSData::Field]>]

The records returned by the SQL statement. This field is blank if the
C<formatRecordsAs> parameter is set to C<JSON>.


=head2 _request_id => Str


=cut

