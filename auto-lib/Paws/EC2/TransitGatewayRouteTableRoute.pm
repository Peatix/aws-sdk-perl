package Paws::EC2::TransitGatewayRouteTableRoute;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest']);
  has DestinationCidr => (is => 'ro', isa => 'Str', request_name => 'destinationCidr', traits => ['NameInRequest']);
  has PrefixListId => (is => 'ro', isa => 'Str', request_name => 'prefixListId', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has RouteOrigin => (is => 'ro', isa => 'Str', request_name => 'routeOrigin', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayRouteTableRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayRouteTableRoute object:

  $service_obj->Method(Att1 => { AttachmentId => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayRouteTableRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->AttachmentId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AttachmentId => Str

The ID of the route attachment.


=head2 DestinationCidr => Str

The CIDR block used for destination matches.


=head2 PrefixListId => Str

The ID of the prefix list.


=head2 ResourceId => Str

The ID of the resource for the route attachment.


=head2 ResourceType => Str

The resource type for the route attachment.


=head2 RouteOrigin => Str

The route origin. The following are the possible values:

=over

=item *

static

=item *

propagated

=back



=head2 State => Str

The state of the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
