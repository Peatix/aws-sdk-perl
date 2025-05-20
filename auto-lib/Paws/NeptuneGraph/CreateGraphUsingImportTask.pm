
package Paws::NeptuneGraph::CreateGraphUsingImportTask;
  use Moose;
  has BlankNodeHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blankNodeHandling');
  has DeletionProtection => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deletionProtection');
  has FailOnError => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'failOnError');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has GraphName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'graphName', required => 1);
  has ImportOptions => (is => 'ro', isa => 'Paws::NeptuneGraph::ImportOptions', traits => ['NameInRequest'], request_name => 'importOptions');
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier');
  has MaxProvisionedMemory => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxProvisionedMemory');
  has MinProvisionedMemory => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'minProvisionedMemory');
  has ParquetType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parquetType');
  has PublicConnectivity => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'publicConnectivity');
  has ReplicaCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'replicaCount');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::NeptuneGraph::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VectorSearchConfiguration => (is => 'ro', isa => 'Paws::NeptuneGraph::VectorSearchConfiguration', traits => ['NameInRequest'], request_name => 'vectorSearchConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGraphUsingImportTask');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/importtasks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NeptuneGraph::CreateGraphUsingImportTaskOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph::CreateGraphUsingImportTask - Arguments for method CreateGraphUsingImportTask on L<Paws::NeptuneGraph>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGraphUsingImportTask on the
L<Amazon Neptune Graph|Paws::NeptuneGraph> service. Use the attributes of this class
as arguments to method CreateGraphUsingImportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGraphUsingImportTask.

=head1 SYNOPSIS

    my $neptune-graph = Paws->service('NeptuneGraph');
    my $CreateGraphUsingImportTaskOutput =
      $neptune -graph->CreateGraphUsingImportTask(
      GraphName          => 'MyGraphName',
      RoleArn            => 'MyRoleArn',
      Source             => 'MyString',
      BlankNodeHandling  => 'convertToIri',    # OPTIONAL
      DeletionProtection => 1,                 # OPTIONAL
      FailOnError        => 1,                 # OPTIONAL
      Format             => 'CSV',             # OPTIONAL
      ImportOptions      => {
        Neptune => {
          S3ExportKmsKeyId =>
            'MyNeptuneImportOptionsS3ExportKmsKeyIdString',  # min: 1, max: 1024
          S3ExportPath =>
            'MyNeptuneImportOptionsS3ExportPathString',      # min: 1, max: 1024
          PreserveDefaultVertexLabels => 1,
          PreserveEdgeIds             => 1,
        },    # OPTIONAL
      },    # OPTIONAL
      KmsKeyIdentifier     => 'MyKmsKeyArn',    # OPTIONAL
      MaxProvisionedMemory => 1,                # OPTIONAL
      MinProvisionedMemory => 1,                # OPTIONAL
      ParquetType          => 'COLUMNAR',       # OPTIONAL
      PublicConnectivity   => 1,                # OPTIONAL
      ReplicaCount         => 1,                # OPTIONAL
      Tags                 => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VectorSearchConfiguration => {
        Dimension => 1,    # min: 1, max: 65536

      },    # OPTIONAL
      );

    # Results:
    my $Format        = $CreateGraphUsingImportTaskOutput->Format;
    my $GraphId       = $CreateGraphUsingImportTaskOutput->GraphId;
    my $ImportOptions = $CreateGraphUsingImportTaskOutput->ImportOptions;
    my $ParquetType   = $CreateGraphUsingImportTaskOutput->ParquetType;
    my $RoleArn       = $CreateGraphUsingImportTaskOutput->RoleArn;
    my $Source        = $CreateGraphUsingImportTaskOutput->Source;
    my $Status        = $CreateGraphUsingImportTaskOutput->Status;
    my $TaskId        = $CreateGraphUsingImportTaskOutput->TaskId;

    # Returns a L<Paws::NeptuneGraph::CreateGraphUsingImportTaskOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-graph/CreateGraphUsingImportTask>

=head1 ATTRIBUTES


=head2 BlankNodeHandling => Str

The method to handle blank nodes in the dataset. Currently, only
C<convertToIri> is supported, meaning blank nodes are converted to
unique IRIs at load time. Must be provided when format is C<ntriples>.
For more information, see Handling RDF values
(https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html#rdf-handling).

Valid values are: C<"convertToIri">

=head2 DeletionProtection => Bool

Indicates whether or not to enable deletion protection on the graph.
The graph canE<rsquo>t be deleted when deletion protection is enabled.
(C<true> or C<false>).



=head2 FailOnError => Bool

If set to C<true>, the task halts when an import error is encountered.
If set to C<false>, the task skips the data that caused the error and
continues if possible.



=head2 Format => Str

Specifies the format of S3 data to be imported. Valid values are
C<CSV>, which identifies the Gremlin CSV format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html),
C<OPEN_CYPHER>, which identifies the openCypher load format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html),
or C<ntriples>, which identifies the RDF n-triples
(https://docs.aws.amazon.com/neptune-analytics/latest/userguide/using-rdf-data.html)
format.

Valid values are: C<"CSV">, C<"OPEN_CYPHER">, C<"PARQUET">, C<"NTRIPLES">

=head2 B<REQUIRED> GraphName => Str

A name for the new Neptune Analytics graph to be created.

The name must contain from 1 to 63 letters, numbers, or hyphens, and
its first character must be a letter. It cannot end with a hyphen or
contain two consecutive hyphens. Only lowercase letters are allowed.



=head2 ImportOptions => L<Paws::NeptuneGraph::ImportOptions>

Contains options for controlling the import process. For example, if
the C<failOnError> key is set to C<false>, the import skips problem
data and attempts to continue (whereas if set to C<true>, the default,
or if omitted, the import operation halts immediately when an error is
encountered.



=head2 KmsKeyIdentifier => Str

Specifies a KMS key to use to encrypt data imported into the new graph.



=head2 MaxProvisionedMemory => Int

The maximum provisioned memory-optimized Neptune Capacity Units
(m-NCUs) to use for the graph. Default: 1024, or the approved upper
limit for your account.

If both the minimum and maximum values are specified, the final
C<provisioned-memory> will be chosen per the actual size of your
imported data. If neither value is specified, 128 m-NCUs are used.



=head2 MinProvisionedMemory => Int

The minimum provisioned memory-optimized Neptune Capacity Units
(m-NCUs) to use for the graph. Default: 16



=head2 ParquetType => Str

The parquet type of the import task.

Valid values are: C<"COLUMNAR">

=head2 PublicConnectivity => Bool

Specifies whether or not the graph can be reachable over the internet.
All access to graphs is IAM authenticated. (C<true> to enable, or
C<false> to disable).



=head2 ReplicaCount => Int

The number of replicas in other AZs to provision on the new graph after
import. Default = 0, Min = 0, Max = 2.

Additional charges equivalent to the m-NCUs selected for the graph
apply for each replica.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that will allow access to the data that is to
be imported.



=head2 B<REQUIRED> Source => Str

A URL identifying to the location of the data to be imported. This can
be an Amazon S3 path, or can point to a Neptune database endpoint or
snapshot.



=head2 Tags => L<Paws::NeptuneGraph::TagMap>

Adds metadata tags to the new graph. These tags can also be used with
cost allocation reporting, or used in a Condition statement in an IAM
policy.



=head2 VectorSearchConfiguration => L<Paws::NeptuneGraph::VectorSearchConfiguration>

Specifies the number of dimensions for vector embeddings that will be
loaded into the graph. The value is specified as C<dimension=>value.
Max = 65,535




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGraphUsingImportTask in L<Paws::NeptuneGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

