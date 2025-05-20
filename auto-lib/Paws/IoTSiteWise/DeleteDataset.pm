
package Paws::IoTSiteWise::DeleteDataset;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DeleteDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DeleteDataset - Arguments for method DeleteDataset on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataset on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DeleteDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataset.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DeleteDatasetResponse = $iotsitewise->DeleteDataset(
      DatasetId   => 'MyCustomID',
      ClientToken => 'MyClientToken',    # OPTIONAL
    );

    # Results:
    my $DatasetStatus = $DeleteDatasetResponse->DatasetStatus;

    # Returns a L<Paws::IoTSiteWise::DeleteDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DeleteDataset>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique case-sensitive identifier that you can provide to ensure the
idempotency of the request. Don't reuse this client token if a new
idempotent request is required.



=head2 B<REQUIRED> DatasetId => Str

The ID of the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataset in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

