
package Paws::ELBv2::ModifyCapacityReservation;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has MinimumLoadBalancerCapacity => (is => 'ro', isa => 'Paws::ELBv2::MinimumLoadBalancerCapacity');
  has ResetCapacityReservation => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyCapacityReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyCapacityReservationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyCapacityReservationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyCapacityReservation - Arguments for method ModifyCapacityReservation on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyCapacityReservation on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyCapacityReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyCapacityReservation.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $ModifyCapacityReservationOutput =
      $elasticloadbalancing->ModifyCapacityReservation(
      LoadBalancerArn             => 'MyLoadBalancerArn',
      MinimumLoadBalancerCapacity => {
        CapacityUnits => 1,    # OPTIONAL
      },    # OPTIONAL
      ResetCapacityReservation => 1,    # OPTIONAL
      );

    # Results:
    my $CapacityReservationState =
      $ModifyCapacityReservationOutput->CapacityReservationState;
    my $DecreaseRequestsRemaining =
      $ModifyCapacityReservationOutput->DecreaseRequestsRemaining;
    my $LastModifiedTime = $ModifyCapacityReservationOutput->LastModifiedTime;
    my $MinimumLoadBalancerCapacity =
      $ModifyCapacityReservationOutput->MinimumLoadBalancerCapacity;

    # Returns a L<Paws::ELBv2::ModifyCapacityReservationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyCapacityReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 MinimumLoadBalancerCapacity => L<Paws::ELBv2::MinimumLoadBalancerCapacity>

The minimum load balancer capacity reserved.



=head2 ResetCapacityReservation => Bool

Resets the capacity reservation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyCapacityReservation in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

