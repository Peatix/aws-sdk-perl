
package Paws::EC2::GetInstanceTypesFromInstanceRequirements;
  use Moose;
  has ArchitectureTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ArchitectureType' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceRequirements => (is => 'ro', isa => 'Paws::EC2::InstanceRequirementsRequest', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VirtualizationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'VirtualizationType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceTypesFromInstanceRequirements');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetInstanceTypesFromInstanceRequirementsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetInstanceTypesFromInstanceRequirements - Arguments for method GetInstanceTypesFromInstanceRequirements on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceTypesFromInstanceRequirements on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetInstanceTypesFromInstanceRequirements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceTypesFromInstanceRequirements.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetInstanceTypesFromInstanceRequirementsResult =
      $ec2->GetInstanceTypesFromInstanceRequirements(
      ArchitectureTypes => [
        'i386', ...    # values: i386, x86_64, arm64, x86_64_mac, arm64_mac
      ],
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
        RequireHibernateSupport                   => 1,    # OPTIONAL
        SpotMaxPricePercentageOverLowestPrice     => 1,
        TotalLocalStorageGB                       => {
          Max => 1,                                        # OPTIONAL
          Min => 1,                                        # OPTIONAL
        },    # OPTIONAL
      },
      VirtualizationTypes => [
        'hvm', ...    # values: hvm, paravirtual
      ],
      DryRun     => 1,             # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $InstanceTypes =
      $GetInstanceTypesFromInstanceRequirementsResult->InstanceTypes;
    my $NextToken = $GetInstanceTypesFromInstanceRequirementsResult->NextToken;

# Returns a L<Paws::EC2::GetInstanceTypesFromInstanceRequirementsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetInstanceTypesFromInstanceRequirements>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArchitectureTypes => ArrayRef[Str|Undef]

The processor architecture type.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceRequirements => L<Paws::EC2::InstanceRequirementsRequest>

The attributes required for the instance types.



=head2 MaxResults => Int

The maximum number of items to return for this request. To get the next
page of items, make another request with the token returned in the
output. For more information, see Pagination
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Query-Requests.html#api-pagination).



=head2 NextToken => Str

The token returned from a previous paginated request. Pagination
continues from the end of the items returned by the previous request.



=head2 B<REQUIRED> VirtualizationTypes => ArrayRef[Str|Undef]

The virtualization type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceTypesFromInstanceRequirements in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

