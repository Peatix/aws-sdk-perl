
package Paws::SupplyChain::GetDataIntegrationFlowExecution;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'executionId', required => 1);
  has FlowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowName', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataIntegrationFlowExecution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions/{executionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::GetDataIntegrationFlowExecutionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetDataIntegrationFlowExecution - Arguments for method GetDataIntegrationFlowExecution on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataIntegrationFlowExecution on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method GetDataIntegrationFlowExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataIntegrationFlowExecution.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $GetDataIntegrationFlowExecutionResponse =
      $scn->GetDataIntegrationFlowExecution(
      ExecutionId => 'MyUUID',
      FlowName    => 'MyDataIntegrationFlowName',
      InstanceId  => 'MyUUID',

      );

    # Results:
    my $FlowExecution = $GetDataIntegrationFlowExecutionResponse->FlowExecution;

# Returns a L<Paws::SupplyChain::GetDataIntegrationFlowExecutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/GetDataIntegrationFlowExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExecutionId => Str

The flow execution identifier.



=head2 B<REQUIRED> FlowName => Str

The flow name.



=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataIntegrationFlowExecution in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

