
package Paws::SupplyChain::ListDataIntegrationFlowExecutions;
  use Moose;
  has FlowName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowName', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataIntegrationFlowExecutions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::ListDataIntegrationFlowExecutionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataIntegrationFlowExecutions - Arguments for method ListDataIntegrationFlowExecutions on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataIntegrationFlowExecutions on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method ListDataIntegrationFlowExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataIntegrationFlowExecutions.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $ListDataIntegrationFlowExecutionsResponse =
      $scn->ListDataIntegrationFlowExecutions(
      FlowName   => 'MyDataIntegrationFlowName',
      InstanceId => 'MyUUID',
      MaxResults => 1,                                            # OPTIONAL
      NextToken  => 'MyDataIntegrationFlowExecutionNextToken',    # OPTIONAL
      );

    # Results:
    my $FlowExecutions =
      $ListDataIntegrationFlowExecutionsResponse->FlowExecutions;
    my $NextToken = $ListDataIntegrationFlowExecutionsResponse->NextToken;

# Returns a L<Paws::SupplyChain::ListDataIntegrationFlowExecutionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/ListDataIntegrationFlowExecutions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowName => Str

The flow name.



=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.



=head2 MaxResults => Int

The number to specify the max number of flow executions to fetch in
this paginated request.



=head2 NextToken => Str

The pagination token to fetch next page of flow executions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataIntegrationFlowExecutions in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

