
package Paws::CleanRoomsML::ListAudienceExportJobsResponse;
  use Moose;
  has AudienceExportJobs => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::AudienceExportJobSummary]', traits => ['NameInRequest'], request_name => 'audienceExportJobs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListAudienceExportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceExportJobs => ArrayRef[L<Paws::CleanRoomsML::AudienceExportJobSummary>]

The audience export jobs that match the request.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

