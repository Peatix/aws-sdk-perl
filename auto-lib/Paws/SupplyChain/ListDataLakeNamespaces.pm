
package Paws::SupplyChain::ListDataLakeNamespaces;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDataLakeNamespaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/datalake/instance/{instanceId}/namespaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::ListDataLakeNamespacesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::ListDataLakeNamespaces - Arguments for method ListDataLakeNamespaces on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDataLakeNamespaces on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method ListDataLakeNamespaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDataLakeNamespaces.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $ListDataLakeNamespacesResponse = $scn->ListDataLakeNamespaces(
      InstanceId => 'MyUUID',
      MaxResults => 1,                                 # OPTIONAL
      NextToken  => 'MyDataLakeNamespaceNextToken',    # OPTIONAL
    );

    # Results:
    my $Namespaces = $ListDataLakeNamespacesResponse->Namespaces;
    my $NextToken  = $ListDataLakeNamespacesResponse->NextToken;

    # Returns a L<Paws::SupplyChain::ListDataLakeNamespacesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/ListDataLakeNamespaces>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 MaxResults => Int

The max number of namespaces to fetch in this paginated request.



=head2 NextToken => Str

The pagination token to fetch next page of namespaces.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDataLakeNamespaces in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

