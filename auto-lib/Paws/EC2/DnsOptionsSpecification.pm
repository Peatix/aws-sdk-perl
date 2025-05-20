package Paws::EC2::DnsOptionsSpecification;
  use Moose;
  has DnsRecordIpType => (is => 'ro', isa => 'Str');
  has PrivateDnsOnlyForInboundResolverEndpoint => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DnsOptionsSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DnsOptionsSpecification object:

  $service_obj->Method(Att1 => { DnsRecordIpType => $value, ..., PrivateDnsOnlyForInboundResolverEndpoint => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DnsOptionsSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->DnsRecordIpType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DnsRecordIpType => Str

The DNS records created for the endpoint.


=head2 PrivateDnsOnlyForInboundResolverEndpoint => Bool

Indicates whether to enable private DNS only for inbound endpoints.
This option is available only for services that support both gateway
and interface endpoints. It routes traffic that originates from the VPC
to the gateway endpoint and traffic that originates from on-premises to
the interface endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
