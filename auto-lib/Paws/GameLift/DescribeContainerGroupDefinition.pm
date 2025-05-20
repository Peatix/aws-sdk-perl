
package Paws::GameLift::DescribeContainerGroupDefinition;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeContainerGroupDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeContainerGroupDefinitionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeContainerGroupDefinition - Arguments for method DescribeContainerGroupDefinition on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeContainerGroupDefinition on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeContainerGroupDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeContainerGroupDefinition.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeContainerGroupDefinitionOutput =
      $gamelift->DescribeContainerGroupDefinition(
      Name          => 'MyContainerGroupDefinitionNameOrArn',
      VersionNumber => 1,                                       # OPTIONAL
      );

    # Results:
    my $ContainerGroupDefinition =
      $DescribeContainerGroupDefinitionOutput->ContainerGroupDefinition;

   # Returns a L<Paws::GameLift::DescribeContainerGroupDefinitionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeContainerGroupDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The unique identifier for the container group definition to retrieve
properties for. You can use either the C<Name> or C<ARN> value.



=head2 VersionNumber => Int

The specific version to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeContainerGroupDefinition in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

