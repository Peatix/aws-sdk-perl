
package Paws::ELBv2::DescribeCapacityReservation;
  use Moose;
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCapacityReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeCapacityReservationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCapacityReservationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeCapacityReservation - Arguments for method DescribeCapacityReservation on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCapacityReservation on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeCapacityReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCapacityReservation.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    my $DescribeCapacityReservationOutput =
      $elasticloadbalancing->DescribeCapacityReservation(
      LoadBalancerArn => 'MyLoadBalancerArn',

      );

    # Results:
    my $CapacityReservationState =
      $DescribeCapacityReservationOutput->CapacityReservationState;
    my $DecreaseRequestsRemaining =
      $DescribeCapacityReservationOutput->DecreaseRequestsRemaining;
    my $LastModifiedTime = $DescribeCapacityReservationOutput->LastModifiedTime;
    my $MinimumLoadBalancerCapacity =
      $DescribeCapacityReservationOutput->MinimumLoadBalancerCapacity;

    # Returns a L<Paws::ELBv2::DescribeCapacityReservationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeCapacityReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCapacityReservation in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

