
package Paws::SupplyChain::CreateDataLakeNamespace;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SupplyChain::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataLakeNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/datalake/instance/{instanceId}/namespaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::CreateDataLakeNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::CreateDataLakeNamespace - Arguments for method CreateDataLakeNamespace on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataLakeNamespace on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method CreateDataLakeNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataLakeNamespace.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $CreateDataLakeNamespaceResponse = $scn->CreateDataLakeNamespace(
      InstanceId  => 'MyUUID',
      Name        => 'MyDataLakeNamespaceName',
      Description => 'MyDataLakeNamespaceDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Namespace = $CreateDataLakeNamespaceResponse->Namespace;

    # Returns a L<Paws::SupplyChain::CreateDataLakeNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/CreateDataLakeNamespace>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the namespace.



=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the namespace. Noted you cannot create namespace with name
starting with B<asc>, B<default>, B<scn>, B<aws>, B<amazon>, B<amzn>



=head2 Tags => L<Paws::SupplyChain::TagMap>

The tags of the namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataLakeNamespace in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

