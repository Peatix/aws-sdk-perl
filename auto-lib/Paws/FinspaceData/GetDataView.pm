
package Paws::FinspaceData::GetDataView;
  use Moose;
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);
  has DataViewId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataviewId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}/dataviewsv2/{dataviewId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::GetDataViewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetDataView - Arguments for method GetDataView on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataView on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method GetDataView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataView.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $GetDataViewResponse = $finspace -api->GetDataView(
      DataViewId => 'MyDataViewId',
      DatasetId  => 'MyDatasetId',

    );

    # Results:
    my $AsOfTimestamp         = $GetDataViewResponse->AsOfTimestamp;
    my $AutoUpdate            = $GetDataViewResponse->AutoUpdate;
    my $CreateTime            = $GetDataViewResponse->CreateTime;
    my $DataViewArn           = $GetDataViewResponse->DataViewArn;
    my $DataViewId            = $GetDataViewResponse->DataViewId;
    my $DatasetId             = $GetDataViewResponse->DatasetId;
    my $DestinationTypeParams = $GetDataViewResponse->DestinationTypeParams;
    my $ErrorInfo             = $GetDataViewResponse->ErrorInfo;
    my $LastModifiedTime      = $GetDataViewResponse->LastModifiedTime;
    my $PartitionColumns      = $GetDataViewResponse->PartitionColumns;
    my $SortColumns           = $GetDataViewResponse->SortColumns;
    my $Status                = $GetDataViewResponse->Status;

    # Returns a L<Paws::FinspaceData::GetDataViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/GetDataView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatasetId => Str

The unique identifier for the Dataset used in the Dataview.



=head2 B<REQUIRED> DataViewId => Str

The unique identifier for the Dataview.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataView in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

