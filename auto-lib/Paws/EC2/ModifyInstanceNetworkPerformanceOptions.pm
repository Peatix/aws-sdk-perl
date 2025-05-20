
package Paws::EC2::ModifyInstanceNetworkPerformanceOptions;
  use Moose;
  has BandwidthWeighting => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyInstanceNetworkPerformanceOptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyInstanceNetworkPerformanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceNetworkPerformanceOptions - Arguments for method ModifyInstanceNetworkPerformanceOptions on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyInstanceNetworkPerformanceOptions on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyInstanceNetworkPerformanceOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyInstanceNetworkPerformanceOptions.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyInstanceNetworkPerformanceResult =
      $ec2->ModifyInstanceNetworkPerformanceOptions(
      BandwidthWeighting => 'default',
      InstanceId         => 'MyInstanceId',
      DryRun             => 1,                # OPTIONAL
      );

    # Results:
    my $BandwidthWeighting =
      $ModifyInstanceNetworkPerformanceResult->BandwidthWeighting;
    my $InstanceId = $ModifyInstanceNetworkPerformanceResult->InstanceId;

    # Returns a L<Paws::EC2::ModifyInstanceNetworkPerformanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyInstanceNetworkPerformanceOptions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BandwidthWeighting => Str

Specify the bandwidth weighting option to boost the associated type of
baseline bandwidth, as follows:

=over

=item default

This option uses the standard bandwidth configuration for your instance
type.

=item vpc-1

This option boosts your networking baseline bandwidth and reduces your
EBS baseline bandwidth.

=item ebs-1

This option boosts your EBS baseline bandwidth and reduces your
networking baseline bandwidth.

=back


Valid values are: C<"default">, C<"vpc-1">, C<"ebs-1">

=head2 DryRun => Bool

Checks whether you have the required permissions for the operation,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceId => Str

The ID of the instance to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyInstanceNetworkPerformanceOptions in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

