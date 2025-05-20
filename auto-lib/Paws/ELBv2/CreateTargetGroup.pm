
package Paws::ELBv2::CreateTargetGroup;
  use Moose;
  has HealthCheckEnabled => (is => 'ro', isa => 'Bool');
  has HealthCheckIntervalSeconds => (is => 'ro', isa => 'Int');
  has HealthCheckPath => (is => 'ro', isa => 'Str');
  has HealthCheckPort => (is => 'ro', isa => 'Str');
  has HealthCheckProtocol => (is => 'ro', isa => 'Str');
  has HealthCheckTimeoutSeconds => (is => 'ro', isa => 'Int');
  has HealthyThresholdCount => (is => 'ro', isa => 'Int');
  has IpAddressType => (is => 'ro', isa => 'Str');
  has Matcher => (is => 'ro', isa => 'Paws::ELBv2::Matcher');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int');
  has Protocol => (is => 'ro', isa => 'Str');
  has ProtocolVersion => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Tag]');
  has TargetType => (is => 'ro', isa => 'Str');
  has UnhealthyThresholdCount => (is => 'ro', isa => 'Int');
  has VpcId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTargetGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateTargetGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateTargetGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateTargetGroup - Arguments for method CreateTargetGroup on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTargetGroup on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method CreateTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTargetGroup.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
# To create a target group
# This example creates a target group that you can use to route traffic to
# targets using HTTP on port 80. This target group uses the default health check
# configuration.
    my $CreateTargetGroupOutput = $elasticloadbalancing->CreateTargetGroup(
      'Name'     => 'my-targets',
      'Port'     => 80,
      'Protocol' => 'HTTP',
      'VpcId'    => 'vpc-3ac0fb5f'
    );

    # Results:
    my $TargetGroups = $CreateTargetGroupOutput->TargetGroups;

    # Returns a L<Paws::ELBv2::CreateTargetGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateTargetGroup>

=head1 ATTRIBUTES


=head2 HealthCheckEnabled => Bool

Indicates whether health checks are enabled. If the target type is
C<lambda>, health checks are disabled by default but can be enabled. If
the target type is C<instance>, C<ip>, or C<alb>, health checks are
always enabled and can't be disabled.



=head2 HealthCheckIntervalSeconds => Int

The approximate amount of time, in seconds, between health checks of an
individual target. The range is 5-300. If the target group protocol is
TCP, TLS, UDP, TCP_UDP, HTTP or HTTPS, the default is 30 seconds. If
the target group protocol is GENEVE, the default is 10 seconds. If the
target type is C<lambda>, the default is 35 seconds.



=head2 HealthCheckPath => Str

[HTTP/HTTPS health checks] The destination for health checks on the
targets.

[HTTP1 or HTTP2 protocol version] The ping path. The default is /.

[GRPC protocol version] The path of a custom health check method with
the format /package.service/method. The default is /Amazon Web
Services.ALB/healthcheck.



=head2 HealthCheckPort => Str

The port the load balancer uses when performing health checks on
targets. If the protocol is HTTP, HTTPS, TCP, TLS, UDP, or TCP_UDP, the
default is C<traffic-port>, which is the port on which each target
receives traffic from the load balancer. If the protocol is GENEVE, the
default is port 80.



=head2 HealthCheckProtocol => Str

The protocol the load balancer uses when performing health checks on
targets. For Application Load Balancers, the default is HTTP. For
Network Load Balancers and Gateway Load Balancers, the default is TCP.
The TCP protocol is not supported for health checks if the protocol of
the target group is HTTP or HTTPS. The GENEVE, TLS, UDP, and TCP_UDP
protocols are not supported for health checks.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">, C<"TLS">, C<"UDP">, C<"TCP_UDP">, C<"GENEVE">

=head2 HealthCheckTimeoutSeconds => Int

The amount of time, in seconds, during which no response from a target
means a failed health check. The range is 2E<ndash>120 seconds. For
target groups with a protocol of HTTP, the default is 6 seconds. For
target groups with a protocol of TCP, TLS or HTTPS, the default is 10
seconds. For target groups with a protocol of GENEVE, the default is 5
seconds. If the target type is C<lambda>, the default is 30 seconds.



=head2 HealthyThresholdCount => Int

The number of consecutive health check successes required before
considering a target healthy. The range is 2-10. If the target group
protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 5.
For target groups with a protocol of GENEVE, the default is 5. If the
target type is C<lambda>, the default is 5.



=head2 IpAddressType => Str

The IP address type. The default value is C<ipv4>.

Valid values are: C<"ipv4">, C<"ipv6">

=head2 Matcher => L<Paws::ELBv2::Matcher>

[HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking
for a successful response from a target. For target groups with a
protocol of TCP, TCP_UDP, UDP or TLS the range is 200-599. For target
groups with a protocol of HTTP or HTTPS, the range is 200-499. For
target groups with a protocol of GENEVE, the range is 200-399.



=head2 B<REQUIRED> Name => Str

The name of the target group.

This name must be unique per region per account, can have a maximum of
32 characters, must contain only alphanumeric characters or hyphens,
and must not begin or end with a hyphen.



=head2 Port => Int

The port on which the targets receive traffic. This port is used unless
you specify a port override when registering the target. If the target
is a Lambda function, this parameter does not apply. If the protocol is
GENEVE, the supported port is 6081.



=head2 Protocol => Str

The protocol to use for routing traffic to the targets. For Application
Load Balancers, the supported protocols are HTTP and HTTPS. For Network
Load Balancers, the supported protocols are TCP, TLS, UDP, or TCP_UDP.
For Gateway Load Balancers, the supported protocol is GENEVE. A TCP_UDP
listener must be associated with a TCP_UDP target group. If the target
is a Lambda function, this parameter does not apply.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">, C<"TLS">, C<"UDP">, C<"TCP_UDP">, C<"GENEVE">

=head2 ProtocolVersion => Str

[HTTP/HTTPS protocol] The protocol version. Specify C<GRPC> to send
requests to targets using gRPC. Specify C<HTTP2> to send requests to
targets using HTTP/2. The default is C<HTTP1>, which sends requests to
targets using HTTP/1.1.



=head2 Tags => ArrayRef[L<Paws::ELBv2::Tag>]

The tags to assign to the target group.



=head2 TargetType => Str

The type of target that you must specify when registering targets with
this target group. You can't specify targets for a target group using
more than one target type.

=over

=item *

C<instance> - Register targets by instance ID. This is the default
value.

=item *

C<ip> - Register targets by IP address. You can specify IP addresses
from the subnets of the virtual private cloud (VPC) for the target
group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and
192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't
specify publicly routable IP addresses.

=item *

C<lambda> - Register a single Lambda function as a target.

=item *

C<alb> - Register a single Application Load Balancer as a target.

=back


Valid values are: C<"instance">, C<"ip">, C<"lambda">, C<"alb">

=head2 UnhealthyThresholdCount => Int

The number of consecutive health check failures required before
considering a target unhealthy. The range is 2-10. If the target group
protocol is TCP, TCP_UDP, UDP, TLS, HTTP or HTTPS, the default is 2.
For target groups with a protocol of GENEVE, the default is 2. If the
target type is C<lambda>, the default is 5.



=head2 VpcId => Str

The identifier of the virtual private cloud (VPC). If the target is a
Lambda function, this parameter does not apply. Otherwise, this
parameter is required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTargetGroup in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

