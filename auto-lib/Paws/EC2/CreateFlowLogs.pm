
package Paws::EC2::CreateFlowLogs;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeliverCrossAccountRole => (is => 'ro', isa => 'Str');
  has DeliverLogsPermissionArn => (is => 'ro', isa => 'Str');
  has DestinationOptions => (is => 'ro', isa => 'Paws::EC2::DestinationOptionsRequest');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LogDestination => (is => 'ro', isa => 'Str');
  has LogDestinationType => (is => 'ro', isa => 'Str');
  has LogFormat => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has MaxAggregationInterval => (is => 'ro', isa => 'Int');
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ResourceId' , required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TrafficType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlowLogs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateFlowLogsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFlowLogs - Arguments for method CreateFlowLogs on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlowLogs on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateFlowLogs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlowLogs.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateFlowLogsResult = $ec2->CreateFlowLogs(
      ResourceIds              => [ 'MyFlowLogResourceId', ... ],
      ResourceType             => 'VPC',
      ClientToken              => 'MyString',                       # OPTIONAL
      DeliverCrossAccountRole  => 'MyString',                       # OPTIONAL
      DeliverLogsPermissionArn => 'MyString',                       # OPTIONAL
      DestinationOptions       => {
        FileFormat => 'plain-text',    # values: plain-text, parquet; OPTIONAL
        HiveCompatiblePartitions => 1,    # OPTIONAL
        PerHourPartition         => 1,    # OPTIONAL
      },    # OPTIONAL
      DryRun                 => 1,                     # OPTIONAL
      LogDestination         => 'MyString',            # OPTIONAL
      LogDestinationType     => 'cloud-watch-logs',    # OPTIONAL
      LogFormat              => 'MyString',            # OPTIONAL
      LogGroupName           => 'MyString',            # OPTIONAL
      MaxAggregationInterval => 1,                     # OPTIONAL
      TagSpecifications      => [
        {
          ResourceType => 'capacity-reservation'
          , # values: capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, mac-modification-task; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TrafficType => 'ACCEPT',    # OPTIONAL
    );

    # Results:
    my $ClientToken  = $CreateFlowLogsResult->ClientToken;
    my $FlowLogIds   = $CreateFlowLogsResult->FlowLogIds;
    my $Unsuccessful = $CreateFlowLogsResult->Unsuccessful;

    # Returns a L<Paws::EC2::CreateFlowLogsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateFlowLogs>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to ensure
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 DeliverCrossAccountRole => Str

The ARN of the IAM role that allows Amazon EC2 to publish flow logs
across accounts.



=head2 DeliverLogsPermissionArn => Str

The ARN of the IAM role that allows Amazon EC2 to publish flow logs to
the log destination.

This parameter is required if the destination type is
C<cloud-watch-logs>, or if the destination type is
C<kinesis-data-firehose> and the delivery stream and the resources to
monitor are in different accounts.



=head2 DestinationOptions => L<Paws::EC2::DestinationOptionsRequest>

The destination options.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LogDestination => Str

The destination for the flow log data. The meaning of this parameter
depends on the destination type.

=over

=item *

If the destination type is C<cloud-watch-logs>, specify the ARN of a
CloudWatch Logs log group. For example:

arn:aws:logs:I<region>:I<account_id>:log-group:I<my_group>

Alternatively, use the C<LogGroupName> parameter.

=item *

If the destination type is C<s3>, specify the ARN of an S3 bucket. For
example:

arn:aws:s3:::I<my_bucket>/I<my_subfolder>/

The subfolder is optional. Note that you can't use C<AWSLogs> as a
subfolder name.

=item *

If the destination type is C<kinesis-data-firehose>, specify the ARN of
a Kinesis Data Firehose delivery stream. For example:

arn:aws:firehose:I<region>:I<account_id>:deliverystream:I<my_stream>

=back




=head2 LogDestinationType => Str

The type of destination for the flow log data.

Default: C<cloud-watch-logs>

Valid values are: C<"cloud-watch-logs">, C<"s3">, C<"kinesis-data-firehose">

=head2 LogFormat => Str

The fields to include in the flow log record. List the fields in the
order in which they should appear. If you omit this parameter, the flow
log is created using the default format. If you specify this parameter,
you must include at least one field. For more information about the
available fields, see Flow log records
(https://docs.aws.amazon.com/vpc/latest/userguide/flow-log-records.html)
in the I<Amazon VPC User Guide> or Transit Gateway Flow Log records
(https://docs.aws.amazon.com/vpc/latest/tgw/tgw-flow-logs.html#flow-log-records)
in the I<Amazon Web Services Transit Gateway Guide>.

Specify the fields using the C<${field-id}> format, separated by
spaces.



=head2 LogGroupName => Str

The name of a new or existing CloudWatch Logs log group where Amazon
EC2 publishes your flow logs.

This parameter is valid only if the destination type is
C<cloud-watch-logs>.



=head2 MaxAggregationInterval => Int

The maximum interval of time during which a flow of packets is captured
and aggregated into a flow log record. The possible values are 60
seconds (1 minute) or 600 seconds (10 minutes). This parameter must be
60 seconds for transit gateway resource types.

When a network interface is attached to a Nitro-based instance
(https://docs.aws.amazon.com/ec2/latest/instancetypes/ec2-nitro-instances.html),
the aggregation interval is always 60 seconds or less, regardless of
the value that you specify.

Default: 600



=head2 B<REQUIRED> ResourceIds => ArrayRef[Str|Undef]

The IDs of the resources to monitor. For example, if the resource type
is C<VPC>, specify the IDs of the VPCs.

Constraints: Maximum of 25 for transit gateway resource types. Maximum
of 1000 for the other resource types.



=head2 B<REQUIRED> ResourceType => Str

The type of resource to monitor.

Valid values are: C<"VPC">, C<"Subnet">, C<"NetworkInterface">, C<"TransitGateway">, C<"TransitGatewayAttachment">

=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the flow logs.



=head2 TrafficType => Str

The type of traffic to monitor (accepted traffic, rejected traffic, or
all traffic). This parameter is not supported for transit gateway
resource types. It is required for the other resource types.

Valid values are: C<"ACCEPT">, C<"REJECT">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlowLogs in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

