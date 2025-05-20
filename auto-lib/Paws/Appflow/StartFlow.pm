
package Paws::Appflow::StartFlow;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has FlowName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-flow');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Appflow::StartFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::StartFlow - Arguments for method StartFlow on L<Paws::Appflow>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartFlow on the
L<Amazon Appflow|Paws::Appflow> service. Use the attributes of this class
as arguments to method StartFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartFlow.

=head1 SYNOPSIS

    my $appflow = Paws->service('Appflow');
    my $StartFlowResponse = $appflow->StartFlow(
      FlowName    => 'MyFlowName',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $ExecutionId = $StartFlowResponse->ExecutionId;
    my $FlowArn     = $StartFlowResponse->FlowArn;
    my $FlowStatus  = $StartFlowResponse->FlowStatus;

    # Returns a L<Paws::Appflow::StartFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appflow/StartFlow>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The C<clientToken> parameter is an idempotency token. It ensures that
your C<StartFlow> request completes only once. You choose the value to
pass. For example, if you don't receive a response from your request,
you can safely retry the request with the same C<clientToken> parameter
value.

If you omit a C<clientToken> value, the Amazon Web Services SDK that
you are using inserts a value for you. This way, the SDK can safely
retry requests multiple times after a network error. You must provide
your own value for other use cases.

If you specify input parameters that differ from your first request, an
error occurs for flows that run on a schedule or based on an event.
However, the error doesn't occur for flows that run on demand. You set
the conditions that initiate your flow for the C<triggerConfig>
parameter.

If you use a different value for C<clientToken>, Amazon AppFlow
considers it a new call to C<StartFlow>. The token is active for 8
hours.



=head2 B<REQUIRED> FlowName => Str

The specified name of the flow. Spaces are not allowed. Use underscores
(_) or hyphens (-) only.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartFlow in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

