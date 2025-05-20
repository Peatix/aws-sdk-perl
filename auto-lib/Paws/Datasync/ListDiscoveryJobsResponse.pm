
package Paws::Datasync::ListDiscoveryJobsResponse;
  use Moose;
  has DiscoveryJobs => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::DiscoveryJobListEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListDiscoveryJobsResponse

=head1 ATTRIBUTES


=head2 DiscoveryJobs => ArrayRef[L<Paws::Datasync::DiscoveryJobListEntry>]

The discovery jobs that you've run.


=head2 NextToken => Str

The opaque string that indicates the position to begin the next list of
results in the response.


=head2 _request_id => Str


=cut

1;