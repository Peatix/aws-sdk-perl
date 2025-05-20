
package Paws::FinspaceData::CreateDataView;
  use Moose;
  has AsOfTimestamp => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'asOfTimestamp');
  has AutoUpdate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoUpdate');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DatasetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'datasetId', required => 1);
  has DestinationTypeParams => (is => 'ro', isa => 'Paws::FinspaceData::DataViewDestinationTypeParams', traits => ['NameInRequest'], request_name => 'destinationTypeParams', required => 1);
  has PartitionColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'partitionColumns');
  has SortColumns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sortColumns');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets/{datasetId}/dataviewsv2');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::CreateDataViewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreateDataView - Arguments for method CreateDataView on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataView on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method CreateDataView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataView.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $CreateDataViewResponse = $finspace -api->CreateDataView(
      DatasetId             => 'MyDatasetId',
      DestinationTypeParams => {
        DestinationType               => 'MyDataViewDestinationType',
        S3DestinationExportFileFormat =>
          'PARQUET',    # values: PARQUET, DELIMITED_TEXT; OPTIONAL
        S3DestinationExportFileFormatOptions => {
          'MyStringMapKey' =>
            'MyStringMapValue',    # key: max: 128, value: max: 1000
        },    # OPTIONAL
      },
      AsOfTimestamp    => 1,                  # OPTIONAL
      AutoUpdate       => 1,                  # OPTIONAL
      ClientToken      => 'MyClientToken',    # OPTIONAL
      PartitionColumns => [
        'MyStringValueLength1to255', ...      # min: 1, max: 255
      ],    # OPTIONAL
      SortColumns => [
        'MyStringValueLength1to255', ...    # min: 1, max: 255
      ],    # OPTIONAL
    );

    # Results:
    my $DataViewId = $CreateDataViewResponse->DataViewId;
    my $DatasetId  = $CreateDataViewResponse->DatasetId;

    # Returns a L<Paws::FinspaceData::CreateDataViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/CreateDataView>

=head1 ATTRIBUTES


=head2 AsOfTimestamp => Int

Beginning time to use for the Dataview. The value is determined as
epoch time in milliseconds. For example, the value for Monday, November
1, 2021 12:00:00 PM UTC is specified as 1635768000000.



=head2 AutoUpdate => Bool

Flag to indicate Dataview should be updated automatically.



=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatasetId => Str

The unique Dataset identifier that is used to create a Dataview.



=head2 B<REQUIRED> DestinationTypeParams => L<Paws::FinspaceData::DataViewDestinationTypeParams>

Options that define the destination type for the Dataview.



=head2 PartitionColumns => ArrayRef[Str|Undef]

Ordered set of column names used to partition data.



=head2 SortColumns => ArrayRef[Str|Undef]

Columns to be used for sorting the data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataView in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

