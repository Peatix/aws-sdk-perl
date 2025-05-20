
package Paws::Athena::PutCapacityAssignmentConfiguration;
  use Moose;
  has CapacityAssignments => (is => 'ro', isa => 'ArrayRef[Paws::Athena::CapacityAssignment]', required => 1);
  has CapacityReservationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutCapacityAssignmentConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::PutCapacityAssignmentConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::PutCapacityAssignmentConfiguration - Arguments for method PutCapacityAssignmentConfiguration on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutCapacityAssignmentConfiguration on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method PutCapacityAssignmentConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutCapacityAssignmentConfiguration.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $PutCapacityAssignmentConfigurationOutput =
      $athena->PutCapacityAssignmentConfiguration(
      CapacityAssignments => [
        {
          WorkGroupNames => [ 'MyWorkGroupName', ... ],    # OPTIONAL
        },
        ...
      ],
      CapacityReservationName => 'MyCapacityReservationName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/PutCapacityAssignmentConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityAssignments => ArrayRef[L<Paws::Athena::CapacityAssignment>]

The list of assignments for the capacity assignment configuration.



=head2 B<REQUIRED> CapacityReservationName => Str

The name of the capacity reservation to put a capacity assignment
configuration for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutCapacityAssignmentConfiguration in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

