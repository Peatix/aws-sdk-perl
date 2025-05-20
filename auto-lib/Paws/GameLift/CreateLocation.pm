
package Paws::GameLift::CreateLocation;
  use Moose;
  has LocationName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateLocationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateLocation - Arguments for method CreateLocation on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLocation on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateLocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLocation.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateLocationOutput = $gamelift->CreateLocation(
      LocationName => 'MyCustomInputLocationStringModel',
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Location = $CreateLocationOutput->Location;

    # Returns a L<Paws::GameLift::CreateLocationOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateLocation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LocationName => Str

A descriptive name for the custom location.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new resource. Tags are
developer-defined key-value pairs. Tagging Amazon Web Services
resources are useful for resource management, access management, and
cost allocation. For more information, see Tagging Amazon Web Services
Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<Amazon Web Services General Rareference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLocation in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

