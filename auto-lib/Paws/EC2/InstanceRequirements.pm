package Paws::EC2::InstanceRequirements;
  use Moose;
  has AcceleratorCount => (is => 'ro', isa => 'Paws::EC2::AcceleratorCount', request_name => 'acceleratorCount', traits => ['NameInRequest']);
  has AcceleratorManufacturers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'acceleratorManufacturerSet', traits => ['NameInRequest']);
  has AcceleratorNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'acceleratorNameSet', traits => ['NameInRequest']);
  has AcceleratorTotalMemoryMiB => (is => 'ro', isa => 'Paws::EC2::AcceleratorTotalMemoryMiB', request_name => 'acceleratorTotalMemoryMiB', traits => ['NameInRequest']);
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'acceleratorTypeSet', traits => ['NameInRequest']);
  has AllowedInstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'allowedInstanceTypeSet', traits => ['NameInRequest']);
  has BareMetal => (is => 'ro', isa => 'Str', request_name => 'bareMetal', traits => ['NameInRequest']);
  has BaselineEbsBandwidthMbps => (is => 'ro', isa => 'Paws::EC2::BaselineEbsBandwidthMbps', request_name => 'baselineEbsBandwidthMbps', traits => ['NameInRequest']);
  has BaselinePerformanceFactors => (is => 'ro', isa => 'Paws::EC2::BaselinePerformanceFactors', request_name => 'baselinePerformanceFactors', traits => ['NameInRequest']);
  has BurstablePerformance => (is => 'ro', isa => 'Str', request_name => 'burstablePerformance', traits => ['NameInRequest']);
  has CpuManufacturers => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'cpuManufacturerSet', traits => ['NameInRequest']);
  has ExcludedInstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'excludedInstanceTypeSet', traits => ['NameInRequest']);
  has InstanceGenerations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'instanceGenerationSet', traits => ['NameInRequest']);
  has LocalStorage => (is => 'ro', isa => 'Str', request_name => 'localStorage', traits => ['NameInRequest']);
  has LocalStorageTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'localStorageTypeSet', traits => ['NameInRequest']);
  has MaxSpotPriceAsPercentageOfOptimalOnDemandPrice => (is => 'ro', isa => 'Int', request_name => 'maxSpotPriceAsPercentageOfOptimalOnDemandPrice', traits => ['NameInRequest']);
  has MemoryGiBPerVCpu => (is => 'ro', isa => 'Paws::EC2::MemoryGiBPerVCpu', request_name => 'memoryGiBPerVCpu', traits => ['NameInRequest']);
  has MemoryMiB => (is => 'ro', isa => 'Paws::EC2::MemoryMiB', request_name => 'memoryMiB', traits => ['NameInRequest']);
  has NetworkBandwidthGbps => (is => 'ro', isa => 'Paws::EC2::NetworkBandwidthGbps', request_name => 'networkBandwidthGbps', traits => ['NameInRequest']);
  has NetworkInterfaceCount => (is => 'ro', isa => 'Paws::EC2::NetworkInterfaceCount', request_name => 'networkInterfaceCount', traits => ['NameInRequest']);
  has OnDemandMaxPricePercentageOverLowestPrice => (is => 'ro', isa => 'Int', request_name => 'onDemandMaxPricePercentageOverLowestPrice', traits => ['NameInRequest']);
  has RequireHibernateSupport => (is => 'ro', isa => 'Bool', request_name => 'requireHibernateSupport', traits => ['NameInRequest']);
  has SpotMaxPricePercentageOverLowestPrice => (is => 'ro', isa => 'Int', request_name => 'spotMaxPricePercentageOverLowestPrice', traits => ['NameInRequest']);
  has TotalLocalStorageGB => (is => 'ro', isa => 'Paws::EC2::TotalLocalStorageGB', request_name => 'totalLocalStorageGB', traits => ['NameInRequest']);
  has VCpuCount => (is => 'ro', isa => 'Paws::EC2::VCpuCountRange', request_name => 'vCpuCount', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceRequirements

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceRequirements object:

  $service_obj->Method(Att1 => { AcceleratorCount => $value, ..., VCpuCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceRequirements object:

  $result = $service_obj->Method(...);
  $result->Att1->AcceleratorCount

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AcceleratorCount => L<Paws::EC2::AcceleratorCount>

The minimum and maximum number of accelerators (GPUs, FPGAs, or Amazon
Web Services Inferentia chips) on an instance.

To exclude accelerator-enabled instance types, set C<Max> to C<0>.

Default: No minimum or maximum limits


=head2 AcceleratorManufacturers => ArrayRef[Str|Undef]

Indicates whether instance types must have accelerators by specific
manufacturers.

=over

=item *

For instance types with Amazon Web Services devices, specify
C<amazon-web-services>.

=item *

For instance types with AMD devices, specify C<amd>.

=item *

For instance types with Habana devices, specify C<habana>.

=item *

For instance types with NVIDIA devices, specify C<nvidia>.

=item *

For instance types with Xilinx devices, specify C<xilinx>.

=back

Default: Any manufacturer


=head2 AcceleratorNames => ArrayRef[Str|Undef]

The accelerators that must be on the instance type.

=over

=item *

For instance types with NVIDIA A10G GPUs, specify C<a10g>.

=item *

For instance types with NVIDIA A100 GPUs, specify C<a100>.

=item *

For instance types with NVIDIA H100 GPUs, specify C<h100>.

=item *

For instance types with Amazon Web Services Inferentia chips, specify
C<inferentia>.

=item *

For instance types with NVIDIA GRID K520 GPUs, specify C<k520>.

=item *

For instance types with NVIDIA K80 GPUs, specify C<k80>.

=item *

For instance types with NVIDIA M60 GPUs, specify C<m60>.

=item *

For instance types with AMD Radeon Pro V520 GPUs, specify
C<radeon-pro-v520>.

=item *

For instance types with NVIDIA T4 GPUs, specify C<t4>.

=item *

For instance types with NVIDIA T4G GPUs, specify C<t4g>.

=item *

For instance types with Xilinx VU9P FPGAs, specify C<vu9p>.

=item *

For instance types with NVIDIA V100 GPUs, specify C<v100>.

=back

Default: Any accelerator


=head2 AcceleratorTotalMemoryMiB => L<Paws::EC2::AcceleratorTotalMemoryMiB>

The minimum and maximum amount of total accelerator memory, in MiB.

Default: No minimum or maximum limits


=head2 AcceleratorTypes => ArrayRef[Str|Undef]

The accelerator types that must be on the instance type.

=over

=item *

For instance types with FPGA accelerators, specify C<fpga>.

=item *

For instance types with GPU accelerators, specify C<gpu>.

=item *

For instance types with Inference accelerators, specify C<inference>.

=back

Default: Any accelerator type


=head2 AllowedInstanceTypes => ArrayRef[Str|Undef]

The instance types to apply your specified attributes against. All
other instance types are ignored, even if they match your specified
attributes.

You can use strings with one or more wild cards, represented by an
asterisk (C<*>), to allow an instance type, size, or generation. The
following are examples: C<m5.8xlarge>, C<c5*.*>, C<m5a.*>, C<r*>,
C<*3*>.

For example, if you specify C<c5*>,Amazon EC2 will allow the entire C5
instance family, which includes all C5a and C5n instance types. If you
specify C<m5a.*>, Amazon EC2 will allow all the M5a instance types, but
not the M5n instance types.

If you specify C<AllowedInstanceTypes>, you can't specify
C<ExcludedInstanceTypes>.

Default: All instance types


=head2 BareMetal => Str

Indicates whether bare metal instance types must be included, excluded,
or required.

=over

=item *

To include bare metal instance types, specify C<included>.

=item *

To require only bare metal instance types, specify C<required>.

=item *

To exclude bare metal instance types, specify C<excluded>.

=back

Default: C<excluded>


=head2 BaselineEbsBandwidthMbps => L<Paws::EC2::BaselineEbsBandwidthMbps>

The minimum and maximum baseline bandwidth to Amazon EBS, in Mbps. For
more information, see Amazon EBSE<ndash>optimized instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-optimized.html)
in the I<Amazon EC2 User Guide>.

Default: No minimum or maximum limits


=head2 BaselinePerformanceFactors => L<Paws::EC2::BaselinePerformanceFactors>

The baseline performance to consider, using an instance family as a
baseline reference. The instance family establishes the lowest
acceptable level of performance. Amazon EC2 uses this baseline to guide
instance type selection, but there is no guarantee that the selected
instance types will always exceed the baseline for every application.
Currently, this parameter only supports CPU performance as a baseline
performance factor. For more information, see Performance protection
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-attribute-based-instance-type-selection.html#ec2fleet-abis-performance-protection)
in the I<Amazon EC2 User Guide>.


=head2 BurstablePerformance => Str

Indicates whether burstable performance T instance types are included,
excluded, or required. For more information, see Burstable performance
instances
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/burstable-performance-instances.html).

=over

=item *

To include burstable performance instance types, specify C<included>.

=item *

To require only burstable performance instance types, specify
C<required>.

=item *

To exclude burstable performance instance types, specify C<excluded>.

=back

Default: C<excluded>


=head2 CpuManufacturers => ArrayRef[Str|Undef]

The CPU manufacturers to include.

=over

=item *

For instance types with Intel CPUs, specify C<intel>.

=item *

For instance types with AMD CPUs, specify C<amd>.

=item *

For instance types with Amazon Web Services CPUs, specify
C<amazon-web-services>.

=item *

For instance types with Apple CPUs, specify C<apple>.

=back

Don't confuse the CPU manufacturer with the CPU architecture. Instances
will be launched with a compatible CPU architecture based on the Amazon
Machine Image (AMI) that you specify in your launch template.

Default: Any manufacturer


=head2 ExcludedInstanceTypes => ArrayRef[Str|Undef]

The instance types to exclude.

You can use strings with one or more wild cards, represented by an
asterisk (C<*>), to exclude an instance type, size, or generation. The
following are examples: C<m5.8xlarge>, C<c5*.*>, C<m5a.*>, C<r*>,
C<*3*>.

For example, if you specify C<c5*>,Amazon EC2 will exclude the entire
C5 instance family, which includes all C5a and C5n instance types. If
you specify C<m5a.*>, Amazon EC2 will exclude all the M5a instance
types, but not the M5n instance types.

If you specify C<ExcludedInstanceTypes>, you can't specify
C<AllowedInstanceTypes>.

Default: No excluded instance types


=head2 InstanceGenerations => ArrayRef[Str|Undef]

Indicates whether current or previous generation instance types are
included. The current generation instance types are recommended for
use. Current generation instance types are typically the latest two to
three generations in each instance family. For more information, see
Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.

For current generation instance types, specify C<current>.

For previous generation instance types, specify C<previous>.

Default: Current and previous generation instance types


=head2 LocalStorage => Str

Indicates whether instance types with instance store volumes are
included, excluded, or required. For more information, Amazon EC2
instance store
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/InstanceStorage.html)
in the I<Amazon EC2 User Guide>.

