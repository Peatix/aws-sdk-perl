package Paws::EC2::VerifiedAccessEndpointLoadBalancerOptions;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', request_name => 'loadBalancerArn', traits => ['NameInRequest']);
  has Port => (is => 'ro', isa => 'Int', request_name => 'port', traits => ['NameInRequest']);
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VerifiedAccessEndpointPortRange]', request_name => 'portRangeSet', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIdSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessEndpointLoadBalancerOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessEndpointLoadBalancerOptions object:

  $service_obj->Method(Att1 => { LoadBalancerArn => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessEndpointLoadBalancerOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->LoadBalancerArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LoadBalancerArn => Str

The ARN of the load balancer.


=head2 Port => Int

The IP port number.


=head2 PortRanges => ArrayRef[L<Paws::EC2::VerifiedAccessEndpointPortRange>]

The port ranges.


=head2 Protocol => Str

The IP protocol.


=head2 SubnetIds => ArrayRef[Str|Undef]

The IDs of the subnets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
