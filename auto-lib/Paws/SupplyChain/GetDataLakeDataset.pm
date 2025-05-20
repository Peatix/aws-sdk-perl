
package Paws::SupplyChain::GetDataLakeDataset;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataLakeDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::GetDataLakeDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::GetDataLakeDataset - Arguments for method GetDataLakeDataset on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataLakeDataset on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method GetDataLakeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataLakeDataset.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $GetDataLakeDatasetResponse = $scn->GetDataLakeDataset(
      InstanceId => 'MyUUID',
      Name       => 'MyDataLakeDatasetName',
      Namespace  => 'MyDataLakeNamespaceName',

    );

    # Results:
    my $Dataset = $GetDataLakeDatasetResponse->Dataset;

    # Returns a L<Paws::SupplyChain::GetDataLakeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/GetDataLakeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Supply Chain instance identifier.



=head2 B<REQUIRED> Name => Str

The name of the dataset. For B<asc> namespace, the name must be one of
the supported data entities under
https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html).



=head2 B<REQUIRED> Namespace => Str

The namespace of the dataset, besides the custom defined namespace,
every instance comes with below pre-defined namespaces:

=over

=item *

B<asc> - For information on the Amazon Web Services Supply Chain
supported datasets see
https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html
(https://docs.aws.amazon.com/aws-supply-chain/latest/userguide/data-model-asc.html).

=item *

B<default> - For datasets with custom user-defined schemas.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataLakeDataset in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

