package Paws::EC2::SubnetIpv6CidrBlockAssociation;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest']);
  has IpSource => (is => 'ro', isa => 'Str', request_name => 'ipSource', traits => ['NameInRequest']);
  has Ipv6AddressAttribute => (is => 'ro', isa => 'Str', request_name => 'ipv6AddressAttribute', traits => ['NameInRequest']);
  has Ipv6CidrBlock => (is => 'ro', isa => 'Str', request_name => 'ipv6CidrBlock', traits => ['NameInRequest']);
  has Ipv6CidrBlockState => (is => 'ro', isa => 'Paws::EC2::SubnetCidrBlockState', request_name => 'ipv6CidrBlockState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SubnetIpv6CidrBlockAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SubnetIpv6CidrBlockAssociation object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., Ipv6CidrBlockState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SubnetIpv6CidrBlockAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociationId => Str

The ID of the association.


=head2 IpSource => Str

The source that allocated the IP address space. C<byoip> or C<amazon>
indicates public IP address space allocated by Amazon or space that you
have allocated with Bring your own IP (BYOIP). C<none> indicates
private space.


=head2 Ipv6AddressAttribute => Str

Public IPv6 addresses are those advertised on the internet from Amazon
Web Services. Private IP addresses are not and cannot be advertised on
the internet from Amazon Web Services.


=head2 Ipv6CidrBlock => Str

The IPv6 CIDR block.


=head2 Ipv6CidrBlockState => L<Paws::EC2::SubnetCidrBlockState>

The state of the CIDR block.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
