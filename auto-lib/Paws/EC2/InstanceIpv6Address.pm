package Paws::EC2::InstanceIpv6Address;
  use Moose;
  has Ipv6Address => (is => 'ro', isa => 'Str', request_name => 'ipv6Address', traits => ['NameInRequest']);
  has IsPrimaryIpv6 => (is => 'ro', isa => 'Bool', request_name => 'isPrimaryIpv6', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceIpv6Address

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceIpv6Address object:

  $service_obj->Method(Att1 => { Ipv6Address => $value, ..., IsPrimaryIpv6 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceIpv6Address object:

  $result = $service_obj->Method(...);
  $result->Att1->Ipv6Address

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Ipv6Address => Str

The IPv6 address.


=head2 IsPrimaryIpv6 => Bool

Determines if an IPv6 address associated with a network interface is
the primary IPv6 address. When you enable an IPv6 GUA address to be a
primary IPv6, the first IPv6 GUA will be made the primary IPv6 address
until the instance is terminated or the network interface is detached.
For more information, see RunInstances
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
