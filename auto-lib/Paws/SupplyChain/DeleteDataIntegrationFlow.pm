
package Paws::SupplyChain::DeleteDataIntegrationFlow;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataIntegrationFlow');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/data-integration/instance/{instanceId}/data-integration-flows/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::DeleteDataIntegrationFlowResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::DeleteDataIntegrationFlow - Arguments for method DeleteDataIntegrationFlow on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataIntegrationFlow on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method DeleteDataIntegrationFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataIntegrationFlow.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $DeleteDataIntegrationFlowResponse = $scn->DeleteDataIntegrationFlow(
      InstanceId => 'MyUUID',
      Name       => 'MyDataIntegrationFlowName',

    );

    # Results:
    my $InstanceId = $DeleteDataIntegrationFlowResponse->InstanceId;
    my $Name       = $DeleteDataIntegrationFlowResponse->Name;

    # Returns a L<Paws::SupplyChain::DeleteDataIntegrationFlowResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/DeleteDataIntegrationFlow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the DataIntegrationFlow to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataIntegrationFlow in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

