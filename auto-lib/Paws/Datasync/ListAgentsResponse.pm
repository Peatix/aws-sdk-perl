
package Paws::Datasync::ListAgentsResponse;
  use Moose;
  has Agents => (is => 'ro', isa => 'ArrayRef[Paws::Datasync::AgentListEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::ListAgentsResponse

=head1 ATTRIBUTES


=head2 Agents => ArrayRef[L<Paws::Datasync::AgentListEntry>]

A list of DataSync agents in your Amazon Web Services account in the
Amazon Web Services Region specified in the request. The list is
ordered by the agents' Amazon Resource Names (ARNs).


=head2 NextToken => Str

The opaque string that indicates the position to begin the next list of
results in the response.


=head2 _request_id => Str


=cut

1;