
package Paws::CleanRoomsML::ListCollaborationMLInputChannelsResponse;
  use Moose;
  has CollaborationMLInputChannelsList => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::CollaborationMLInputChannelSummary]', traits => ['NameInRequest'], request_name => 'collaborationMLInputChannelsList', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListCollaborationMLInputChannelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationMLInputChannelsList => ArrayRef[L<Paws::CleanRoomsML::CollaborationMLInputChannelSummary>]

The list of ML input channels that you wanted.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

