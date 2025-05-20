package Paws::EC2::ModifyVerifiedAccessEndpointLoadBalancerOptions;
  use Moose;
  has Port => (is => 'ro', isa => 'Int');
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ModifyVerifiedAccessEndpointPortRange]', request_name => 'PortRange', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'SubnetId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVerifiedAccessEndpointLoadBalancerOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ModifyVerifiedAccessEndpointLoadBalancerOptions object:

  $service_obj->Method(Att1 => { Port => $value, ..., SubnetIds => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ModifyVerifiedAccessEndpointLoadBalancerOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Port

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Port => Int

The IP port number.


=head2 PortRanges => ArrayRef[L<Paws::EC2::ModifyVerifiedAccessEndpointPortRange>]

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
