
package Paws::SupplyChain::GetDataLakeNamespace;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataLakeNamespace');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/datalake/instance/{instanceId}/namespaces/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::GetDataLakeNamespaceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetDataLakeNamespace - Arguments for method GetDataLakeNamespace on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataLakeNamespace on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method GetDataLakeNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataLakeNamespace.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $GetDataLakeNamespaceResponse = $scn->GetDataLakeNamespace(
      InstanceId => 'MyUUID',
      Name       => 'MyDataLakeNamespaceName',

    );

    # Results:
    my $Namespace = $GetDataLakeNamespaceResponse->Namespace;

    # Returns a L<Paws::SupplyChain::GetDataLakeNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/GetDataLakeNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the namespace. Besides the namespaces user created, you can
also specify the pre-defined namespaces:

=over

=item *

B<asc> - Pre-defined namespace containing Amazon Web Services Supply
Chain supported datasets, see
https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html).

=item *

B<default> - Pre-defined namespace containing datasets with custom
user-defined schemas.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataLakeNamespace in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

