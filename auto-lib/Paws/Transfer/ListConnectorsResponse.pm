
package Paws::Transfer::ListConnectorsResponse;
  use Moose;
  has Connectors => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedConnector]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListConnectorsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Connectors => ArrayRef[L<Paws::Transfer::ListedConnector>]

Returns an array, where each item contains the details of a connector.


=head2 NextToken => Str

Returns a token that you can use to call C<ListConnectors> again and
receive additional results, if there are any.


=head2 _request_id => Str


=cut

1;