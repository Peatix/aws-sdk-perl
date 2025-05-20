package Paws::EC2::PathComponent;
  use Moose;
  has AclRule => (is => 'ro', isa => 'Paws::EC2::AnalysisAclRule', request_name => 'aclRule', traits => ['NameInRequest']);
  has AdditionalDetails => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AdditionalDetail]', request_name => 'additionalDetailSet', traits => ['NameInRequest']);
  has AttachedTo => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'attachedTo', traits => ['NameInRequest']);
  has Component => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'component', traits => ['NameInRequest']);
  has DestinationVpc => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'destinationVpc', traits => ['NameInRequest']);
  has ElasticLoadBalancerListener => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'elasticLoadBalancerListener', traits => ['NameInRequest']);
  has Explanations => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Explanation]', request_name => 'explanationSet', traits => ['NameInRequest']);
  has FirewallStatefulRule => (is => 'ro', isa => 'Paws::EC2::FirewallStatefulRule', request_name => 'firewallStatefulRule', traits => ['NameInRequest']);
  has FirewallStatelessRule => (is => 'ro', isa => 'Paws::EC2::FirewallStatelessRule', request_name => 'firewallStatelessRule', traits => ['NameInRequest']);
  has InboundHeader => (is => 'ro', isa => 'Paws::EC2::AnalysisPacketHeader', request_name => 'inboundHeader', traits => ['NameInRequest']);
  has OutboundHeader => (is => 'ro', isa => 'Paws::EC2::AnalysisPacketHeader', request_name => 'outboundHeader', traits => ['NameInRequest']);
  has RouteTableRoute => (is => 'ro', isa => 'Paws::EC2::AnalysisRouteTableRoute', request_name => 'routeTableRoute', traits => ['NameInRequest']);
  has SecurityGroupRule => (is => 'ro', isa => 'Paws::EC2::AnalysisSecurityGroupRule', request_name => 'securityGroupRule', traits => ['NameInRequest']);
  has SequenceNumber => (is => 'ro', isa => 'Int', request_name => 'sequenceNumber', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has SourceVpc => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'sourceVpc', traits => ['NameInRequest']);
  has Subnet => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'subnet', traits => ['NameInRequest']);
  has TransitGateway => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'transitGateway', traits => ['NameInRequest']);
  has TransitGatewayRouteTableRoute => (is => 'ro', isa => 'Paws::EC2::TransitGatewayRouteTableRoute', request_name => 'transitGatewayRouteTableRoute', traits => ['NameInRequest']);
  has Vpc => (is => 'ro', isa => 'Paws::EC2::AnalysisComponent', request_name => 'vpc', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PathComponent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PathComponent object:

  $service_obj->Method(Att1 => { AclRule => $value, ..., Vpc => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PathComponent object:

  $result = $service_obj->Method(...);
  $result->Att1->AclRule

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AclRule => L<Paws::EC2::AnalysisAclRule>

The network ACL rule.


=head2 AdditionalDetails => ArrayRef[L<Paws::EC2::AdditionalDetail>]

The additional details.


=head2 AttachedTo => L<Paws::EC2::AnalysisComponent>

The resource to which the path component is attached.


=head2 Component => L<Paws::EC2::AnalysisComponent>

The component.


=head2 DestinationVpc => L<Paws::EC2::AnalysisComponent>

The destination VPC.


=head2 ElasticLoadBalancerListener => L<Paws::EC2::AnalysisComponent>

The load balancer listener.


=head2 Explanations => ArrayRef[L<Paws::EC2::Explanation>]

The explanation codes.


=head2 FirewallStatefulRule => L<Paws::EC2::FirewallStatefulRule>

The Network Firewall stateful rule.


=head2 FirewallStatelessRule => L<Paws::EC2::FirewallStatelessRule>

The Network Firewall stateless rule.


=head2 InboundHeader => L<Paws::EC2::AnalysisPacketHeader>

The inbound header.


=head2 OutboundHeader => L<Paws::EC2::AnalysisPacketHeader>

The outbound header.


=head2 RouteTableRoute => L<Paws::EC2::AnalysisRouteTableRoute>

The route table route.


=head2 SecurityGroupRule => L<Paws::EC2::AnalysisSecurityGroupRule>

The security group rule.


=head2 SequenceNumber => Int

The sequence number.


=head2 ServiceName => Str

The name of the VPC endpoint service.


=head2 SourceVpc => L<Paws::EC2::AnalysisComponent>

The source VPC.


=head2 Subnet => L<Paws::EC2::AnalysisComponent>

The subnet.


=head2 TransitGateway => L<Paws::EC2::AnalysisComponent>

The transit gateway.


=head2 TransitGatewayRouteTableRoute => L<Paws::EC2::TransitGatewayRouteTableRoute>

The route in a transit gateway route table.


=head2 Vpc => L<Paws::EC2::AnalysisComponent>

The component VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
