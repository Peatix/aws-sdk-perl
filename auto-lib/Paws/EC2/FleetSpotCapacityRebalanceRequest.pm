package Paws::EC2::FleetSpotCapacityRebalanceRequest;
  use Moose;
  has ReplacementStrategy => (is => 'ro', isa => 'Str');
  has TerminationDelay => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FleetSpotCapacityRebalanceRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FleetSpotCapacityRebalanceRequest object:

  $service_obj->Method(Att1 => { ReplacementStrategy => $value, ..., TerminationDelay => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FleetSpotCapacityRebalanceRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplacementStrategy

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ReplacementStrategy => Str

The replacement strategy to use. Only available for fleets of type
C<maintain>.

C<launch> - EC2 Fleet launches a replacement Spot Instance when a
rebalance notification is emitted for an existing Spot Instance in the
fleet. EC2 Fleet does not terminate the instances that receive a
rebalance notification. You can terminate the old instances, or you can
leave them running. You are charged for all instances while they are
running.

C<launch-before-terminate> - EC2 Fleet launches a replacement Spot
Instance when a rebalance notification is emitted for an existing Spot
Instance in the fleet, and then, after a delay that you specify (in
C<TerminationDelay>), terminates the instances that received a
rebalance notification.


=head2 TerminationDelay => Int

The amount of time (in seconds) that Amazon EC2 waits before
terminating the old Spot Instance after launching a new replacement
Spot Instance.

Required when C<ReplacementStrategy> is set to
C<launch-before-terminate>.

Not valid when C<ReplacementStrategy> is set to C<launch>.

Valid values: Minimum value of C<120> seconds. Maximum value of C<7200>
seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
