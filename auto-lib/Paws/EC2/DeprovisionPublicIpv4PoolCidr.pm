
package Paws::EC2::DeprovisionPublicIpv4PoolCidr;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeprovisionPublicIpv4PoolCidr');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeprovisionPublicIpv4PoolCidrResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeprovisionPublicIpv4PoolCidr - Arguments for method DeprovisionPublicIpv4PoolCidr on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeprovisionPublicIpv4PoolCidr on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeprovisionPublicIpv4PoolCidr.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeprovisionPublicIpv4PoolCidr.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeprovisionPublicIpv4PoolCidrResult =
      $ec2->DeprovisionPublicIpv4PoolCidr(
      Cidr   => 'MyString',
      PoolId => 'MyIpv4PoolEc2Id',
      DryRun => 1,                   # OPTIONAL
      );

    # Results:
    my $DeprovisionedAddresses =
      $DeprovisionPublicIpv4PoolCidrResult->DeprovisionedAddresses;
    my $PoolId = $DeprovisionPublicIpv4PoolCidrResult->PoolId;

    # Returns a L<Paws::EC2::DeprovisionPublicIpv4PoolCidrResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeprovisionPublicIpv4PoolCidr>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cidr => Str

The CIDR you want to deprovision from the pool. Enter the CIDR you want
to deprovision with a netmask of C</32>. You must rerun this command
for each IP address in the CIDR range. If your CIDR is a C</24>, you
will have to run this command to deprovision each of the 256 IP
addresses in the C</24> CIDR.



=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> PoolId => Str

The ID of the pool that you want to deprovision the CIDR from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeprovisionPublicIpv4PoolCidr in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

