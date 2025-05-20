
package Paws::AutoScaling::StartInstanceRefresh;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str', required => 1);
  has DesiredConfiguration => (is => 'ro', isa => 'Paws::AutoScaling::DesiredConfiguration');
  has Preferences => (is => 'ro', isa => 'Paws::AutoScaling::RefreshPreferences');
  has Strategy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartInstanceRefresh');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AutoScaling::StartInstanceRefreshAnswer');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartInstanceRefreshResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::StartInstanceRefresh - Arguments for method StartInstanceRefresh on L<Paws::AutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartInstanceRefresh on the
L<Auto Scaling|Paws::AutoScaling> service. Use the attributes of this class
as arguments to method StartInstanceRefresh.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartInstanceRefresh.

=head1 SYNOPSIS

    my $autoscaling = Paws->service('AutoScaling');
 # To start an instance refresh
 # This example starts an instance refresh for the specified Auto Scaling group.
    my $StartInstanceRefreshAnswer = $autoscaling->StartInstanceRefresh(
      'AutoScalingGroupName' => 'my-auto-scaling-group',
      'DesiredConfiguration' => {
        'LaunchTemplate' => {
          'LaunchTemplateName' => 'my-template-for-auto-scaling',
          'Version'            => '$Latest'
        }
      },
      'Preferences' => {
        'AlarmSpecification' => {
          'Alarms' => ['my-alarm']
        },
        'AutoRollback'         => 1,
        'InstanceWarmup'       => 200,
        'MinHealthyPercentage' => 90
      }
    );

    # Results:
    my $InstanceRefreshId = $StartInstanceRefreshAnswer->InstanceRefreshId;

    # Returns a L<Paws::AutoScaling::StartInstanceRefreshAnswer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/autoscaling/StartInstanceRefresh>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupName => Str

The name of the Auto Scaling group.



=head2 DesiredConfiguration => L<Paws::AutoScaling::DesiredConfiguration>

The desired configuration. For example, the desired configuration can
specify a new launch template or a new version of the current launch
template.

Once the instance refresh succeeds, Amazon EC2 Auto Scaling updates the
settings of the Auto Scaling group to reflect the new desired
configuration.

When you specify a new launch template or a new version of the current
launch template for your desired configuration, consider enabling the
C<SkipMatching> property in preferences. If it's enabled, Amazon EC2
Auto Scaling skips replacing instances that already use the specified
launch template and instance types. This can help you reduce the number
of replacements that are required to apply updates.



=head2 Preferences => L<Paws::AutoScaling::RefreshPreferences>

Sets your preferences for the instance refresh so that it performs as
expected when you start it. Includes the instance warmup time, the
minimum and maximum healthy percentages, and the behaviors that you
want Amazon EC2 Auto Scaling to use if instances that are in C<Standby>
state or protected from scale in are found. You can also choose to
enable additional features, such as the following:

=over

=item *

Auto rollback

=item *

Checkpoints

=item *

CloudWatch alarms

=item *

Skip matching

=item *

Bake time

=back




=head2 Strategy => Str

The strategy to use for the instance refresh. The only valid value is
C<Rolling>.

Valid values are: C<"Rolling">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartInstanceRefresh in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

