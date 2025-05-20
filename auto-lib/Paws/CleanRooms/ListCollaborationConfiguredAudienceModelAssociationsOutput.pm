
package Paws::CleanRooms::ListCollaborationConfiguredAudienceModelAssociationsOutput;
  use Moose;
  has CollaborationConfiguredAudienceModelAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociationSummary]', traits => ['NameInRequest'], request_name => 'collaborationConfiguredAudienceModelAssociationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationConfiguredAudienceModelAssociationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationConfiguredAudienceModelAssociationSummaries => ArrayRef[L<Paws::CleanRooms::CollaborationConfiguredAudienceModelAssociationSummary>]

The metadata of the configured audience model association within a
collaboration.


=head2 NextToken => Str

The pagination token that's used to fetch the next set of results.


=head2 _request_id => Str


=cut

