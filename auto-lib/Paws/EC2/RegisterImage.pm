
package Paws::EC2::RegisterImage;
  use Moose;
  has Architecture => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'architecture' );
  has BillingProducts => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'BillingProduct' );
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BlockDeviceMapping]', traits => ['NameInRequest'], request_name => 'BlockDeviceMapping' );
  has BootMode => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has EnaSupport => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enaSupport' );
  has ImageLocation => (is => 'ro', isa => 'Str');
  has ImdsSupport => (is => 'ro', isa => 'Str');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kernelId' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ramdiskId' );
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rootDeviceName' );
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sriovNetSupport' );
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
  has TpmSupport => (is => 'ro', isa => 'Str');
  has UefiData => (is => 'ro', isa => 'Str');
  has VirtualizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'virtualizationType' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RegisterImageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RegisterImage - Arguments for method RegisterImage on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterImage on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RegisterImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterImage.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $RegisterImageResult = $ec2->RegisterImage(
      Name                => 'MyString',
      Architecture        => 'i386',                 # OPTIONAL
      BillingProducts     => [ 'MyString', ... ],    # OPTIONAL
      BlockDeviceMappings => [
        {
          DeviceName => 'MyString',
          Ebs        => {
            DeleteOnTermination      => 1,                 # OPTIONAL
            Encrypted                => 1,                 # OPTIONAL
            Iops                     => 1,                 # OPTIONAL
            KmsKeyId                 => 'MyString',
            OutpostArn               => 'MyString',
            SnapshotId               => 'MySnapshotId',    # OPTIONAL
            Throughput               => 1,                 # OPTIONAL
            VolumeInitializationRate => 1,                 # OPTIONAL
            VolumeSize               => 1,                 # OPTIONAL
            VolumeType               => 'standard'
            ,    # values: standard, io1, io2, gp2, sc1, st1, gp3; OPTIONAL
          },    # OPTIONAL
          NoDevice    => 'MyString',
          VirtualName => 'MyString',
        },
        ...
      ],    # OPTIONAL
      BootMode          => 'legacy-bios',    # OPTIONAL
      Description       => 'MyString',       # OPTIONAL
      DryRun            => 1,                # OPTIONAL
      EnaSupport        => 1,                # OPTIONAL
      ImageLocation     => 'MyString',       # OPTIONAL
      ImdsSupport       => 'v2.0',           # OPTIONAL
      KernelId          => 'MyKernelId',     # OPTIONAL
      RamdiskId         => 'MyRamdiskId',    # OPTIONAL
      RootDeviceName    => 'MyString',       # OPTIONAL
      SriovNetSupport   => 'MyString',       # OPTIONAL
      TagSpecifications => [
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
      TpmSupport         => 'v2.0',            # OPTIONAL
      UefiData           => 'MyStringType',    # OPTIONAL
      VirtualizationType => 'MyString',        # OPTIONAL
    );

    # Results:
    my $ImageId = $RegisterImageResult->ImageId;

    # Returns a L<Paws::EC2::RegisterImageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RegisterImage>

=head1 ATTRIBUTES


=head2 Architecture => Str

The architecture of the AMI.

Default: For Amazon EBS-backed AMIs, C<i386>. For instance store-backed
AMIs, the architecture specified in the manifest file.

Valid values are: C<"i386">, C<"x86_64">, C<"arm64">, C<"x86_64_mac">, C<"arm64_mac">

=head2 BillingProducts => ArrayRef[Str|Undef]

The billing product codes. Your account must be authorized to specify
billing product codes.

If your account is not authorized to specify billing product codes, you
can publish AMIs that include billable software and list them on the
Amazon Web Services Marketplace. You must first register as a seller on
the Amazon Web Services Marketplace. For more information, see Getting
started as a seller
(https://docs.aws.amazon.com/marketplace/latest/userguide/user-guide-for-sellers.html)
and AMI-based products
(https://docs.aws.amazon.com/marketplace/latest/userguide/ami-products.html)
in the I<Amazon Web Services Marketplace Seller Guide>.



=head2 BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>]

The block device mapping entries.

If you specify an Amazon EBS volume using the ID of an Amazon EBS
snapshot, you can't specify the encryption state of the volume.

If you create an AMI on an Outpost, then all backing snapshots must be
on the same Outpost or in the Region of that Outpost. AMIs on an
Outpost that include local snapshots can be used to launch instances on
the same Outpost only. For more information, Amazon EBS local snapshots
on Outposts
(https://docs.aws.amazon.com/ebs/latest/userguide/snapshots-outposts.html#ami)
in the I<Amazon EBS User Guide>.



=head2 BootMode => Str

The boot mode of the AMI. A value of C<uefi-preferred> indicates that
the AMI supports both UEFI and Legacy BIOS.

The operating system contained in the AMI must be configured to support
the specified boot mode.

For more information, see Boot modes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in
the I<Amazon EC2 User Guide>.

Valid values are: C<"legacy-bios">, C<"uefi">, C<"uefi-preferred">

=head2 Description => Str

A description for your AMI.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EnaSupport => Bool

Set to C<true> to enable enhanced networking with ENA for the AMI and
any instances that you launch from the AMI.

This option is supported only for HVM AMIs. Specifying this option with
a PV AMI can make instances launched from the AMI unreachable.



=head2 ImageLocation => Str

The full path to your AMI manifest in Amazon S3 storage. The specified
bucket must have the C<aws-exec-read> canned access control list (ACL)
to ensure that it can be accessed by Amazon EC2. For more information,
see Canned ACLs
(https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl)
in the I<Amazon S3 Service Developer Guide>.



=head2 ImdsSupport => Str

Set to C<v2.0> to indicate that IMDSv2 is specified in the AMI.
Instances launched from this AMI will have C<HttpTokens> automatically
set to C<required> so that, by default, the instance requires that
IMDSv2 is used when requesting instance metadata. In addition,
C<HttpPutResponseHopLimit> is set to C<2>. For more information, see
Configure the AMI
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/configuring-IMDS-new-instances.html#configure-IMDS-new-instances-ami-configuration)
in the I<Amazon EC2 User Guide>.

If you set the value to C<v2.0>, make sure that your AMI software can
support IMDSv2.

Valid values are: C<"v2.0">

=head2 KernelId => Str

The ID of the kernel.



=head2 B<REQUIRED> Name => Str

A name for your AMI.

Constraints: 3-128 alphanumeric characters, parentheses (()), square
brackets ([]), spaces ( ), periods (.), slashes (/), dashes (-), single
quotes ('), at-signs (@), or underscores(_)



=head2 RamdiskId => Str

The ID of the RAM disk.



=head2 RootDeviceName => Str

The device name of the root device volume (for example, C</dev/sda1>).



=head2 SriovNetSupport => Str

Set to C<simple> to enable enhanced networking with the Intel 82599
Virtual Function interface for the AMI and any instances that you
launch from the AMI.

There is no way to disable C<sriovNetSupport> at this time.

This option is supported only for HVM AMIs. Specifying this option with
a PV AMI can make instances launched from the AMI unreachable.



=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the AMI.

To tag the AMI, the value for C<ResourceType> must be C<image>. If you
specify another value for C<ResourceType>, the request fails.

To tag an AMI after it has been registered, see CreateTags
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_CreateTags.html).



=head2 TpmSupport => Str

Set to C<v2.0> to enable Trusted Platform Module (TPM) support. For
more information, see NitroTPM
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/nitrotpm.html) in
the I<Amazon EC2 User Guide>.

Valid values are: C<"v2.0">

=head2 UefiData => Str

Base64 representation of the non-volatile UEFI variable store. To
retrieve the UEFI data, use the GetInstanceUefiData
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceUefiData)
command. You can inspect and modify the UEFI data by using the
python-uefivars tool (https://github.com/awslabs/python-uefivars) on
GitHub. For more information, see UEFI Secure Boot
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/uefi-secure-boot.html)
in the I<Amazon EC2 User Guide>.



=head2 VirtualizationType => Str

The type of virtualization (C<hvm> | C<paravirtual>).

Default: C<paravirtual>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterImage in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