=over

=item *

To include instance types with instance store volumes, specify
C<included>.

=item *

To require only instance types with instance store volumes, specify
C<required>.

=item *

To exclude instance types with instance store volumes, specify
C<excluded>.

=back

Default: C<included>


=head2 LocalStorageTypes => ArrayRef[Str|Undef]

The type of local storage that is required.

=over

=item *

For instance types with hard disk drive (HDD) storage, specify C<hdd>.

=item *

For instance types with solid state drive (SSD) storage, specify
C<ssd>.

=back

Default: C<hdd> and C<ssd>


=head2 MaxSpotPriceAsPercentageOfOptimalOnDemandPrice => Int

[Price protection] The price protection threshold for Spot Instances,
as a percentage of an identified On-Demand price. The identified
On-Demand price is the price of the lowest priced current generation C,
M, or R instance type with your specified attributes. If no current
generation C, M, or R instance type matches your attributes, then the
identified price is from the lowest priced current generation instance
types, and failing that, from the lowest priced previous generation
instance types that match your attributes. When Amazon EC2 selects
instance types with your attributes, it will exclude instance types
whose price exceeds your specified threshold.

The parameter accepts an integer, which Amazon EC2 interprets as a
percentage.

If you set C<TargetCapacityUnitType> to C<vcpu> or C<memory-mib>, the
price protection threshold is based on the per vCPU or per memory price
instead of the per instance price.

