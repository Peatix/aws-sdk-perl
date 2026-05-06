
package Paws::StepFunctions::PublishStateMachineVersion;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PublishStateMachineVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::PublishStateMachineVersionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::PublishStateMachineVersion - Arguments for method PublishStateMachineVersion on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PublishStateMachineVersion on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method PublishStateMachineVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PublishStateMachineVersion.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $PublishStateMachineVersionOutput = $states->PublishStateMachineVersion(
      StateMachineArn => 'MyArn',
      Description     => 'MyVersionDescription',    # OPTIONAL
      RevisionId      => 'MyRevisionId',            # OPTIONAL
    );

    # Results:
    my $CreationDate = $PublishStateMachineVersionOutput->CreationDate;
    my $StateMachineVersionArn =
      $PublishStateMachineVersionOutput->StateMachineVersionArn;

    # Returns a L<Paws::StepFunctions::PublishStateMachineVersionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description of the state machine version.



=head2 RevisionId => Str

Only publish the state machine version if the current state machine's
revision ID matches the specified ID.

Use this option to avoid publishing a version if the state machine
changed since you last updated it. If the specified revision ID doesn't
match the state machine's current revision ID, the API returns
C<ConflictException>.

To specify an initial revision ID for a state machine with no revision
ID assigned, specify the string C<INITIAL> for the C<revisionId>
parameter. For example, you can specify a C<revisionID> of C<INITIAL>
when you create a state machine using the CreateStateMachine API
action.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PublishStateMachineVersion in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

