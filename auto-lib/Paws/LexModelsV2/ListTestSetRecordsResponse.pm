
package Paws::LexModelsV2::ListTestSetRecordsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TestSetRecords => (is => 'ro', isa => 'ArrayRef[Paws::LexModelsV2::TestSetTurnRecord]', traits => ['NameInRequest'], request_name => 'testSetRecords');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::ListTestSetRecordsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates whether there are more records to return in a
response to the ListTestSetRecords operation. If the nextToken field is
present, you send the contents as the nextToken parameter of a
ListTestSetRecords operation request to get the next page of records.


=head2 TestSetRecords => ArrayRef[L<Paws::LexModelsV2::TestSetTurnRecord>]

The list of records from the test set.


=head2 _request_id => Str


=cut

