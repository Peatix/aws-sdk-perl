
package Paws::Evidently::ListProjectsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::ProjectSummary]', traits => ['NameInRequest'], request_name => 'projects');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::ListProjectsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use in a subsequent C<ListProjects> operation to return
the next set of results.


=head2 Projects => ArrayRef[L<Paws::Evidently::ProjectSummary>]

An array of structures that contain the configuration details of the
projects in the Region.


=head2 _request_id => Str


=cut

