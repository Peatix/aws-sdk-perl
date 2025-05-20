
package Paws::CleanRooms::ListCollaborationIdNamespaceAssociationsOutput;
  use Moose;
  has CollaborationIdNamespaceAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::CollaborationIdNamespaceAssociationSummary]', traits => ['NameInRequest'], request_name => 'collaborationIdNamespaceAssociationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListCollaborationIdNamespaceAssociationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdNamespaceAssociationSummaries => ArrayRef[L<Paws::CleanRooms::CollaborationIdNamespaceAssociationSummary>]

The summary information of the collaboration ID namespace associations
that you requested.


=head2 NextToken => Str

The token value provided to access the next page of results.


=head2 _request_id => Str


=cut

