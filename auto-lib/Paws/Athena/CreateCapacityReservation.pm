
package Paws::Athena::CreateCapacityReservation;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Athena::Tag]');
  has TargetDpus => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCapacityReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::CreateCapacityReservationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateCapacityReservation - Arguments for method CreateCapacityReservation on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCapacityReservation on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method CreateCapacityReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCapacityReservation.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $CreateCapacityReservationOutput = $athena->CreateCapacityReservation(
      Name       => 'MyCapacityReservationName',
      TargetDpus => 1,
      Tags       => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/CreateCapacityReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the capacity reservation to create.



=head2 Tags => ArrayRef[L<Paws::Athena::Tag>]

The tags for the capacity reservation.



=head2 B<REQUIRED> TargetDpus => Int

The number of requested data processing units.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCapacityReservation in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

