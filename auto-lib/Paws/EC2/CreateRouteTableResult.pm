
package Paws::EC2::CreateRouteTableResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has RouteTable => (is => 'ro', isa => 'Paws::EC2::RouteTable', request_name => 'routeTable', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateRouteTableResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier to ensure the idempotency of the
request. Only returned if a client token was provided in the request.


=head2 RouteTable => L<Paws::EC2::RouteTable>

Information about the route table.


=head2 _request_id => Str


=cut

