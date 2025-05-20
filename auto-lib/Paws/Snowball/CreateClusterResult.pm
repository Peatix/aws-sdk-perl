
package Paws::Snowball::CreateClusterResult;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has JobListEntries => (is => 'ro', isa => 'ArrayRef[Paws::Snowball::JobListEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateClusterResult

=head1 ATTRIBUTES


=head2 ClusterId => Str

The automatically generated ID for a cluster.


=head2 JobListEntries => ArrayRef[L<Paws::Snowball::JobListEntry>]

List of jobs created for this cluster. For syntax, see
ListJobsResult$JobListEntries
(http://amazonaws.com/snowball/latest/api-reference/API_ListJobs.html#API_ListJobs_ResponseSyntax)
in this guide.


=head2 _request_id => Str


=cut

1;