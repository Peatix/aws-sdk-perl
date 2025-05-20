
package Paws::Athena::GetCapacityAssignmentConfiguration;
  use Moose;
  has CapacityReservationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCapacityAssignmentConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::GetCapacityAssignmentConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetCapacityAssignmentConfiguration - Arguments for method GetCapacityAssignmentConfiguration on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCapacityAssignmentConfiguration on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method GetCapacityAssignmentConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCapacityAssignmentConfiguration.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $GetCapacityAssignmentConfigurationOutput =
      $athena->GetCapacityAssignmentConfiguration(
      CapacityReservationName => 'MyCapacityReservationName',

      );

    # Results:
    my $CapacityAssignmentConfiguration =
      $GetCapacityAssignmentConfigurationOutput
      ->CapacityAssignmentConfiguration;

   # Returns a L<Paws::Athena::GetCapacityAssignmentConfigurationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/GetCapacityAssignmentConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapacityReservationName => Str

The name of the capacity reservation to retrieve the capacity
assignment configuration for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCapacityAssignmentConfiguration in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

