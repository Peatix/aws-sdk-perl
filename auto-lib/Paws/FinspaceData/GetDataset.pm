
package Paws::FinspaceData::GetDataset;
  use Moose;
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasetsv2/{datasetId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::GetDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetDataset - Arguments for method GetDataset on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataset on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method GetDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataset.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $GetDatasetResponse = $finspace -api->GetDataset(
      DatasetId => 'MyStringValueLength1to255',

    );

    # Results:
    my $Alias              = $GetDatasetResponse->Alias;
    my $CreateTime         = $GetDatasetResponse->CreateTime;
    my $DatasetArn         = $GetDatasetResponse->DatasetArn;
    my $DatasetDescription = $GetDatasetResponse->DatasetDescription;
    my $DatasetId          = $GetDatasetResponse->DatasetId;
    my $DatasetTitle       = $GetDatasetResponse->DatasetTitle;
    my $Kind               = $GetDatasetResponse->Kind;
    my $LastModifiedTime   = $GetDatasetResponse->LastModifiedTime;
    my $SchemaDefinition   = $GetDatasetResponse->SchemaDefinition;
    my $Status             = $GetDatasetResponse->Status;

    # Returns a L<Paws::FinspaceData::GetDatasetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/GetDataset>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetId => Str

The unique identifier for a Dataset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataset in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

