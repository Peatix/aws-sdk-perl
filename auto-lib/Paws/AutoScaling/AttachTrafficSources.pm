
package Paws::AutoScaling::AttachTrafficSources;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has SkipZonalShiftValidation => (is => 'ro', isa => 'Bool');
  has TrafficSources => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TrafficSourceIdentifier]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachTrafficSources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::AttachTrafficSourcesResultType');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'AttachTrafficSourcesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AttachTrafficSources - Arguments for method AttachTrafficSources on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachTrafficSources on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method AttachTrafficSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachTrafficSources.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
# To attach a target group to an Auto Scaling group
# This example attaches the specified target group to the specified Auto Scaling
# group.
    my $AttachTrafficSourcesResultType = $autoscaling->AttachTrafficSources(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'TrafficSources'       => [

        {
          'Identifier' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067'
        }
      ]
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/AttachTrafficSources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 SkipZonalShiftValidation => Bool

If you enable zonal shift with cross-zone disabled load balancers,
capacity could become imbalanced across Availability Zones. To skip the
validation, specify C<true>. For more information, see Auto Scaling
group zonal shift
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-zonal-shift.html)
in the I<Amazon EC2 Auto Scaling User Guide>.



=head2 B<REQUIRED> TrafficSources => ArrayRef[L<Paws::AutoScaling::TrafficSourceIdentifier>]

The unique identifiers of one or more traffic sources. You can specify
up to 10 traffic sources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachTrafficSources in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

