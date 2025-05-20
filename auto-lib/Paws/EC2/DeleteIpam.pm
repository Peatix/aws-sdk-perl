
package Paws::EC2::DeleteIpam;
  use Moose;
  has Cascade => (is => 'ro', isa => 'Bool');
  has DryRun => (is => 'ro', isa => 'Bool');
  has IpamId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIpam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeleteIpamResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteIpam - Arguments for method DeleteIpam on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIpam on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteIpam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIpam.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeleteIpamResult = $ec2->DeleteIpam(
      IpamId  => 'MyIpamId',
      Cascade => 1,            # OPTIONAL
      DryRun  => 1,            # OPTIONAL
    );

    # Results:
    my $Ipam = $DeleteIpamResult->Ipam;

    # Returns a L<Paws::EC2::DeleteIpamResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteIpam>

=head1 ATTRIBUTES


=head2 Cascade => Bool

Enables you to quickly delete an IPAM, private scopes, pools in private
scopes, and any allocations in the pools in private scopes. You cannot
delete the IPAM with this option if there is a pool in your public
scope. If you use this option, IPAM does the following:

=over

=item *

Deallocates any CIDRs allocated to VPC resources (such as VPCs) in
pools in private scopes.

No VPC resources are deleted as a result of enabling this option. The
CIDR associated with the resource will no longer be allocated from an
IPAM pool, but the CIDR itself will remain unchanged.

=item *

Deprovisions all IPv4 CIDRs provisioned to IPAM pools in private
scopes.

=item *

Deletes all IPAM pools in private scopes.

=item *

Deletes all non-default private scopes in the IPAM.

=item *

Deletes the default public and private scopes and the IPAM.

=back




=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> IpamId => Str

The ID of the IPAM to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIpam in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

