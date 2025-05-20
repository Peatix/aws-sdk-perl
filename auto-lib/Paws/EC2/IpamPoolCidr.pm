package Paws::EC2::IpamPoolCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Paws::EC2::IpamPoolCidrFailureReason', request_name => 'failureReason', traits => ['NameInRequest']);
  has IpamPoolCidrId => (is => 'ro', isa => 'Str', request_name => 'ipamPoolCidrId', traits => ['NameInRequest']);
  has NetmaskLength => (is => 'ro', isa => 'Int', request_name => 'netmaskLength', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamPoolCidr

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamPoolCidr object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamPoolCidr object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cidr => Str

The CIDR provisioned to the IPAM pool. A CIDR is a representation of an
IP address and its associated network mask (or netmask) and refers to a
range of IP addresses. An IPv4 CIDR example is C<10.24.34.0/23>. An
IPv6 CIDR example is C<2001:DB8::/32>.


=head2 FailureReason => L<Paws::EC2::IpamPoolCidrFailureReason>

Details related to why an IPAM pool CIDR failed to be provisioned.


=head2 IpamPoolCidrId => Str

The IPAM pool CIDR ID.


=head2 NetmaskLength => Int

The netmask length of the CIDR you'd like to provision to a pool. Can
be used for provisioning Amazon-provided IPv6 CIDRs to top-level pools
and for provisioning CIDRs to pools with source pools. Cannot be used
to provision BYOIP CIDRs to top-level pools. "NetmaskLength" or "Cidr"
is required.


=head2 State => Str

The state of the CIDR.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
