
package Paws::CleanRooms::ListProtectedJobsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ProtectedJobs => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::ProtectedJobSummary]', traits => ['NameInRequest'], request_name => 'protectedJobs', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListProtectedJobsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 B<REQUIRED> ProtectedJobs => ArrayRef[L<Paws::CleanRooms::ProtectedJobSummary>]

A list of protected job summaries.


=head2 _request_id => Str


=cut

