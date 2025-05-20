
package Paws::EC2::DeletePublicIpv4Pool;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has NetworkBorderGroup => (is => 'ro', isa => 'Str');
  has PoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePublicIpv4Pool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeletePublicIpv4PoolResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeletePublicIpv4Pool - Arguments for method DeletePublicIpv4Pool on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePublicIpv4Pool on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeletePublicIpv4Pool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePublicIpv4Pool.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeletePublicIpv4PoolResult = $ec2->DeletePublicIpv4Pool(
      PoolId             => 'MyIpv4PoolEc2Id',
      DryRun             => 1,                   # OPTIONAL
      NetworkBorderGroup => 'MyString',          # OPTIONAL
    );

    # Results:
    my $ReturnValue = $DeletePublicIpv4PoolResult->ReturnValue;

    # Returns a L<Paws::EC2::DeletePublicIpv4PoolResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeletePublicIpv4Pool>

=head1 ATTRIBUTES


=head2 DryRun => Bool

A check for whether you have the required permissions for the action
without actually making the request and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 NetworkBorderGroup => Str

The Availability Zone (AZ) or Local Zone (LZ) network border group that
the resource that the IP address is assigned to is in. Defaults to an
AZ network border group. For more information on available Local Zones,
see Local Zone availability
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#byoip-zone-avail)
in the I<Amazon EC2 User Guide>.



=head2 B<REQUIRED> PoolId => Str

The ID of the public IPv4 pool you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePublicIpv4Pool in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

