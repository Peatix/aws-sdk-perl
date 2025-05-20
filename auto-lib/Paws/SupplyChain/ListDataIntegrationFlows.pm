
package Paws::SupplyChain::ListDataIntegrationFlows;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataIntegrationFlows');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/data-integration/instance/{instanceId}/data-integration-flows');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::ListDataIntegrationFlowsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataIntegrationFlows - Arguments for method ListDataIntegrationFlows on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataIntegrationFlows on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method ListDataIntegrationFlows.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataIntegrationFlows.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $ListDataIntegrationFlowsResponse = $scn->ListDataIntegrationFlows(
      InstanceId => 'MyUUID',
      MaxResults => 1,                                   # OPTIONAL
      NextToken  => 'MyDataIntegrationFlowNextToken',    # OPTIONAL
    );

    # Results:
    my $Flows     = $ListDataIntegrationFlowsResponse->Flows;
    my $NextToken = $ListDataIntegrationFlowsResponse->NextToken;

    # Returns a L<Paws::SupplyChain::ListDataIntegrationFlowsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/ListDataIntegrationFlows>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 MaxResults => Int

Specify the maximum number of DataIntegrationFlows to fetch in one
paginated request.



=head2 NextToken => Str

The pagination token to fetch the next page of the
DataIntegrationFlows.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataIntegrationFlows in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

