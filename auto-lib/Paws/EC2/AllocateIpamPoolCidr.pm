
package Paws::EC2::AllocateIpamPoolCidr;
  use Moose;
  has AllowedCidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AllowedCidr' );
  has Cidr => (is => 'ro', isa => 'Str');
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisallowedCidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'DisallowedCidr' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamPoolId => (is => 'ro', isa => 'Str', required => 1);
  has NetmaskLength => (is => 'ro', isa => 'Int');
  has PreviewNextCidr => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AllocateIpamPoolCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AllocateIpamPoolCidrResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AllocateIpamPoolCidr - Arguments for method AllocateIpamPoolCidr on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AllocateIpamPoolCidr on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method AllocateIpamPoolCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AllocateIpamPoolCidr.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $AllocateIpamPoolCidrResult = $ec2->AllocateIpamPoolCidr(
      IpamPoolId      => 'MyIpamPoolId',
      AllowedCidrs    => [ 'MyString', ... ],    # OPTIONAL
      Cidr            => 'MyString',             # OPTIONAL
      ClientToken     => 'MyString',             # OPTIONAL
      Description     => 'MyString',             # OPTIONAL
      DisallowedCidrs => [ 'MyString', ... ],    # OPTIONAL
      DryRun          => 1,                      # OPTIONAL
      NetmaskLength   => 1,                      # OPTIONAL
      PreviewNextCidr => 1,                      # OPTIONAL
    );

    # Results:
    my $IpamPoolAllocation = $AllocateIpamPoolCidrResult->IpamPoolAllocation;

    # Returns a L<Paws::EC2::AllocateIpamPoolCidrResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/AllocateIpamPoolCidr>

=head1 ATTRIBUTES


=head2 AllowedCidrs => ArrayRef[Str|Undef]

Include a particular CIDR range that can be returned by the pool.
Allowed CIDRs are only allowed if using netmask length for allocation.



=head2 Cidr => Str

The CIDR you would like to allocate from the IPAM pool. Note the
following:

=over

=item *

If there is no DefaultNetmaskLength allocation rule set on the pool,
you must specify either the NetmaskLength or the CIDR.

=item *

If the DefaultNetmaskLength allocation rule is set on the pool, you can
specify either the NetmaskLength or the CIDR and the
DefaultNetmaskLength allocation rule will be ignored.

=back

Possible values: Any available IPv4 or IPv6 CIDR.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensuring
idempotency
(https://docs.aws.amazon.com/ec2/latest/devguide/ec2-api-idempotency.html).



=head2 Description => Str

A description for the allocation.



=head2 DisallowedCidrs => ArrayRef[Str|Undef]

Exclude a particular CIDR range from being returned by the pool.
Disallowed CIDRs are only allowed if using netmask length for
allocation.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> IpamPoolId => Str

The ID of the IPAM pool from which you would like to allocate a CIDR.



=head2 NetmaskLength => Int

The netmask length of the CIDR you would like to allocate from the IPAM
pool. Note the following:

=over

=item *

If there is no DefaultNetmaskLength allocation rule set on the pool,
you must specify either the NetmaskLength or the CIDR.

=item *

If the DefaultNetmaskLength allocation rule is set on the pool, you can
specify either the NetmaskLength or the CIDR and the
DefaultNetmaskLength allocation rule will be ignored.

=back

Possible netmask lengths for IPv4 addresses are 0 - 32. Possible
netmask lengths for IPv6 addresses are 0 - 128.



=head2 PreviewNextCidr => Bool

A preview of the next available CIDR in a pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AllocateIpamPoolCidr in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

