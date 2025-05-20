
package Paws::PcaConnectorScep::ListConnectors;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListConnectors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connectors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PcaConnectorScep::ListConnectorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PcaConnectorScep::ListConnectors - Arguments for method ListConnectors on L<Paws::PcaConnectorScep>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListConnectors on the
L<Private CA Connector for SCEP|Paws::PcaConnectorScep> service. Use the attributes of this class
as arguments to method ListConnectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListConnectors.

=head1 SYNOPSIS

    my $pca-connector-scep = Paws->service('PcaConnectorScep');
    my $ListConnectorsResponse = $pca -connector-scep->ListConnectors(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Connectors = $ListConnectorsResponse->Connectors;
    my $NextToken  = $ListConnectorsResponse->NextToken;

    # Returns a L<Paws::PcaConnectorScep::ListConnectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pca-connector-scep/ListConnectors>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects that you want Connector for SCEP to
return for this request. If more objects are available, in the
response, Connector for SCEP provides a C<NextToken> value that you can
use in a subsequent call to get the next batch of objects.



=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Connector for SCEP returns a C<NextToken> value
in the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListConnectors in L<Paws::PcaConnectorScep>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

