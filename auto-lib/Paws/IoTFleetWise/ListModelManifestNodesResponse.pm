
package Paws::IoTFleetWise::ListModelManifestNodesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Nodes => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetWise::Node]', traits => ['NameInRequest'], request_name => 'nodes' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::ListModelManifestNodesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to retrieve the next set of results, or C<null> if there are
no more results.


=head2 Nodes => ArrayRef[L<Paws::IoTFleetWise::Node>]

A list of information about nodes.


=head2 _request_id => Str


=cut

1;