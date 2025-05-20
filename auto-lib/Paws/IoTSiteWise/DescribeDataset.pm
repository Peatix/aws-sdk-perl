
package Paws::IoTSiteWise::DescribeDataset;
  use Moose;
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTSiteWise::DescribeDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::DescribeDataset - Arguments for method DescribeDataset on L<Paws::IoTSiteWise>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDataset on the
L<AWS IoT SiteWise|Paws::IoTSiteWise> service. Use the attributes of this class
as arguments to method DescribeDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDataset.

=head1 SYNOPSIS

    my $iotsitewise = Paws->service('IoTSiteWise');
    my $DescribeDatasetResponse = $iotsitewise->DescribeDataset(
      DatasetId => 'MyCustomID',

    );

    # Results:
    my $DatasetArn            = $DescribeDatasetResponse->DatasetArn;
    my $DatasetCreationDate   = $DescribeDatasetResponse->DatasetCreationDate;
    my $DatasetDescription    = $DescribeDatasetResponse->DatasetDescription;
    my $DatasetId             = $DescribeDatasetResponse->DatasetId;
    my $DatasetLastUpdateDate = $DescribeDatasetResponse->DatasetLastUpdateDate;
    my $DatasetName           = $DescribeDatasetResponse->DatasetName;
    my $DatasetSource         = $DescribeDatasetResponse->DatasetSource;
    my $DatasetStatus         = $DescribeDatasetResponse->DatasetStatus;
    my $DatasetVersion        = $DescribeDatasetResponse->DatasetVersion;

    # Returns a L<Paws::IoTSiteWise::DescribeDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotsitewise/DescribeDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetId => Str

The ID of the dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDataset in L<Paws::IoTSiteWise>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

