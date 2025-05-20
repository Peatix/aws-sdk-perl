
package Paws::SimSpaceWeaver::StopClock;
  use Moose;
  has Simulation => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopClock');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/stopclock');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimSpaceWeaver::StopClockOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::StopClock - Arguments for method StopClock on L<Paws::SimSpaceWeaver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopClock on the
L<AWS SimSpace Weaver|Paws::SimSpaceWeaver> service. Use the attributes of this class
as arguments to method StopClock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopClock.

=head1 SYNOPSIS

    my $simspaceweaver = Paws->service('SimSpaceWeaver');
    my $StopClockOutput = $simspaceweaver->StopClock(
      Simulation => 'MySimSpaceWeaverResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/simspaceweaver/StopClock>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Simulation => Str

The name of the simulation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopClock in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

