
package Paws::M2::ListDataSetsResponse;
  use Moose;
  has DataSets => (is => 'ro', isa => 'ArrayRef[Paws::M2::DataSetSummary]', traits => ['NameInRequest'], request_name => 'dataSets', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::ListDataSetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSets => ArrayRef[L<Paws::M2::DataSetSummary>]

The list of data sets, containing information including the creation
time, the data set name, the data set organization, the data set
format, and the last time the data set was referenced or updated.


=head2 NextToken => Str

If there are more items to return, this contains a token that is passed
to a subsequent call to this operation to retrieve the next set of
items.


=head2 _request_id => Str


=cut

