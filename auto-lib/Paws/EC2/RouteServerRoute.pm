package Paws::EC2::RouteServerRoute;
  use Moose;
  has AsPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'asPathSet', traits => ['NameInRequest']);
  has Med => (is => 'ro', isa => 'Int', request_name => 'med', traits => ['NameInRequest']);
  has NextHopIp => (is => 'ro', isa => 'Str', request_name => 'nextHopIp', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Str', request_name => 'prefix', traits => ['NameInRequest']);
  has RouteInstallationDetails => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RouteServerRouteInstallationDetail]', request_name => 'routeInstallationDetailSet', traits => ['NameInRequest']);
  has RouteServerEndpointId => (is => 'ro', isa => 'Str', request_name => 'routeServerEndpointId', traits => ['NameInRequest']);
  has RouteServerPeerId => (is => 'ro', isa => 'Str', request_name => 'routeServerPeerId', traits => ['NameInRequest']);
  has RouteStatus => (is => 'ro', isa => 'Str', request_name => 'routeStatus', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteServerRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteServerRoute object:

  $service_obj->Method(Att1 => { AsPaths => $value, ..., RouteStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteServerRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->AsPaths

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AsPaths => ArrayRef[Str|Undef]

The AS path attributes of the BGP route.


=head2 Med => Int

The Multi-Exit Discriminator (MED) value of the BGP route.


=head2 NextHopIp => Str

The IP address for the next hop.


=head2 Prefix => Str

The destination CIDR block of the route.


=head2 RouteInstallationDetails => ArrayRef[L<Paws::EC2::RouteServerRouteInstallationDetail>]

Details about the installation status of this route in route tables.


=head2 RouteServerEndpointId => Str

The ID of the route server endpoint that received this route.


=head2 RouteServerPeerId => Str

The ID of the route server peer that advertised this route.


=head2 RouteStatus => Str

The current status of the route in the routing database. Values are
C<in-rib> or C<in-fib> depending on if the routes are in the RIB or the
FIB database.

The Routing Information Base (RIB)
(https://en.wikipedia.org/wiki/Routing_table) serves as a database that
stores all the routing information and network topology data collected
by a router or routing system, such as routes learned from BGP peers.
The RIB is constantly updated as new routing information is received or
existing routes change. This ensures that the route server always has
the most current view of the network topology and can make optimal
routing decisions.

The Forwarding Information Base (FIB)
(https://en.wikipedia.org/wiki/Forwarding_information_base) serves as a
forwarding table for what route server has determined are the best-path
routes in the RIB after evaluating all available routing information
and policies. The FIB routes are installed on the route tables. The FIB
is recomputed whenever there are changes to the RIB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