Only one of C<SpotMaxPricePercentageOverLowestPrice> or
C<MaxSpotPriceAsPercentageOfOptimalOnDemandPrice> can be specified. If
you don't specify either, Amazon EC2 will automatically apply optimal
price protection to consistently select from a wide range of instance
types. To indicate no price protection threshold for Spot Instances,
meaning you want to consider all instance types that match your
attributes, include one of these parameters and specify a high value,
such as C<999999>.


=head2 MemoryGiBPerVCpu => L<Paws::EC2::MemoryGiBPerVCpu>

The minimum and maximum amount of memory per vCPU, in GiB.

Default: No minimum or maximum limits


=head2 MemoryMiB => L<Paws::EC2::MemoryMiB>

The minimum and maximum amount of memory, in MiB.


=head2 NetworkBandwidthGbps => L<Paws::EC2::NetworkBandwidthGbps>

The minimum and maximum amount of network bandwidth, in gigabits per
second (Gbps).

Default: No minimum or maximum limits


=head2 NetworkInterfaceCount => L<Paws::EC2::NetworkInterfaceCount>

The minimum and maximum number of network interfaces.

Default: No minimum or maximum limits


=head2 OnDemandMaxPricePercentageOverLowestPrice => Int

[Price protection] The price protection threshold for On-Demand
Instances, as a percentage higher than an identified On-Demand price.
The identified On-Demand price is the price of the lowest priced
current generation C, M, or R instance type with your specified
attributes. When Amazon EC2 selects instance types with your
attributes, it will exclude instance types whose price exceeds your
specified threshold.

