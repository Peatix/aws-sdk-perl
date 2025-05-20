
package Paws::SESv2::ListExportJobsResponse;
  use Moose;
  has ExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::ExportJobSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListExportJobsResponse

=head1 ATTRIBUTES


=head2 ExportJobs => ArrayRef[L<Paws::SESv2::ExportJobSummary>]

A list of the export job summaries.


=head2 NextToken => Str

A string token indicating that there might be additional export jobs
available to be listed. Use this token to a subsequent call to
C<ListExportJobs> with the same parameters to retrieve the next page of
export jobs.


=head2 _request_id => Str


=cut

