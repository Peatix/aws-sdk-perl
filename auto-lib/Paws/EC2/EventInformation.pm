package Paws::EC2::EventInformation;
  use Moose;
  has EventDescription => (is => 'ro', isa => 'Str', request_name => 'eventDescription', traits => ['NameInRequest']);
  has EventSubType => (is => 'ro', isa => 'Str', request_name => 'eventSubType', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EventInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EventInformation object:

  $service_obj->Method(Att1 => { EventDescription => $value, ..., InstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EventInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->EventDescription

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EventDescription => Str

The description of the event.


=head2 EventSubType => Str

The event.

C<error> events:

=over

=item *

C<iamFleetRoleInvalid> - The EC2 Fleet or Spot Fleet does not have the
required permissions either to launch or terminate an instance.

=item *

C<allLaunchSpecsTemporarilyBlacklisted> - None of the configurations
are valid, and several attempts to launch instances have failed. For
more information, see the description of the event.

=item *

C<spotInstanceCountLimitExceeded> - You've reached the limit on the
number of Spot Instances that you can launch.

=item *

C<spotFleetRequestConfigurationInvalid> - The configuration is not
valid. For more information, see the description of the event.

=back

C<fleetRequestChange> events:

=over

=item *

C<active> - The EC2 Fleet or Spot Fleet request has been validated and
Amazon EC2 is attempting to maintain the target number of running
instances.

=item *

C<deleted> (EC2 Fleet) / C<cancelled> (Spot Fleet) - The EC2 Fleet is
deleted or the Spot Fleet request is canceled and has no running
instances. The EC2 Fleet or Spot Fleet will be deleted two days after
its instances are terminated.

=item *

C<deleted_running> (EC2 Fleet) / C<cancelled_running> (Spot Fleet) -
The EC2 Fleet is deleted or the Spot Fleet request is canceled and does
not launch additional instances. Its existing instances continue to run
until they are interrupted or terminated. The request remains in this
state until all instances are interrupted or terminated.

=item *

C<deleted_terminating> (EC2 Fleet) / C<cancelled_terminating> (Spot
Fleet) - The EC2 Fleet is deleted or the Spot Fleet request is canceled
and its instances are terminating. The request remains in this state
until all instances are terminated.

=item *

C<expired> - The EC2 Fleet or Spot Fleet request has expired. If the
request was created with C<TerminateInstancesWithExpiration> set, a
subsequent C<terminated> event indicates that the instances are
terminated.

=item *

C<modify_in_progress> - The EC2 Fleet or Spot Fleet request is being
modified. The request remains in this state until the modification is
fully processed.

=item *

C<modify_succeeded> - The EC2 Fleet or Spot Fleet request was modified.

=item *

C<submitted> - The EC2 Fleet or Spot Fleet request is being evaluated
and Amazon EC2 is preparing to launch the target number of instances.

=item *

C<progress> - The EC2 Fleet or Spot Fleet request is in the process of
being fulfilled.

=back

C<instanceChange> events:

=over

=item *

C<launched> - A new instance was launched.

=item *

C<terminated> - An instance was terminated by the user.

=item *

C<termination_notified> - An instance termination notification was sent
when a Spot Instance was terminated by Amazon EC2 during scale-down,
when the target capacity of the fleet was modified down, for example,
from a target capacity of 4 to a target capacity of 3.

=back

C<Information> events:

=over

=item *

C<fleetProgressHalted> - The price in every launch specification is not
valid because it is below the Spot price (all the launch specifications
have produced C<launchSpecUnusable> events). A launch specification
might become valid if the Spot price changes.

=item *

C<launchSpecTemporarilyBlacklisted> - The configuration is not valid
and several attempts to launch instances have failed. For more
information, see the description of the event.

=item *

C<launchSpecUnusable> - The price specified in a launch specification
is not valid because it is below the Spot price for the requested Spot
pools.

Note: Even if a fleet with the C<maintain> request type is in the
process of being canceled, it may still publish a C<launchSpecUnusable>
event. This does not mean that the canceled fleet is attempting to
launch a new instance.

=item *

C<registerWithLoadBalancersFailed> - An attempt to register instances
with load balancers failed. For more information, see the description
of the event.

=back



=head2 InstanceId => Str

The ID of the instance. This information is available only for
C<instanceChange> events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