The parameter accepts an integer, which Amazon EC2 interprets as a
percentage.

To turn off price protection, specify a high value, such as C<999999>.

This parameter is not supported for GetSpotPlacementScores
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html)
and GetInstanceTypesFromInstanceRequirements
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html).

If you set C<TargetCapacityUnitType> to C<vcpu> or C<memory-mib>, the
price protection threshold is applied based on the per-vCPU or
per-memory price instead of the per-instance price.

Default: C<20>


=head2 RequireHibernateSupport => Bool

Indicates whether instance types must support hibernation for On-Demand
Instances.

This parameter is not supported for GetSpotPlacementScores
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html).

Default: C<false>


=head2 SpotMaxPricePercentageOverLowestPrice => Int

[Price protection] The price protection threshold for Spot Instances,
as a percentage higher than an identified Spot price. The identified
Spot price is the Spot price of the lowest priced current generation C,
M, or R instance type with your specified attributes. If no current
generation C, M, or R instance type matches your attributes, then the
identified Spot price is from the lowest priced current generation
instance types, and failing that, from the lowest priced previous
generation instance types that match your attributes. When Amazon EC2
selects instance types with your attributes, it will exclude instance
types whose Spot price exceeds your specified threshold.

The parameter accepts an integer, which Amazon EC2 interprets as a
percentage.

If you set C<TargetCapacityUnitType> to C<vcpu> or C<memory-mib>, the
price protection threshold is applied based on the per-vCPU or
per-memory price instead of the per-instance price.

This parameter is not supported for GetSpotPlacementScores
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetSpotPlacementScores.html)
and GetInstanceTypesFromInstanceRequirements
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_GetInstanceTypesFromInstanceRequirements.html).

Only one of C<SpotMaxPricePercentageOverLowestPrice> or
C<MaxSpotPriceAsPercentageOfOptimalOnDemandPrice> can be specified. If
you don't specify either, Amazon EC2 will automatically apply optimal
price protection to consistently select from a wide range of instance
types. To indicate no price protection threshold for Spot Instances,
meaning you want to consider all instance types that match your
attributes, include one of these parameters and specify a high value,
such as C<999999>.

Default: C<100>


=head2 TotalLocalStorageGB => L<Paws::EC2::TotalLocalStorageGB>

The minimum and maximum amount of total local storage, in GB.

Default: No minimum or maximum limits


=head2 VCpuCount => L<Paws::EC2::VCpuCountRange>

The minimum and maximum number of vCPUs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
