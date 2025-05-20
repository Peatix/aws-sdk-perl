
package Paws::SupplyChain::UpdateDataLakeDataset;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'instanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'namespace', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataLakeDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SupplyChain::UpdateDataLakeDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain::UpdateDataLakeDataset - Arguments for method UpdateDataLakeDataset on L<Paws::SupplyChain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataLakeDataset on the
L<AWS Supply Chain|Paws::SupplyChain> service. Use the attributes of this class
as arguments to method UpdateDataLakeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataLakeDataset.

=head1 SYNOPSIS

    my $scn = Paws->service('SupplyChain');
    my $UpdateDataLakeDatasetResponse = $scn->UpdateDataLakeDataset(
      InstanceId  => 'MyUUID',
      Name        => 'MyDataLakeDatasetName',
      Namespace   => 'MyDataLakeNamespaceName',
      Description => 'MyDataLakeDatasetDescription',    # OPTIONAL
    );

    # Results:
    my $Dataset = $UpdateDataLakeDatasetResponse->Dataset;

    # Returns a L<Paws::SupplyChain::UpdateDataLakeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn/UpdateDataLakeDataset>

=head1 ATTRIBUTES


=head2 Description => Str

The updated description of the data lake dataset.



=head2 B<REQUIRED> InstanceId => Str

The Amazon Web Services Chain instance identifier.



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

This class forms part of L<Paws>, documenting arguments for method UpdateDataLakeDataset in L<Paws::SupplyChain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

