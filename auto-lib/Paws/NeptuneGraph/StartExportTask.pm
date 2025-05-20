
package Paws::NeptuneGraph::StartExportTask;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination', required => 1);
  has ExportFilter => (is => 'ro', isa => 'Paws::NeptuneGraph::ExportFilter', traits => ['NameInRequest'], request_name => 'exportFilter');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphIdentifier', required => 1);
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier', required => 1);
  has ParquetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parquetType');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NeptuneGraph::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/exporttasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::StartExportTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::StartExportTask - Arguments for method StartExportTask on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExportTask on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method StartExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExportTask.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $StartExportTaskOutput = $neptune -graph->StartExportTask(
      Destination      => 'MyStartExportTaskInputDestinationString',
      Format           => 'PARQUET',
      GraphIdentifier  => 'MyGraphIdentifier',
      KmsKeyIdentifier => 'MyKmsKeyArn',
      RoleArn          => 'MyRoleArn',
      ExportFilter     => {
        EdgeFilter => {
          'MyExportFilterLabel' => {
            Properties => {
              'MyExportFilterOutputPropertyName' => {
                MultiValueHandling =>
                  'TO_LIST',    # values: TO_LIST, PICK_FIRST; OPTIONAL
                OutputType         => 'MyExportFilterOutputDataType', # OPTIONAL
                SourcePropertyName => 'MyExportFilterSourcePropertyName'
                ,    # min: 1, max: 128; OPTIONAL
              },    # key: min: 1, max: 128
            },    # OPTIONAL
          },    # key: min: 1, max: 128
        },    # OPTIONAL
        VertexFilter => {
          'MyExportFilterLabel' => {
            Properties => {
              'MyExportFilterOutputPropertyName' => {
                MultiValueHandling =>
                  'TO_LIST',    # values: TO_LIST, PICK_FIRST; OPTIONAL
                OutputType         => 'MyExportFilterOutputDataType', # OPTIONAL
                SourcePropertyName => 'MyExportFilterSourcePropertyName'
                ,    # min: 1, max: 128; OPTIONAL
              },    # key: min: 1, max: 128
            },    # OPTIONAL
          },    # key: min: 1, max: 128
        },    # OPTIONAL
      },    # OPTIONAL
      ParquetType => 'COLUMNAR',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Destination      = $StartExportTaskOutput->Destination;
    my $ExportFilter     = $StartExportTaskOutput->ExportFilter;
    my $Format           = $StartExportTaskOutput->Format;
    my $GraphId          = $StartExportTaskOutput->GraphId;
    my $KmsKeyIdentifier = $StartExportTaskOutput->KmsKeyIdentifier;
    my $ParquetType      = $StartExportTaskOutput->ParquetType;
    my $RoleArn          = $StartExportTaskOutput->RoleArn;
    my $Status           = $StartExportTaskOutput->Status;
    my $StatusReason     = $StartExportTaskOutput->StatusReason;
    my $TaskId           = $StartExportTaskOutput->TaskId;

    # Returns a L<Paws::NeptuneGraph::StartExportTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/StartExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => Str

The Amazon S3 URI where data will be exported to.



=head2 ExportFilter => L<Paws::NeptuneGraph::ExportFilter>

The export filter of the export task.



=head2 B<REQUIRED> Format => Str

The format of the export task.

Valid values are: C<"PARQUET">, C<"CSV">

=head2 B<REQUIRED> GraphIdentifier => Str

The source graph identifier of the export task.



=head2 B<REQUIRED> KmsKeyIdentifier => Str

The KMS key identifier of the export task.



=head2 ParquetType => Str

The parquet type of the export task.

Valid values are: C<"COLUMNAR">

=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that will allow data to be exported to the
destination.



=head2 Tags => L<Paws::NeptuneGraph::TagMap>

Tags to be applied to the export task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExportTask in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

