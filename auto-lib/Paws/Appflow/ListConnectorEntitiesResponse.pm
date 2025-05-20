
package Paws::Appflow::ListConnectorEntitiesResponse;
  use Moose;
  has ConnectorEntityMap => (is => 'ro', isa => 'Paws::Appflow::ConnectorEntityMap', traits => ['NameInRequest'], request_name => 'connectorEntityMap', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ListConnectorEntitiesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorEntityMap => L<Paws::Appflow::ConnectorEntityMap>

The response of C<ListConnectorEntities> lists entities grouped by
category. This map's key represents the group name, and its value
contains the list of entities belonging to that group.


=head2 NextToken => Str

A token that you specify in your next C<ListConnectorEntities>
operation to get the next page of results in paginated response. The
C<ListConnectorEntities> operation provides this token if the response
is too big for the page size.


=head2 _request_id => Str


=cut

