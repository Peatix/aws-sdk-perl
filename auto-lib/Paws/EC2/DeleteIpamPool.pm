
package Paws::EC2::DeleteIpamPool;
  use Moose;
  has Cascade => (is => 'ro', isa => 'Bool');
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIpamPool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeleteIpamPoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteIpamPool - Arguments for method DeleteIpamPool on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIpamPool on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteIpamPool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIpamPool.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeleteIpamPoolResult = $ec2->DeleteIpamPool(
      IpamPoolId => 'MyIpamPoolId',
      Cascade    => 1,                # OPTIONAL
      DryRun     => 1,                # OPTIONAL
    );

    # Results:
    my $IpamPool = $DeleteIpamPoolResult->IpamPool;

    # Returns a L<Paws::EC2::DeleteIpamPoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteIpamPool>

=head1 ATTRIBUTES


=head2 Cascade => Bool

Enables you to quickly delete an IPAM pool and all resources within
that pool, including provisioned CIDRs, allocations, and other pools.

You can only use this option to delete pools in the private scope or
pools in the public scope with a source resource. A source resource is
a resource used to provision CIDRs to a resource planning pool.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> IpamPoolId => Str

The ID of the pool to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIpamPool in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

