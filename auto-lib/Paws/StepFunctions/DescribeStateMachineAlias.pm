
package Paws::StepFunctions::DescribeStateMachineAlias;
  use Moose;
  has StateMachineAliasArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineAliasArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStateMachineAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::DescribeStateMachineAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::DescribeStateMachineAlias - Arguments for method DescribeStateMachineAlias on L<Paws::StepFunctions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStateMachineAlias on the
L<AWS Step Functions|Paws::StepFunctions> service. Use the attributes of this class
as arguments to method DescribeStateMachineAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStateMachineAlias.

=head1 SYNOPSIS

    my $states = Paws->service('StepFunctions');
    my $DescribeStateMachineAliasOutput = $states->DescribeStateMachineAlias(
      StateMachineAliasArn => 'MyArn',

    );

    # Results:
    my $CreationDate = $DescribeStateMachineAliasOutput->CreationDate;
    my $Description  = $DescribeStateMachineAliasOutput->Description;
    my $Name         = $DescribeStateMachineAliasOutput->Name;
    my $RoutingConfiguration =
      $DescribeStateMachineAliasOutput->RoutingConfiguration;
    my $StateMachineAliasArn =
      $DescribeStateMachineAliasOutput->StateMachineAliasArn;
    my $UpdateDate = $DescribeStateMachineAliasOutput->UpdateDate;

    # Returns a L<Paws::StepFunctions::DescribeStateMachineAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StateMachineAliasArn => Str

The Amazon Resource Name (ARN) of the state machine alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStateMachineAlias in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

