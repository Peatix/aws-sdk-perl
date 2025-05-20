
package Paws::CleanRooms::ListCollaborationsOutput;
  use Moose;
  has CollaborationList => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::CollaborationSummary]', traits => ['NameInRequest'], request_name => 'collaborationList', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationList => ArrayRef[L<Paws::CleanRooms::CollaborationSummary>]

The list of collaborations.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

