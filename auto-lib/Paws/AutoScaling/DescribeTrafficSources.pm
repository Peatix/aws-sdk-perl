
package Paws::AutoScaling::DescribeTrafficSources;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TrafficSourceType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTrafficSources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::DescribeTrafficSourcesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeTrafficSourcesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeTrafficSources - Arguments for method DescribeTrafficSources on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTrafficSources on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method DescribeTrafficSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTrafficSources.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
    # To describe the target groups for an Auto Scaling group
    # This example describes the target groups attached to the specified Auto
    # Scaling group.
    my $DescribeTrafficSourcesResponse = $autoscaling->DescribeTrafficSources(
      'AutoScalingGroupName' => 'my-auto-scaling-group' );

    # Results:
    my $NextToken      = $DescribeTrafficSourcesResponse->NextToken;
    my $TrafficSources = $DescribeTrafficSourcesResponse->TrafficSources;

    # Returns a L<Paws::AutoScaling::DescribeTrafficSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/DescribeTrafficSources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 MaxRecords => Int

The maximum number of items to return with this call. The maximum value
is C<50>.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 TrafficSourceType => Str

The traffic source type that you want to describe.

The following lists the valid values:

=over

=item *

C<elb> if the traffic source is a Classic Load Balancer.

=item *

C<elbv2> if the traffic source is a Application Load Balancer, Gateway
Load Balancer, or Network Load Balancer.

=item *

C<vpc-lattice> if the traffic source is VPC Lattice.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTrafficSources in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

