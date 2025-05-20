
package Paws::Panorama::ListNodeFromTemplateJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has NodeFromTemplateJobs => (is => 'ro', isa => 'ArrayRef[Paws::Panorama::NodeFromTemplateJob]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::ListNodeFromTemplateJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 B<REQUIRED> NodeFromTemplateJobs => ArrayRef[L<Paws::Panorama::NodeFromTemplateJob>]

A list of jobs.


=head2 _request_id => Str


=cut

