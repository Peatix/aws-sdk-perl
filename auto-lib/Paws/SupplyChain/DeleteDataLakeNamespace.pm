
package Paws::SupplyChain::DeleteDataLakeNamespace;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataLakeNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/datalake/instance/{instanceId}/namespaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::DeleteDataLakeNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::DeleteDataLakeNamespace - Arguments for method DeleteDataLakeNamespace on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataLakeNamespace on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method DeleteDataLakeNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataLakeNamespace.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $DeleteDataLakeNamespaceResponse = $scn->DeleteDataLakeNamespace(
      InstanceId => 'MyUUID',
      Name       => 'MyDataLakeNamespaceName',

    );

    # Results:
    my $InstanceId = $DeleteDataLakeNamespaceResponse->InstanceId;
    my $Name       = $DeleteDataLakeNamespaceResponse->Name;

    # Returns a L<Paws::SupplyChain::DeleteDataLakeNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/DeleteDataLakeNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The AWS Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the namespace. Noted you cannot delete pre-defined
namespace like B<asc>, B<default> which are only deleted through
instance deletion.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataLakeNamespace in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

