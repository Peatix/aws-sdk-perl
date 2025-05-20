
package Paws::CleanRoomsML::ListAudienceGenerationJobsResponse;
  use Moose;
  has AudienceGenerationJobs => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::AudienceGenerationJobSummary]', traits => ['NameInRequest'], request_name => 'audienceGenerationJobs', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListAudienceGenerationJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceGenerationJobs => ArrayRef[L<Paws::CleanRoomsML::AudienceGenerationJobSummary>]

The audience generation jobs that match the request.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

