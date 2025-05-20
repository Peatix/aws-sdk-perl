
package Paws::IoTSiteWise::ListBulkImportJobsResponse;
  use Moose;
  has JobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::JobSummary]', traits => ['NameInRequest'], request_name => 'jobSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::ListBulkImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummaries => ArrayRef[L<Paws::IoTSiteWise::JobSummary>]

One or more job summaries to list.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

