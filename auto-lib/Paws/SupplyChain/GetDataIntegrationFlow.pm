
package Paws::SupplyChain::GetDataIntegrationFlow;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataIntegrationFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/data-integration/instance/{instanceId}/data-integration-flows/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::GetDataIntegrationFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetDataIntegrationFlow - Arguments for method GetDataIntegrationFlow on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataIntegrationFlow on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method GetDataIntegrationFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataIntegrationFlow.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $GetDataIntegrationFlowResponse = $scn->GetDataIntegrationFlow(
      InstanceId => 'MyUUID',
      Name       => 'MyDataIntegrationFlowName',

    );

    # Results:
    my $Flow = $GetDataIntegrationFlowResponse->Flow;

    # Returns a L<Paws::SupplyChain::GetDataIntegrationFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/GetDataIntegrationFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the DataIntegrationFlow created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataIntegrationFlow in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

