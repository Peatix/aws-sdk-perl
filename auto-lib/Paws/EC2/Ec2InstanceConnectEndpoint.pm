package Paws::EC2::Ec2InstanceConnectEndpoint;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has DnsName => (is => 'ro', isa => 'Str', request_name => 'dnsName', traits => ['NameInRequest']);
  has FipsDnsName => (is => 'ro', isa => 'Str', request_name => 'fipsDnsName', traits => ['NameInRequest']);
  has InstanceConnectEndpointArn => (is => 'ro', isa => 'Str', request_name => 'instanceConnectEndpointArn', traits => ['NameInRequest']);
  has InstanceConnectEndpointId => (is => 'ro', isa => 'Str', request_name => 'instanceConnectEndpointId', traits => ['NameInRequest']);
  has NetworkInterfaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'networkInterfaceIdSet', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has PreserveClientIp => (is => 'ro', isa => 'Bool', request_name => 'preserveClientIp', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIdSet', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StateMessage => (is => 'ro', isa => 'Str', request_name => 'stateMessage', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Ec2InstanceConnectEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Ec2InstanceConnectEndpoint object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Ec2InstanceConnectEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone of the EC2 Instance Connect Endpoint.


=head2 CreatedAt => Str

The date and time that the EC2 Instance Connect Endpoint was created.


=head2 DnsName => Str

The DNS name of the EC2 Instance Connect Endpoint.


=head2 FipsDnsName => Str




=head2 InstanceConnectEndpointArn => Str

The Amazon Resource Name (ARN) of the EC2 Instance Connect Endpoint.


=head2 InstanceConnectEndpointId => Str

The ID of the EC2 Instance Connect Endpoint.


=head2 NetworkInterfaceIds => ArrayRef[Str|Undef]

The ID of the elastic network interface that Amazon EC2 automatically
created when creating the EC2 Instance Connect Endpoint.


=head2 OwnerId => Str

The ID of the Amazon Web Services account that created the EC2 Instance
Connect Endpoint.


=head2 PreserveClientIp => Bool

Indicates whether your client's IP address is preserved as the source.
The value is C<true> or C<false>.

=over

=item *

If C<true>, your client's IP address is used when you connect to a
resource.

=item *

If C<false>, the elastic network interface IP address is used when you
connect to a resource.

=back

Default: C<true>


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The security groups associated with the endpoint. If you didn't specify
a security group, the default security group for your VPC is associated
with the endpoint.


=head2 State => Str

The current state of the EC2 Instance Connect Endpoint.


=head2 StateMessage => Str

The message for the current state of the EC2 Instance Connect Endpoint.
Can include a failure message.


=head2 SubnetId => Str

The ID of the subnet in which the EC2 Instance Connect Endpoint was
created.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags assigned to the EC2 Instance Connect Endpoint.


=head2 VpcId => Str

The ID of the VPC in which the EC2 Instance Connect Endpoint was
created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
