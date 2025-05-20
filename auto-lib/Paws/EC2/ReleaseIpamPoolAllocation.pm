
package Paws::EC2::ReleaseIpamPoolAllocation;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamPoolAllocationId => (is => 'ro', isa => 'Str', required => 1);
  has IpamPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReleaseIpamPoolAllocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ReleaseIpamPoolAllocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReleaseIpamPoolAllocation - Arguments for method ReleaseIpamPoolAllocation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReleaseIpamPoolAllocation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ReleaseIpamPoolAllocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReleaseIpamPoolAllocation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ReleaseIpamPoolAllocationResult = $ec2->ReleaseIpamPoolAllocation(
      Cidr                 => 'MyString',
      IpamPoolAllocationId => 'MyIpamPoolAllocationId',
      IpamPoolId           => 'MyIpamPoolId',
      DryRun               => 1,                          # OPTIONAL
    );

    # Results:
    my $Success = $ReleaseIpamPoolAllocationResult->Success;

    # Returns a L<Paws::EC2::ReleaseIpamPoolAllocationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ReleaseIpamPoolAllocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

The CIDR of the allocation you want to release.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> IpamPoolAllocationId => Str

The ID of the allocation.



=head2 B<REQUIRED> IpamPoolId => Str

The ID of the IPAM pool which contains the allocation you want to
release.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReleaseIpamPoolAllocation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

