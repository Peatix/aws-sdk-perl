
package Paws::IoTTwinMaker::ExecuteQueryResponse;
  use Moose;
  has ColumnDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::ColumnDescription]', traits => ['NameInRequest'], request_name => 'columnDescriptions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Rows => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::Row]', traits => ['NameInRequest'], request_name => 'rows');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ExecuteQueryResponse

=head1 ATTRIBUTES


=head2 ColumnDescriptions => ArrayRef[L<Paws::IoTTwinMaker::ColumnDescription>]

A list of ColumnDescription objects.


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 Rows => ArrayRef[L<Paws::IoTTwinMaker::Row>]

Represents a single row in the query results.


=head2 _request_id => Str


=cut

