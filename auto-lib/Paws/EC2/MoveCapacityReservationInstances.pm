
package Paws::EC2::MoveCapacityReservationInstances;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DestinationCapacityReservationId => (is => 'ro', isa => 'Str', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int', required => 1);
  has SourceCapacityReservationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MoveCapacityReservationInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::MoveCapacityReservationInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::MoveCapacityReservationInstances - Arguments for method MoveCapacityReservationInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MoveCapacityReservationInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method MoveCapacityReservationInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MoveCapacityReservationInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $MoveCapacityReservationInstancesResult =
      $ec2->MoveCapacityReservationInstances(
      DestinationCapacityReservationId => 'MyCapacityReservationId',
      InstanceCount                    => 1,
      SourceCapacityReservationId      => 'MyCapacityReservationId',
      ClientToken                      => 'MyString',                 # OPTIONAL
      DryRun                           => 1,                          # OPTIONAL
      );

    # Results:
    my $DestinationCapacityReservation =
      $MoveCapacityReservationInstancesResult->DestinationCapacityReservation;
    my $InstanceCount = $MoveCapacityReservationInstancesResult->InstanceCount;
    my $SourceCapacityReservation =
      $MoveCapacityReservationInstancesResult->SourceCapacityReservation;

    # Returns a L<Paws::EC2::MoveCapacityReservationInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/MoveCapacityReservationInstances>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> DestinationCapacityReservationId => Str

The ID of the Capacity Reservation that you want to move capacity into.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> InstanceCount => Int

The number of instances that you want to move from the source Capacity
Reservation.



=head2 B<REQUIRED> SourceCapacityReservationId => Str

The ID of the Capacity Reservation from which you want to move
capacity.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MoveCapacityReservationInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

