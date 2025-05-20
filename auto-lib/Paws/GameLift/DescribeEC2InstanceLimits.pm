
package Paws::GameLift::DescribeEC2InstanceLimits;
  use Moose;
  has EC2InstanceType => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEC2InstanceLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeEC2InstanceLimitsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeEC2InstanceLimits - Arguments for method DescribeEC2InstanceLimits on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEC2InstanceLimits on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeEC2InstanceLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEC2InstanceLimits.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeEC2InstanceLimitsOutput = $gamelift->DescribeEC2InstanceLimits(
      EC2InstanceType => 't2.micro',                 # OPTIONAL
      Location        => 'MyLocationStringModel',    # OPTIONAL
    );

    # Results:
    my $EC2InstanceLimits = $DescribeEC2InstanceLimitsOutput->EC2InstanceLimits;

    # Returns a L<Paws::GameLift::DescribeEC2InstanceLimitsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeEC2InstanceLimits>

=head1 ATTRIBUTES


=head2 EC2InstanceType => Str

Name of an Amazon EC2 instance type that is supported in Amazon
GameLift. A fleet instance type determines the computing resources of
each instance in the fleet, including CPU, memory, storage, and
networking capacity. Do not specify a value for this parameter to
retrieve limits for all instance types.

Valid values are: C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.12xlarge">, C<"c5.18xlarge">, C<"c5.24xlarge">, C<"c5a.large">, C<"c5a.xlarge">, C<"c5a.2xlarge">, C<"c5a.4xlarge">, C<"c5a.8xlarge">, C<"c5a.12xlarge">, C<"c5a.16xlarge">, C<"c5a.24xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"r5.large">, C<"r5.xlarge">, C<"r5.2xlarge">, C<"r5.4xlarge">, C<"r5.8xlarge">, C<"r5.12xlarge">, C<"r5.16xlarge">, C<"r5.24xlarge">, C<"r5a.large">, C<"r5a.xlarge">, C<"r5a.2xlarge">, C<"r5a.4xlarge">, C<"r5a.8xlarge">, C<"r5a.12xlarge">, C<"r5a.16xlarge">, C<"r5a.24xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.8xlarge">, C<"m5.12xlarge">, C<"m5.16xlarge">, C<"m5.24xlarge">, C<"m5a.large">, C<"m5a.xlarge">, C<"m5a.2xlarge">, C<"m5a.4xlarge">, C<"m5a.8xlarge">, C<"m5a.12xlarge">, C<"m5a.16xlarge">, C<"m5a.24xlarge">, C<"c5d.large">, C<"c5d.xlarge">, C<"c5d.2xlarge">, C<"c5d.4xlarge">, C<"c5d.9xlarge">, C<"c5d.12xlarge">, C<"c5d.18xlarge">, C<"c5d.24xlarge">, C<"c6a.large">, C<"c6a.xlarge">, C<"c6a.2xlarge">, C<"c6a.4xlarge">, C<"c6a.8xlarge">, C<"c6a.12xlarge">, C<"c6a.16xlarge">, C<"c6a.24xlarge">, C<"c6i.large">, C<"c6i.xlarge">, C<"c6i.2xlarge">, C<"c6i.4xlarge">, C<"c6i.8xlarge">, C<"c6i.12xlarge">, C<"c6i.16xlarge">, C<"c6i.24xlarge">, C<"r5d.large">, C<"r5d.xlarge">, C<"r5d.2xlarge">, C<"r5d.4xlarge">, C<"r5d.8xlarge">, C<"r5d.12xlarge">, C<"r5d.16xlarge">, C<"r5d.24xlarge">, C<"m6g.medium">, C<"m6g.large">, C<"m6g.xlarge">, C<"m6g.2xlarge">, C<"m6g.4xlarge">, C<"m6g.8xlarge">, C<"m6g.12xlarge">, C<"m6g.16xlarge">, C<"c6g.medium">, C<"c6g.large">, C<"c6g.xlarge">, C<"c6g.2xlarge">, C<"c6g.4xlarge">, C<"c6g.8xlarge">, C<"c6g.12xlarge">, C<"c6g.16xlarge">, C<"r6g.medium">, C<"r6g.large">, C<"r6g.xlarge">, C<"r6g.2xlarge">, C<"r6g.4xlarge">, C<"r6g.8xlarge">, C<"r6g.12xlarge">, C<"r6g.16xlarge">, C<"c6gn.medium">, C<"c6gn.large">, C<"c6gn.xlarge">, C<"c6gn.2xlarge">, C<"c6gn.4xlarge">, C<"c6gn.8xlarge">, C<"c6gn.12xlarge">, C<"c6gn.16xlarge">, C<"c7g.medium">, C<"c7g.large">, C<"c7g.xlarge">, C<"c7g.2xlarge">, C<"c7g.4xlarge">, C<"c7g.8xlarge">, C<"c7g.12xlarge">, C<"c7g.16xlarge">, C<"r7g.medium">, C<"r7g.large">, C<"r7g.xlarge">, C<"r7g.2xlarge">, C<"r7g.4xlarge">, C<"r7g.8xlarge">, C<"r7g.12xlarge">, C<"r7g.16xlarge">, C<"m7g.medium">, C<"m7g.large">, C<"m7g.xlarge">, C<"m7g.2xlarge">, C<"m7g.4xlarge">, C<"m7g.8xlarge">, C<"m7g.12xlarge">, C<"m7g.16xlarge">, C<"g5g.xlarge">, C<"g5g.2xlarge">, C<"g5g.4xlarge">, C<"g5g.8xlarge">, C<"g5g.16xlarge">, C<"r6i.large">, C<"r6i.xlarge">, C<"r6i.2xlarge">, C<"r6i.4xlarge">, C<"r6i.8xlarge">, C<"r6i.12xlarge">, C<"r6i.16xlarge">, C<"c6gd.medium">, C<"c6gd.large">, C<"c6gd.xlarge">, C<"c6gd.2xlarge">, C<"c6gd.4xlarge">, C<"c6gd.8xlarge">, C<"c6gd.12xlarge">, C<"c6gd.16xlarge">, C<"c6in.large">, C<"c6in.xlarge">, C<"c6in.2xlarge">, C<"c6in.4xlarge">, C<"c6in.8xlarge">, C<"c6in.12xlarge">, C<"c6in.16xlarge">, C<"c7a.medium">, C<"c7a.large">, C<"c7a.xlarge">, C<"c7a.2xlarge">, C<"c7a.4xlarge">, C<"c7a.8xlarge">, C<"c7a.12xlarge">, C<"c7a.16xlarge">, C<"c7gd.medium">, C<"c7gd.large">, C<"c7gd.xlarge">, C<"c7gd.2xlarge">, C<"c7gd.4xlarge">, C<"c7gd.8xlarge">, C<"c7gd.12xlarge">, C<"c7gd.16xlarge">, C<"c7gn.medium">, C<"c7gn.large">, C<"c7gn.xlarge">, C<"c7gn.2xlarge">, C<"c7gn.4xlarge">, C<"c7gn.8xlarge">, C<"c7gn.12xlarge">, C<"c7gn.16xlarge">, C<"c7i.large">, C<"c7i.xlarge">, C<"c7i.2xlarge">, C<"c7i.4xlarge">, C<"c7i.8xlarge">, C<"c7i.12xlarge">, C<"c7i.16xlarge">, C<"m6a.large">, C<"m6a.xlarge">, C<"m6a.2xlarge">, C<"m6a.4xlarge">, C<"m6a.8xlarge">, C<"m6a.12xlarge">, C<"m6a.16xlarge">, C<"m6gd.medium">, C<"m6gd.large">, C<"m6gd.xlarge">, C<"m6gd.2xlarge">, C<"m6gd.4xlarge">, C<"m6gd.8xlarge">, C<"m6gd.12xlarge">, C<"m6gd.16xlarge">, C<"m6i.large">, C<"m6i.xlarge">, C<"m6i.2xlarge">, C<"m6i.4xlarge">, C<"m6i.8xlarge">, C<"m6i.12xlarge">, C<"m6i.16xlarge">, C<"m7a.medium">, C<"m7a.large">, C<"m7a.xlarge">, C<"m7a.2xlarge">, C<"m7a.4xlarge">, C<"m7a.8xlarge">, C<"m7a.12xlarge">, C<"m7a.16xlarge">, C<"m7gd.medium">, C<"m7gd.large">, C<"m7gd.xlarge">, C<"m7gd.2xlarge">, C<"m7gd.4xlarge">, C<"m7gd.8xlarge">, C<"m7gd.12xlarge">, C<"m7gd.16xlarge">, C<"m7i.large">, C<"m7i.xlarge">, C<"m7i.2xlarge">, C<"m7i.4xlarge">, C<"m7i.8xlarge">, C<"m7i.12xlarge">, C<"m7i.16xlarge">, C<"r6gd.medium">, C<"r6gd.large">, C<"r6gd.xlarge">, C<"r6gd.2xlarge">, C<"r6gd.4xlarge">, C<"r6gd.8xlarge">, C<"r6gd.12xlarge">, C<"r6gd.16xlarge">, C<"r7a.medium">, C<"r7a.large">, C<"r7a.xlarge">, C<"r7a.2xlarge">, C<"r7a.4xlarge">, C<"r7a.8xlarge">, C<"r7a.12xlarge">, C<"r7a.16xlarge">, C<"r7gd.medium">, C<"r7gd.large">, C<"r7gd.xlarge">, C<"r7gd.2xlarge">, C<"r7gd.4xlarge">, C<"r7gd.8xlarge">, C<"r7gd.12xlarge">, C<"r7gd.16xlarge">, C<"r7i.large">, C<"r7i.xlarge">, C<"r7i.2xlarge">, C<"r7i.4xlarge">, C<"r7i.8xlarge">, C<"r7i.12xlarge">, C<"r7i.16xlarge">, C<"r7i.24xlarge">, C<"r7i.48xlarge">, C<"c5ad.large">, C<"c5ad.xlarge">, C<"c5ad.2xlarge">, C<"c5ad.4xlarge">, C<"c5ad.8xlarge">, C<"c5ad.12xlarge">, C<"c5ad.16xlarge">, C<"c5ad.24xlarge">, C<"c5n.large">, C<"c5n.xlarge">, C<"c5n.2xlarge">, C<"c5n.4xlarge">, C<"c5n.9xlarge">, C<"c5n.18xlarge">, C<"r5ad.large">, C<"r5ad.xlarge">, C<"r5ad.2xlarge">, C<"r5ad.4xlarge">, C<"r5ad.8xlarge">, C<"r5ad.12xlarge">, C<"r5ad.16xlarge">, C<"r5ad.24xlarge">, C<"c6id.large">, C<"c6id.xlarge">, C<"c6id.2xlarge">, C<"c6id.4xlarge">, C<"c6id.8xlarge">, C<"c6id.12xlarge">, C<"c6id.16xlarge">, C<"c6id.24xlarge">, C<"c6id.32xlarge">, C<"c8g.medium">, C<"c8g.large">, C<"c8g.xlarge">, C<"c8g.2xlarge">, C<"c8g.4xlarge">, C<"c8g.8xlarge">, C<"c8g.12xlarge">, C<"c8g.16xlarge">, C<"c8g.24xlarge">, C<"c8g.48xlarge">, C<"m5ad.large">, C<"m5ad.xlarge">, C<"m5ad.2xlarge">, C<"m5ad.4xlarge">, C<"m5ad.8xlarge">, C<"m5ad.12xlarge">, C<"m5ad.16xlarge">, C<"m5ad.24xlarge">, C<"m5d.large">, C<"m5d.xlarge">, C<"m5d.2xlarge">, C<"m5d.4xlarge">, C<"m5d.8xlarge">, C<"m5d.12xlarge">, C<"m5d.16xlarge">, C<"m5d.24xlarge">, C<"m5dn.large">, C<"m5dn.xlarge">, C<"m5dn.2xlarge">, C<"m5dn.4xlarge">, C<"m5dn.8xlarge">, C<"m5dn.12xlarge">, C<"m5dn.16xlarge">, C<"m5dn.24xlarge">, C<"m5n.large">, C<"m5n.xlarge">, C<"m5n.2xlarge">, C<"m5n.4xlarge">, C<"m5n.8xlarge">, C<"m5n.12xlarge">, C<"m5n.16xlarge">, C<"m5n.24xlarge">, C<"m6id.large">, C<"m6id.xlarge">, C<"m6id.2xlarge">, C<"m6id.4xlarge">, C<"m6id.8xlarge">, C<"m6id.12xlarge">, C<"m6id.16xlarge">, C<"m6id.24xlarge">, C<"m6id.32xlarge">, C<"m6idn.large">, C<"m6idn.xlarge">, C<"m6idn.2xlarge">, C<"m6idn.4xlarge">, C<"m6idn.8xlarge">, C<"m6idn.12xlarge">, C<"m6idn.16xlarge">, C<"m6idn.24xlarge">, C<"m6idn.32xlarge">, C<"m6in.large">, C<"m6in.xlarge">, C<"m6in.2xlarge">, C<"m6in.4xlarge">, C<"m6in.8xlarge">, C<"m6in.12xlarge">, C<"m6in.16xlarge">, C<"m6in.24xlarge">, C<"m6in.32xlarge">, C<"m8g.medium">, C<"m8g.large">, C<"m8g.xlarge">, C<"m8g.2xlarge">, C<"m8g.4xlarge">, C<"m8g.8xlarge">, C<"m8g.12xlarge">, C<"m8g.16xlarge">, C<"m8g.24xlarge">, C<"m8g.48xlarge">, C<"r5dn.large">, C<"r5dn.xlarge">, C<"r5dn.2xlarge">, C<"r5dn.4xlarge">, C<"r5dn.8xlarge">, C<"r5dn.12xlarge">, C<"r5dn.16xlarge">, C<"r5dn.24xlarge">, C<"r5n.large">, C<"r5n.xlarge">, C<"r5n.2xlarge">, C<"r5n.4xlarge">, C<"r5n.8xlarge">, C<"r5n.12xlarge">, C<"r5n.16xlarge">, C<"r5n.24xlarge">, C<"r6a.large">, C<"r6a.xlarge">, C<"r6a.2xlarge">, C<"r6a.4xlarge">, C<"r6a.8xlarge">, C<"r6a.12xlarge">, C<"r6a.16xlarge">, C<"r6a.24xlarge">, C<"r6a.32xlarge">, C<"r6a.48xlarge">, C<"r6id.large">, C<"r6id.xlarge">, C<"r6id.2xlarge">, C<"r6id.4xlarge">, C<"r6id.8xlarge">, C<"r6id.12xlarge">, C<"r6id.16xlarge">, C<"r6id.24xlarge">, C<"r6id.32xlarge">, C<"r6idn.large">, C<"r6idn.xlarge">, C<"r6idn.2xlarge">, C<"r6idn.4xlarge">, C<"r6idn.8xlarge">, C<"r6idn.12xlarge">, C<"r6idn.16xlarge">, C<"r6idn.24xlarge">, C<"r6idn.32xlarge">, C<"r6in.large">, C<"r6in.xlarge">, C<"r6in.2xlarge">, C<"r6in.4xlarge">, C<"r6in.8xlarge">, C<"r6in.12xlarge">, C<"r6in.16xlarge">, C<"r6in.24xlarge">, C<"r6in.32xlarge">, C<"r8g.medium">, C<"r8g.large">, C<"r8g.xlarge">, C<"r8g.2xlarge">, C<"r8g.4xlarge">, C<"r8g.8xlarge">, C<"r8g.12xlarge">, C<"r8g.16xlarge">, C<"r8g.24xlarge">, C<"r8g.48xlarge">, C<"m4.16xlarge">, C<"c6a.32xlarge">, C<"c6a.48xlarge">, C<"c6i.32xlarge">, C<"r6i.24xlarge">, C<"r6i.32xlarge">, C<"c6in.24xlarge">, C<"c6in.32xlarge">, C<"c7a.24xlarge">, C<"c7a.32xlarge">, C<"c7a.48xlarge">, C<"c7i.24xlarge">, C<"c7i.48xlarge">, C<"m6a.24xlarge">, C<"m6a.32xlarge">, C<"m6a.48xlarge">, C<"m6i.24xlarge">, C<"m6i.32xlarge">, C<"m7a.24xlarge">, C<"m7a.32xlarge">, C<"m7a.48xlarge">, C<"m7i.24xlarge">, C<"m7i.48xlarge">, C<"r7a.24xlarge">, C<"r7a.32xlarge">, C<"r7a.48xlarge">

=head2 Location => Str

The name of a remote location to request instance limits for, in the
form of an Amazon Web Services Region code such as C<us-west-2>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEC2InstanceLimits in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

