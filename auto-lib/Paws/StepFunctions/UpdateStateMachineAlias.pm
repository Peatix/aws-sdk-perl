
package Paws::StepFunctions::UpdateStateMachineAlias;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has RoutingConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::StepFunctions::RoutingConfigurationListItem]', traits => ['NameInRequest'], request_name => 'routingConfiguration' );
  has StateMachineAliasArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineAliasArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStateMachineAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::UpdateStateMachineAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::UpdateStateMachineAlias - Arguments for method UpdateStateMachineAlias on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStateMachineAlias on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method UpdateStateMachineAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStateMachineAlias.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $UpdateStateMachineAliasOutput = $states->UpdateStateMachineAlias(
      StateMachineAliasArn => 'MyArn',
      Description          => 'MyAliasDescription',    # OPTIONAL
      RoutingConfiguration => [
        {
          StateMachineVersionArn => 'MyArn',    # min: 1, max: 256
          Weight                 => 1,          # max: 100

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $UpdateDate = $UpdateStateMachineAliasOutput->UpdateDate;

    # Returns a L<Paws::StepFunctions::UpdateStateMachineAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the state machine alias.



=head2 RoutingConfiguration => ArrayRef[L<Paws::StepFunctions::RoutingConfigurationListItem>]

The routing configuration of the state machine alias.

An array of C<RoutingConfig> objects that specifies up to two state
machine versions that the alias starts executions for.



=head2 B<REQUIRED> StateMachineAliasArn => Str

The Amazon Resource Name (ARN) of the state machine alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStateMachineAlias in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

