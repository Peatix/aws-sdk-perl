
package Paws::StepFunctions::CreateStateMachineAlias;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::RoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStateMachineAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::CreateStateMachineAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateStateMachineAlias - Arguments for method CreateStateMachineAlias on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStateMachineAlias on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method CreateStateMachineAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStateMachineAlias.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $CreateStateMachineAliasOutput = $states->CreateStateMachineAlias(
      Name                 => 'MyCharacterRestrictedName',
      RoutingConfiguration => [
        {
          StateMachineVersionArn => 'MyArn',    # min: 1, max: 256
          Weight                 => 1,          # max: 100

        },
        ...
      ],
      Description => 'MyAliasDescription',    # OPTIONAL
    );

    # Results:
    my $CreationDate = $CreateStateMachineAliasOutput->CreationDate;
    my $StateMachineAliasArn =
      $CreateStateMachineAliasOutput->StateMachineAliasArn;

    # Returns a L<Paws::StepFunctions::CreateStateMachineAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the state machine alias.



=head2 B<REQUIRED> Name => Str

The name of the state machine alias.

To avoid conflict with version ARNs, don't use an integer in the name
of the alias.



=head2 B<REQUIRED> RoutingConfiguration => ArrayRef[L<Paws::StepFunctions::RoutingConfigurationListItem>]

The routing configuration of a state machine alias. The routing
configuration shifts execution traffic between two state machine
versions. C<routingConfiguration> contains an array of C<RoutingConfig>
objects that specify up to two state machine versions. Step Functions
then randomly choses which version to run an execution with based on
the weight assigned to each C<RoutingConfig>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStateMachineAlias in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

