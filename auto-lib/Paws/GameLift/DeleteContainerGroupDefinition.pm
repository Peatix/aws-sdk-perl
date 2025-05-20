
package Paws::GameLift::DeleteContainerGroupDefinition;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VersionCountToRetain => (is => 'ro', isa => 'Int');
  has VersionNumber => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteContainerGroupDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DeleteContainerGroupDefinitionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteContainerGroupDefinition - Arguments for method DeleteContainerGroupDefinition on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteContainerGroupDefinition on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteContainerGroupDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteContainerGroupDefinition.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DeleteContainerGroupDefinitionOutput =
      $gamelift->DeleteContainerGroupDefinition(
      Name                 => 'MyContainerGroupDefinitionNameOrArn',
      VersionCountToRetain => 1,                                      # OPTIONAL
      VersionNumber        => 1,                                      # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteContainerGroupDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The unique identifier for the container group definition to delete. You
can use either the C<Name> or C<ARN> value.



=head2 VersionCountToRetain => Int

The number of most recent versions to keep while deleting all older
versions.



=head2 VersionNumber => Int

The specific version to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteContainerGroupDefinition in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

