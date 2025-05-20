
package Paws::DataExchange::ListDataGrantsResponse;
  use Moose;
  has DataGrantSummaries => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::DataGrantSummaryEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::ListDataGrantsResponse

=head1 ATTRIBUTES


=head2 DataGrantSummaries => ArrayRef[L<Paws::DataExchange::DataGrantSummaryEntry>]

An object that contains a list of data grant information.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

