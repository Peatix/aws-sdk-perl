
package Paws::EC2::GetSpotPlacementScores;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceRequirementsWithMetadata => (is => 'ro', isa => 'Paws::EC2::InstanceRequirementsWithMetadataRequest');
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceType' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RegionNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'RegionName' );
  has SingleAvailabilityZone => (is => 'ro', isa => 'Bool');
  has TargetCapacity => (is => 'ro', isa => 'Int', required => 1);
  has TargetCapacityUnitType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSpotPlacementScores');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetSpotPlacementScoresResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetSpotPlacementScores - Arguments for method GetSpotPlacementScores on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSpotPlacementScores on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetSpotPlacementScores.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSpotPlacementScores.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetSpotPlacementScoresResult = $ec2->GetSpotPlacementScores(
      TargetCapacity                   => 1,
      DryRun                           => 1,    # OPTIONAL
      InstanceRequirementsWithMetadata => {
        ArchitectureTypes => [
          'i386', ...    # values: i386, x86_64, arm64, x86_64_mac, arm64_mac
        ],    # max: 3; OPTIONAL
        InstanceRequirements => {
          MemoryMiB => {
            Min => 1,
            Max => 1,
          },
          VCpuCount => {
            Min => 1,
            Max => 1,
          },
          AcceleratorCount => {
            Max => 1,
            Min => 1,
          },    # OPTIONAL
          AcceleratorManufacturers => [
            'amazon-web-services',
            ...    # values: amazon-web-services, amd, nvidia, xilinx, habana
          ],    # OPTIONAL
          AcceleratorNames => [
            'a100',
            ... # values: a100, inferentia, k520, k80, m60, radeon-pro-v520, t4, vu9p, v100, a10g, h100, t4g
          ],    # OPTIONAL
          AcceleratorTotalMemoryMiB => {
            Max => 1,
            Min => 1,
          },    # OPTIONAL
          AcceleratorTypes => [
            'gpu', ...    # values: gpu, fpga, inference
          ],    # OPTIONAL
          AllowedInstanceTypes => [
            'MyAllowedInstanceType', ...    # min: 1, max: 30
          ],    # max: 400; OPTIONAL
          BareMetal =>
            'included',    # values: included, required, excluded; OPTIONAL
          BaselineEbsBandwidthMbps => {
            Max => 1,
            Min => 1,
          },               # OPTIONAL
          BaselinePerformanceFactors => {
            Cpu => {
              References => [
                {
                  InstanceFamily => 'MyString',    # OPTIONAL
                },
                ...
              ],    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          BurstablePerformance =>
            'included',    # values: included, required, excluded; OPTIONAL
          CpuManufacturers => [
            'intel', ...    # values: intel, amd, amazon-web-services, apple
          ],    # OPTIONAL
          ExcludedInstanceTypes => [
            'MyExcludedInstanceType', ...    # min: 1, max: 30
          ],    # max: 400; OPTIONAL
          InstanceGenerations => [
            'current', ...    # values: current, previous
          ],    # OPTIONAL
          LocalStorage =>
            'included',    # values: included, required, excluded; OPTIONAL
          LocalStorageTypes => [
            'hdd', ...     # values: hdd, ssd
          ],    # OPTIONAL
          MaxSpotPriceAsPercentageOfOptimalOnDemandPrice => 1,
          MemoryGiBPerVCpu                               => {
            Max => 1,    # OPTIONAL
            Min => 1,    # OPTIONAL
          },    # OPTIONAL
          NetworkBandwidthGbps => {
            Max => 1,    # OPTIONAL
            Min => 1,    # OPTIONAL
          },    # OPTIONAL
          NetworkInterfaceCount => {
            Max => 1,
            Min => 1,
          },    # OPTIONAL
          OnDemandMaxPricePercentageOverLowestPrice => 1,
          RequireHibernateSupport                   => 1,
          SpotMaxPricePercentageOverLowestPrice     => 1,
          TotalLocalStorageGB                       => {
            Max => 1,    # OPTIONAL
            Min => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        VirtualizationTypes => [
          'hvm', ...    # values: hvm, paravirtual
        ],    # max: 2; OPTIONAL
      },    # OPTIONAL
      InstanceTypes => [
        'MyString', ...    # OPTIONAL
      ],    # OPTIONAL
      MaxResults  => 1,             # OPTIONAL
      NextToken   => 'MyString',    # OPTIONAL
      RegionNames => [
        'MyString', ...             # OPTIONAL
      ],    # OPTIONAL
      SingleAvailabilityZone => 1,         # OPTIONAL
      TargetCapacityUnitType => 'vcpu',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetSpotPlacementScoresResult->NextToken;
    my $SpotPlacementScores =
      $GetSpotPlacementScoresResult->SpotPlacementScores;

    # Returns a L<Paws::EC2::GetSpotPlacementScoresResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetSpotPlacementScores>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InstanceRequirementsWithMetadata => L<Paws::EC2::InstanceRequirementsWithMetadataRequest>

The attributes for the instance types. When you specify instance
attributes, Amazon EC2 will identify instance types with those
attributes.

If you specify C<InstanceRequirementsWithMetadata>, you can't specify
C<InstanceTypes>.



=head2 InstanceTypes => ArrayRef[Str|Undef]

The instance types. We recommend that you specify at least three
instance types. If you specify one or two instance types, or specify
variations of a single instance type (for example, an C<m3.xlarge> with
and without instance storage), the returned placement score will always
be low.

If you specify C<InstanceTypes>, you can't specify
C<InstanceRequirementsWithMetadata>.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 RegionNames => ArrayRef[Str|Undef]

The Regions used to narrow down the list of Regions to be scored. Enter
the Region code, for example, C<us-east-1>.



=head2 SingleAvailabilityZone => Bool

Specify C<true> so that the response returns a list of scored
Availability Zones. Otherwise, the response returns a list of scored
Regions.

A list of scored Availability Zones is useful if you want to launch all
of your Spot capacity into a single Availability Zone.



=head2 B<REQUIRED> TargetCapacity => Int

The target capacity.



=head2 TargetCapacityUnitType => Str

The unit for the target capacity.

Valid values are: C<"vcpu">, C<"memory-mib">, C<"units">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSpotPlacementScores in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

