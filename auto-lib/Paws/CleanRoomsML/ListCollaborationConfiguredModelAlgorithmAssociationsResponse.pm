
package Paws::CleanRoomsML::ListCollaborationConfiguredModelAlgorithmAssociationsResponse;
  use Moose;
  has CollaborationConfiguredModelAlgorithmAssociations => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::CollaborationConfiguredModelAlgorithmAssociationSummary]', traits => ['NameInRequest'], request_name => 'collaborationConfiguredModelAlgorithmAssociations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListCollaborationConfiguredModelAlgorithmAssociationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationConfiguredModelAlgorithmAssociations => ArrayRef[L<Paws::CleanRoomsML::CollaborationConfiguredModelAlgorithmAssociationSummary>]

The configured model algorithm associations that belong to this
collaboration.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

