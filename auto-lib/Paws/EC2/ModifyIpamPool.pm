
package Paws::EC2::ModifyIpamPool;
  use Moose;
  has AddAllocationResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RequestIpamResourceTag]', traits => ['NameInRequest'], request_name => 'AddAllocationResourceTag' );
  has AllocationDefaultNetmaskLength => (is => 'ro', isa => 'Int');
  has AllocationMaxNetmaskLength => (is => 'ro', isa => 'Int');
  has AllocationMinNetmaskLength => (is => 'ro', isa => 'Int');
  has AutoImport => (is => 'ro', isa => 'Bool');
  has ClearAllocationDefaultNetmaskLength => (is => 'ro', isa => 'Bool');
  has Description => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamPoolId => (is => 'ro', isa => 'Str', required => 1);
  has RemoveAllocationResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::RequestIpamResourceTag]', traits => ['NameInRequest'], request_name => 'RemoveAllocationResourceTag' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyIpamPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyIpamPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyIpamPool - Arguments for method ModifyIpamPool on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyIpamPool on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyIpamPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyIpamPool.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyIpamPoolResult = $ec2->ModifyIpamPool(
      IpamPoolId                => 'MyIpamPoolId',
      AddAllocationResourceTags => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      AllocationDefaultNetmaskLength      => 1,             # OPTIONAL
      AllocationMaxNetmaskLength          => 1,             # OPTIONAL
      AllocationMinNetmaskLength          => 1,             # OPTIONAL
      AutoImport                          => 1,             # OPTIONAL
      ClearAllocationDefaultNetmaskLength => 1,             # OPTIONAL
      Description                         => 'MyString',    # OPTIONAL
      DryRun                              => 1,             # OPTIONAL
      RemoveAllocationResourceTags        => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $IpamPool = $ModifyIpamPoolResult->IpamPool;

    # Returns a L<Paws::EC2::ModifyIpamPoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyIpamPool>

=head1 ATTRIBUTES


=head2 AddAllocationResourceTags => ArrayRef[L<Paws::EC2::RequestIpamResourceTag>]

Add tag allocation rules to a pool. For more information about
allocation rules, see Create a top-level pool
(https://docs.aws.amazon.com/vpc/latest/ipam/create-top-ipam.html) in
the I<Amazon VPC IPAM User Guide>.



=head2 AllocationDefaultNetmaskLength => Int

The default netmask length for allocations added to this pool. If, for
example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16
here, new allocations will default to 10.0.0.0/16.



=head2 AllocationMaxNetmaskLength => Int

The maximum netmask length possible for CIDR allocations in this IPAM
pool to be compliant. Possible netmask lengths for IPv4 addresses are 0
- 32. Possible netmask lengths for IPv6 addresses are 0 - 128.The
maximum netmask length must be greater than the minimum netmask length.



=head2 AllocationMinNetmaskLength => Int

The minimum netmask length required for CIDR allocations in this IPAM
pool to be compliant. Possible netmask lengths for IPv4 addresses are 0
- 32. Possible netmask lengths for IPv6 addresses are 0 - 128. The
minimum netmask length must be less than the maximum netmask length.



=head2 AutoImport => Bool

If true, IPAM will continuously look for resources within the CIDR
range of this pool and automatically import them as allocations into
your IPAM. The CIDRs that will be allocated for these resources must
not already be allocated to other resources in order for the import to
succeed. IPAM will import a CIDR regardless of its compliance with the
pool's allocation rules, so a resource might be imported and
subsequently marked as noncompliant. If IPAM discovers multiple CIDRs
that overlap, IPAM will import the largest CIDR only. If IPAM discovers
multiple CIDRs with matching CIDRs, IPAM will randomly import one of
them only.

A locale must be set on the pool for this feature to work.



=head2 ClearAllocationDefaultNetmaskLength => Bool

Clear the default netmask length allocation rule for this pool.



=head2 Description => Str

The description of the IPAM pool you want to modify.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> IpamPoolId => Str

The ID of the IPAM pool you want to modify.



=head2 RemoveAllocationResourceTags => ArrayRef[L<Paws::EC2::RequestIpamResourceTag>]

Remove tag allocation rules from a pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyIpamPool in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

