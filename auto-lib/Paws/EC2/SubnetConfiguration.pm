package Paws::EC2::SubnetConfiguration;
  use Moose;
  has Ipv4 => (is => 'ro', isa => 'Str');
  has Ipv6 => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SubnetConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SubnetConfiguration object:

  $service_obj->Method(Att1 => { Ipv4 => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SubnetConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv4

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Ipv4 => Str

The IPv4 address to assign to the endpoint network interface in the
subnet. You must provide an IPv4 address if the VPC endpoint supports
IPv4.

If you specify an IPv4 address when modifying a VPC endpoint, we
replace the existing endpoint network interface with a new endpoint
network interface with this IP address. This process temporarily
disconnects the subnet and the VPC endpoint.


=head2 Ipv6 => Str

The IPv6 address to assign to the endpoint network interface in the
subnet. You must provide an IPv6 address if the VPC endpoint supports
IPv6.

If you specify an IPv6 address when modifying a VPC endpoint, we
replace the existing endpoint network interface with a new endpoint
network interface with this IP address. This process temporarily
disconnects the subnet and the VPC endpoint.


=head2 SubnetId => Str

The ID of the subnet.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
