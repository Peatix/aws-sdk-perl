package Paws::EC2::IpamPoolAllocation;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has IpamPoolAllocationId => (is => 'ro', isa => 'Str', request_name => 'ipamPoolAllocationId', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceOwner => (is => 'ro', isa => 'Str', request_name => 'resourceOwner', traits => ['NameInRequest']);
  has ResourceRegion => (is => 'ro', isa => 'Str', request_name => 'resourceRegion', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamPoolAllocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamPoolAllocation object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamPoolAllocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cidr => Str

The CIDR for the allocation. A CIDR is a representation of an IP
address and its associated network mask (or netmask) and refers to a
range of IP addresses. An IPv4 CIDR example is C<10.24.34.0/23>. An
IPv6 CIDR example is C<2001:DB8::/32>.


=head2 Description => Str

A description of the pool allocation.


=head2 IpamPoolAllocationId => Str

The ID of an allocation.


=head2 ResourceId => Str

The ID of the resource.


=head2 ResourceOwner => Str

The owner of the resource.


=head2 ResourceRegion => Str

The Amazon Web Services Region of the resource.


=head2 ResourceType => Str

The type of the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
