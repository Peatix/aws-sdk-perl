
package Paws::Appflow::CancelFlowExecutions;
  use Moose;
  has ExecutionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'executionIds');
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelFlowExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cancel-flow-executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::CancelFlowExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CancelFlowExecutions - Arguments for method CancelFlowExecutions on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelFlowExecutions on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method CancelFlowExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelFlowExecutions.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $CancelFlowExecutionsResponse = $appflow->CancelFlowExecutions(
      FlowName     => 'MyFlowName',
      ExecutionIds => [
        'MyExecutionId', ...    # max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $InvalidExecutions = $CancelFlowExecutionsResponse->InvalidExecutions;

    # Returns a L<Paws::Appflow::CancelFlowExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/CancelFlowExecutions>

=head1 ATTRIBUTES


=head2 ExecutionIds => ArrayRef[Str|Undef]

The ID of each active run to cancel. These runs must belong to the flow
you specify in your request.

If you omit this parameter, your request ends all active runs that
belong to the flow.



=head2 B<REQUIRED> FlowName => Str

The name of a flow with active runs that you want to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelFlowExecutions in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

