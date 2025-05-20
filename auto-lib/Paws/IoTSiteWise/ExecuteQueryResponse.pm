
package Paws::IoTSiteWise::ExecuteQueryResponse;
  use Moose;
  has Columns => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::ColumnInfo]', traits => ['NameInRequest'], request_name => 'columns');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Rows => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::Row]', traits => ['NameInRequest'], request_name => 'rows');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ExecuteQueryResponse

=head1 ATTRIBUTES


=head2 Columns => ArrayRef[L<Paws::IoTSiteWise::ColumnInfo>]

Represents a single column in the query results.


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 Rows => ArrayRef[L<Paws::IoTSiteWise::Row>]

Represents a single row in the query results.


=head2 _request_id => Str


=cut

