package Paws::EC2::CoipCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has CoipPoolId => (is => 'ro', isa => 'Str', request_name => 'coipPoolId', traits => ['NameInRequest']);
  has LocalGatewayRouteTableId => (is => 'ro', isa => 'Str', request_name => 'localGatewayRouteTableId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CoipCidr

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CoipCidr object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., LocalGatewayRouteTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CoipCidr object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cidr => Str

An address range in a customer-owned IP address space.


=head2 CoipPoolId => Str

The ID of the address pool.


=head2 LocalGatewayRouteTableId => Str

The ID of the local gateway route table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
