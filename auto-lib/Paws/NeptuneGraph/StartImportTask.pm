
package Paws::NeptuneGraph::StartImportTask;
  use Moose;
  has BlankNodeHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blankNodeHandling');
  has FailOnError => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'failOnError');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has GraphIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'graphIdentifier', required => 1);
  has ImportOptions => (is => 'ro', isa => 'Paws::NeptuneGraph::ImportOptions', traits => ['NameInRequest'], request_name => 'importOptions');
  has ParquetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parquetType');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graphs/{graphIdentifier}/importtasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::StartImportTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::StartImportTask - Arguments for method StartImportTask on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartImportTask on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method StartImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartImportTask.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $StartImportTaskOutput = $neptune -graph->StartImportTask(
      GraphIdentifier   => 'MyGraphIdentifier',
      RoleArn           => 'MyRoleArn',
      Source            => 'MyString',
      BlankNodeHandling => 'convertToIri',        # OPTIONAL
      FailOnError       => 1,                     # OPTIONAL
      Format            => 'CSV',                 # OPTIONAL
      ImportOptions     => {
        Neptune => {
          S3ExportKmsKeyId =>
            'MyNeptuneImportOptionsS3ExportKmsKeyIdString',  # min: 1, max: 1024
          S3ExportPath =>
            'MyNeptuneImportOptionsS3ExportPathString',      # min: 1, max: 1024
          PreserveDefaultVertexLabels => 1,
          PreserveEdgeIds             => 1,
        },    # OPTIONAL
      },    # OPTIONAL
      ParquetType => 'COLUMNAR',    # OPTIONAL
    );

    # Results:
    my $Format        = $StartImportTaskOutput->Format;
    my $GraphId       = $StartImportTaskOutput->GraphId;
    my $ImportOptions = $StartImportTaskOutput->ImportOptions;
    my $ParquetType   = $StartImportTaskOutput->ParquetType;
    my $RoleArn       = $StartImportTaskOutput->RoleArn;
    my $Source        = $StartImportTaskOutput->Source;
    my $Status        = $StartImportTaskOutput->Status;
    my $TaskId        = $StartImportTaskOutput->TaskId;

    # Returns a L<Paws::NeptuneGraph::StartImportTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/StartImportTask>

=head1 ATTRIBUTES


=head2 BlankNodeHandling => Str

The method to handle blank nodes in the dataset. Currently, only
C<convertToIri> is supported, meaning blank nodes are converted to
unique IRIs at load time. Must be provided when format is C<ntriples>.
For more information, see Handling RDF values
(https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling).

Valid values are: C<"convertToIri">

=head2 FailOnError => Bool

If set to true, the task halts when an import error is encountered. If
set to false, the task skips the data that caused the error and
continues if possible.



=head2 Format => Str

Specifies the format of Amazon S3 data to be imported. Valid values are
CSV, which identifies the Gremlin CSV format or OPENCYPHER, which
identies the openCypher load format.

Valid values are: C<"CSV">, C<"OPEN_CYPHER">, C<"PARQUET">, C<"NTRIPLES">

=head2 B<REQUIRED> GraphIdentifier => Str

The unique identifier of the Neptune Analytics graph.



=head2 ImportOptions => L<Paws::NeptuneGraph::ImportOptions>





=head2 ParquetType => Str

The parquet type of the import task.

Valid values are: C<"COLUMNAR">

=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that will allow access to the data that is to
be imported.



=head2 B<REQUIRED> Source => Str

A URL identifying the location of the data to be imported. This can be
an Amazon S3 path, or can point to a Neptune database endpoint or
snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartImportTask in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

