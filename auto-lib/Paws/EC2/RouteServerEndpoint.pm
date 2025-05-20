package Paws::EC2::RouteServerEndpoint;
  use Moose;
  has EniAddress => (is => 'ro', isa => 'Str', request_name => 'eniAddress', traits => ['NameInRequest']);
  has EniId => (is => 'ro', isa => 'Str', request_name => 'eniId', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has RouteServerEndpointId => (is => 'ro', isa => 'Str', request_name => 'routeServerEndpointId', traits => ['NameInRequest']);
  has RouteServerId => (is => 'ro', isa => 'Str', request_name => 'routeServerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RouteServerEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::RouteServerEndpoint object:

  $service_obj->Method(Att1 => { EniAddress => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::RouteServerEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->EniAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EniAddress => Str

The IP address of the Elastic network interface for the endpoint.


=head2 EniId => Str

The ID of the Elastic network interface for the endpoint.


=head2 FailureReason => Str

The reason for any failure in endpoint creation or operation.


=head2 RouteServerEndpointId => Str

The unique identifier of the route server endpoint.


=head2 RouteServerId => Str

The ID of the route server associated with this endpoint.


=head2 State => Str

The current state of the route server endpoint.


=head2 SubnetId => Str

The ID of the subnet to place the route server endpoint into.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

Any tags assigned to the route server endpoint.


=head2 VpcId => Str

The ID of the VPC containing the endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
