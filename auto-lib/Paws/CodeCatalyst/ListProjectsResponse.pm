
package Paws::CodeCatalyst::ListProjectsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CodeCatalyst::ProjectSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCatalyst::ListProjectsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CodeCatalyst::ProjectSummary>]

Information about the projects.


=head2 NextToken => Str

A token returned from a call to this API to indicate the next batch of
results to return, if any.


=head2 _request_id => Str


=cut

