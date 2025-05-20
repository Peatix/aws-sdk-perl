
package Paws::IoTSiteWise::ListDatasetsResponse;
  use Moose;
  has DatasetSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::DatasetSummary]', traits => ['NameInRequest'], request_name => 'datasetSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetSummaries => ArrayRef[L<Paws::IoTSiteWise::DatasetSummary>]

A list that summarizes the dataset response.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

