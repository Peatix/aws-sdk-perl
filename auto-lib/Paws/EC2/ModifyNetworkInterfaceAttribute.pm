
package Paws::EC2::ModifyNetworkInterfaceAttribute;
  use Moose;
  has AssociatePublicIpAddress => (is => 'ro', isa => 'Bool');
  has Attachment => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceAttachmentChanges', traits => ['NameInRequest'], request_name => 'attachment' );
  has ConnectionTrackingSpecification => (is => 'ro', isa => 'Paws::EC2::ConnectionTrackingSpecificationRequest');
  has Description => (is => 'ro', isa => 'Paws::EC2::AttributeValue', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EnablePrimaryIpv6 => (is => 'ro', isa => 'Bool');
  has EnaSrdSpecification => (is => 'ro', isa => 'Paws::EC2::EnaSrdSpecification');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'SecurityGroupId' );
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkInterfaceId' , required => 1);
  has SourceDestCheck => (is => 'ro', isa => 'Paws::EC2::AttributeBooleanValue', traits => ['NameInRequest'], request_name => 'sourceDestCheck' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyNetworkInterfaceAttribute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyNetworkInterfaceAttribute - Arguments for method ModifyNetworkInterfaceAttribute on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyNetworkInterfaceAttribute on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyNetworkInterfaceAttribute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyNetworkInterfaceAttribute.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To modify the attachment attribute of a network interface
    # This example modifies the attachment attribute of the specified network
    # interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'Attachment' => {
        'AttachmentId'        => 'eni-attach-43348162',
        'DeleteOnTermination' => 0
      },
      'NetworkInterfaceId' => 'eni-686ea200'
    );

    # To modify the description attribute of a network interface
    # This example modifies the description attribute of the specified network
    # interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'Description' => {
        'Value' => 'My description'
      },
      'NetworkInterfaceId' => 'eni-686ea200'
    );

 # To modify the groupSet attribute of a network interface
 # This example command modifies the groupSet attribute of the specified network
 # interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'Groups'             => [ 'sg-903004f8', 'sg-1a2b3c4d' ],
      'NetworkInterfaceId' => 'eni-686ea200'
    );

  # To modify the sourceDestCheck attribute of a network interface
  # This example command modifies the sourceDestCheck attribute of the specified
  # network interface.
    $ec2->ModifyNetworkInterfaceAttribute(
      'NetworkInterfaceId' => 'eni-686ea200',
      'SourceDestCheck'    => {
        'Value' => 0
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyNetworkInterfaceAttribute>

=head1 ATTRIBUTES


=head2 AssociatePublicIpAddress => Bool

Indicates whether to assign a public IPv4 address to a network
interface. This option can be enabled for any network interface but
will only apply to the primary network interface (eth0).



=head2 Attachment => L<Paws::EC2::NetworkInterfaceAttachmentChanges>

Information about the interface attachment. If modifying the C<delete
on termination> attribute, you must specify the ID of the interface
attachment.



=head2 ConnectionTrackingSpecification => L<Paws::EC2::ConnectionTrackingSpecificationRequest>

A connection tracking specification.



=head2 Description => L<Paws::EC2::AttributeValue>

A description for the network interface.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EnablePrimaryIpv6 => Bool

If youE<rsquo>re modifying a network interface in a dual-stack or
IPv6-only subnet, you have the option to assign a primary IPv6 IP
address. A primary IPv6 address is an IPv6 GUA address associated with
an ENI that you have enabled to use a primary IPv6 address. Use this
option if the instance that this ENI will be attached to relies on its
IPv6 address not changing. Amazon Web Services will automatically
assign an IPv6 address associated with the ENI attached to your
instance to be the primary IPv6 address. Once you enable an IPv6 GUA
address to be a primary IPv6, you cannot disable it. When you enable an
IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made
the primary IPv6 address until the instance is terminated or the
network interface is detached. If you have multiple IPv6 addresses
associated with an ENI attached to your instance and you enable a
primary IPv6 address, the first IPv6 GUA address associated with the
ENI becomes the primary IPv6 address.



=head2 EnaSrdSpecification => L<Paws::EC2::EnaSrdSpecification>

Updates the ENA Express configuration for the network interface
thatE<rsquo>s attached to the instance.



=head2 Groups => ArrayRef[Str|Undef]

Changes the security groups for the network interface. The new set of
groups you specify replaces the current set. You must specify at least
one group, even if it's just the default security group in the VPC. You
must specify the ID of the security group, not the name.



=head2 B<REQUIRED> NetworkInterfaceId => Str

The ID of the network interface.



=head2 SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>

Enable or disable source/destination checks, which ensure that the
instance is either the source or the destination of any traffic that it
receives. If the value is C<true>, source/destination checks are
enabled; otherwise, they are disabled. The default value is C<true>.
You must disable source/destination checks if the instance runs
services such as network address translation, routing, or firewalls.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyNetworkInterfaceAttribute in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

