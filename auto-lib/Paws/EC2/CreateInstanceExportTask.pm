
package Paws::EC2::CreateInstanceExportTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has ExportToS3Task => (is => 'ro', isa => 'Paws::EC2::ExportToS3TaskSpecification', traits => ['NameInRequest'], request_name => 'exportToS3' , required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceId' , required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TargetEnvironment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetEnvironment' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateInstanceExportTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateInstanceExportTask - Arguments for method CreateInstanceExportTask on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstanceExportTask on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateInstanceExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstanceExportTask.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateInstanceExportTaskResult = $ec2->CreateInstanceExportTask(
      ExportToS3Task => {
        ContainerFormat => 'ova',         # values: ova; OPTIONAL
        DiskImageFormat => 'VMDK',        # values: VMDK, RAW, VHD; OPTIONAL
        S3Bucket        => 'MyString',    # OPTIONAL
        S3Prefix        => 'MyString',    # OPTIONAL
      },
      InstanceId        => 'MyInstanceId',
      TargetEnvironment => 'citrix',
      Description       => 'MyString',       # OPTIONAL
      TagSpecifications => [
        {
          ResourceType => 'capacity-reservation'
          , # values: capacity-reservation, client-vpn-endpoint, customer-gateway, carrier-gateway, coip-pool, declarative-policies-report, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, instance-event-window, internet-gateway, ipam, ipam-pool, ipam-scope, ipv4pool-ec2, ipv6pool-ec2, key-pair, launch-template, local-gateway, local-gateway-route-table, local-gateway-virtual-interface, local-gateway-virtual-interface-group, local-gateway-route-table-vpc-association, local-gateway-route-table-virtual-interface-group-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, network-insights-access-scope, network-insights-access-scope-analysis, outpost-lag, placement-group, prefix-list, replace-root-volume-task, reserved-instances, route-table, security-group, security-group-rule, service-link-virtual-interface, snapshot, spot-fleet-request, spot-instances-request, subnet, subnet-cidr-reservation, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-policy-table, transit-gateway-route-table, transit-gateway-route-table-announcement, volume, vpc, vpc-endpoint, vpc-endpoint-connection, vpc-endpoint-service, vpc-endpoint-service-permission, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log, capacity-reservation-fleet, traffic-mirror-filter-rule, vpc-endpoint-connection-device-type, verified-access-instance, verified-access-group, verified-access-endpoint, verified-access-policy, verified-access-trust-provider, vpn-connection-device-type, vpc-block-public-access-exclusion, route-server, route-server-endpoint, route-server-peer, ipam-resource-discovery, ipam-resource-discovery-association, instance-connect-endpoint, verified-access-endpoint-target, ipam-external-resource-verification-token, mac-modification-task; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',    # OPTIONAL
              Value => 'MyString',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ExportTask = $CreateInstanceExportTaskResult->ExportTask;

    # Returns a L<Paws::EC2::CreateInstanceExportTaskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateInstanceExportTask>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the conversion task or the resource being exported.
The maximum length is 255 characters.



=head2 B<REQUIRED> ExportToS3Task => L<Paws::EC2::ExportToS3TaskSpecification>

The format and location for an export instance task.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the export instance task during creation.



=head2 B<REQUIRED> TargetEnvironment => Str

The target virtualization environment.

Valid values are: C<"citrix">, C<"vmware">, C<"microsoft">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstanceExportTask in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

