
package Paws::PcaConnectorScep::GetConnector;
  use Moose;
  has ConnectorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConnectorArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connectors/{ConnectorArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorScep::GetConnectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::GetConnector - Arguments for method GetConnector on L<Paws::PcaConnectorScep>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnector on the
L<Private CA Connector for SCEP|Paws::PcaConnectorScep> service. Use the attributes of this class
as arguments to method GetConnector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnector.

=head1 SYNOPSIS

    my $pca-connector-scep = Paws->service('PcaConnectorScep');
    my $GetConnectorResponse = $pca -connector-scep->GetConnector(
      ConnectorArn => 'MyConnectorArn',

    );

    # Results:
    my $Connector = $GetConnectorResponse->Connector;

    # Returns a L<Paws::PcaConnectorScep::GetConnectorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep/GetConnector>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectorArn => Str

The Amazon Resource Name (ARN) of the connector.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnector in L<Paws::PcaConnectorScep>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

