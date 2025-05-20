
package Paws::FinspaceData::DeleteDataset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasetsv2/{datasetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::DeleteDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::DeleteDataset - Arguments for method DeleteDataset on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataset on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method DeleteDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataset.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $DeleteDatasetResponse = $finspace -api->DeleteDataset(
      DatasetId   => 'MyDatasetId',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $DatasetId = $DeleteDatasetResponse->DatasetId;

    # Returns a L<Paws::FinspaceData::DeleteDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/DeleteDataset>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatasetId => Str

The unique identifier of the Dataset to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataset in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

