
package Paws::Neptunedata::StartLoaderJob;
  use Moose;
  has Dependencies => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'dependencies');
  has FailOnError => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'failOnError');
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has IamRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRoleArn', required => 1);
  has Mode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'mode');
  has Parallelism => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parallelism');
  has ParserConfiguration => (is => 'ro', isa => 'Paws::Neptunedata::StringValuedMap', traits => ['NameInRequest'], request_name => 'parserConfiguration');
  has QueueRequest => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'queueRequest');
  has S3BucketRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region', required => 1);
  has Source => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'source', required => 1);
  has UpdateSingleCardinalityProperties => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'updateSingleCardinalityProperties');
  has UserProvidedEdgeIds => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'userProvidedEdgeIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartLoaderJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/loader');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::StartLoaderJobOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::StartLoaderJob - Arguments for method StartLoaderJob on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartLoaderJob on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method StartLoaderJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartLoaderJob.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $StartLoaderJobOutput = $neptune -db->StartLoaderJob(
      Format              => 'csv',
      IamRoleArn          => 'MyString',
      S3BucketRegion      => 'us-east-1',
      Source              => 'MyString',
      Dependencies        => [ 'MyString', ... ],              # OPTIONAL
      FailOnError         => 1,                                # OPTIONAL
      Mode                => 'RESUME',                         # OPTIONAL
      Parallelism         => 'LOW',                            # OPTIONAL
      ParserConfiguration => { 'MyString' => 'MyString', },    # OPTIONAL
      QueueRequest        => 1,                                # OPTIONAL
      UpdateSingleCardinalityProperties => 1,                  # OPTIONAL
      UserProvidedEdgeIds               => 1,                  # OPTIONAL
    );

    # Results:
    my $Payload = $StartLoaderJobOutput->Payload;
    my $Status  = $StartLoaderJobOutput->Status;

    # Returns a L<Paws::Neptunedata::StartLoaderJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/StartLoaderJob>

=head1 ATTRIBUTES


=head2 Dependencies => ArrayRef[Str|Undef]

This is an optional parameter that can make a queued load request
contingent on the successful completion of one or more previous jobs in
the queue.

Neptune can queue up as many as 64 load requests at a time, if their
C<queueRequest> parameters are set to C<"TRUE">. The C<dependencies>
parameter lets you make execution of such a queued request dependent on
the successful completion of one or more specified previous requests in
the queue.

For example, if load C<Job-A> and C<Job-B> are independent of each
other, but load C<Job-C> needs C<Job-A> and C<Job-B> to be finished
before it begins, proceed as follows:

=over

=item 1.

Submit C<load-job-A> and C<load-job-B> one after another in any order,
and save their load-ids.

=item 2.

Submit C<load-job-C> with the load-ids of the two jobs in its
C<dependencies> field:

=back

Because of the C<dependencies> parameter, the bulk loader will not
start C<Job-C> until C<Job-A> and C<Job-B> have completed successfully.
If either one of them fails, Job-C will not be executed, and its status
will be set to C<LOAD_FAILED_BECAUSE_DEPENDENCY_NOT_SATISFIED>.

You can set up multiple levels of dependency in this way, so that the
failure of one job will cause all requests that are directly or
indirectly dependent on it to be cancelled.



=head2 FailOnError => Bool

B<C<failOnError> > E<ndash> A flag to toggle a complete stop on an
error.

I<Allowed values>: C<"TRUE">, C<"FALSE">.

I<Default value>: C<"TRUE">.

When this parameter is set to C<"FALSE">, the loader tries to load all
the data in the location specified, skipping any entries with errors.

When this parameter is set to C<"TRUE">, the loader stops as soon as it
encounters an error. Data loaded up to that point persists.



=head2 B<REQUIRED> Format => Str

The format of the data. For more information about data formats for the
Neptune C<Loader> command, see Load Data Formats
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format.html).

B<Allowed values>

=over

=item *

B<C<csv> > for the Gremlin CSV data format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html).

=item *

B<C<opencypher> > for the openCypher CSV data format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html).

=item *

B<C<ntriples> > for the N-Triples RDF data format
(https://www.w3.org/TR/n-triples/).

=item *

B<C<nquads> > for the N-Quads RDF data format
(https://www.w3.org/TR/n-quads/).

=item *

B<C<rdfxml> > for the RDF\XML RDF data format
(https://www.w3.org/TR/rdf-syntax-grammar/).

=item *

B<C<turtle> > for the Turtle RDF data format
(https://www.w3.org/TR/turtle/).

=back


Valid values are: C<"csv">, C<"opencypher">, C<"ntriples">, C<"nquads">, C<"rdfxml">, C<"turtle">

=head2 B<REQUIRED> IamRoleArn => Str

The Amazon Resource Name (ARN) for an IAM role to be assumed by the
Neptune DB instance for access to the S3 bucket. The IAM role ARN
provided here should be attached to the DB cluster (see Adding the IAM
Role to an Amazon Neptune Cluster
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-IAM-add-role-cluster.html).



=head2 Mode => Str

The load job mode.

I<Allowed values>: C<RESUME>, C<NEW>, C<AUTO>.

I<Default value>: C<AUTO>.

B<>

=over

=item *

C<RESUME> E<ndash> In RESUME mode, the loader looks for a previous load
from this source, and if it finds one, resumes that load job. If no
previous load job is found, the loader stops.

The loader avoids reloading files that were successfully loaded in a
previous job. It only tries to process failed files. If you dropped
previously loaded data from your Neptune cluster, that data is not
reloaded in this mode. If a previous load job loaded all files from the
same source successfully, nothing is reloaded, and the loader returns
success.

=item *

C<NEW> E<ndash> In NEW mode, the creates a new load request regardless
of any previous loads. You can use this mode to reload all the data
from a source after dropping previously loaded data from your Neptune
cluster, or to load new data available at the same source.

=item *

C<AUTO> E<ndash> In AUTO mode, the loader looks for a previous load job
from the same source, and if it finds one, resumes that job, just as in
C<RESUME> mode.

If the loader doesn't find a previous load job from the same source, it
loads all data from the source, just as in C<NEW> mode.

=back


Valid values are: C<"RESUME">, C<"NEW">, C<"AUTO">

=head2 Parallelism => Str

The optional C<parallelism> parameter can be set to reduce the number
of threads used by the bulk load process.

I<Allowed values>:

=over

=item *

C<LOW> E<ndash> The number of threads used is the number of available
vCPUs divided by 8.

=item *

C<MEDIUM> E<ndash> The number of threads used is the number of
available vCPUs divided by 2.

=item *

C<HIGH> E<ndash> The number of threads used is the same as the number
of available vCPUs.

=item *

C<OVERSUBSCRIBE> E<ndash> The number of threads used is the number of
available vCPUs multiplied by 2. If this value is used, the bulk loader
takes up all available resources.

This does not mean, however, that the C<OVERSUBSCRIBE> setting results
in 100% CPU utilization. Because the load operation is I/O bound, the
highest CPU utilization to expect is in the 60% to 70% range.

=back

I<Default value>: C<HIGH>

The C<parallelism> setting can sometimes result in a deadlock between
threads when loading openCypher data. When this happens, Neptune
returns the C<LOAD_DATA_DEADLOCK> error. You can generally fix the
issue by setting C<parallelism> to a lower setting and retrying the
load command.

Valid values are: C<"LOW">, C<"MEDIUM">, C<"HIGH">, C<"OVERSUBSCRIBE">

=head2 ParserConfiguration => L<Paws::Neptunedata::StringValuedMap>

B<C<parserConfiguration> > E<ndash> An optional object with additional
parser configuration values. Each of the child parameters is also
optional:

B<>

=over

=item *

B<C<namedGraphUri> > E<ndash> The default graph for all RDF formats
when no graph is specified (for non-quads formats and NQUAD entries
with no graph).

The default is
C<https://aws.amazon.com/neptune/vocab/v01/DefaultNamedGraph>.

=item *

B<C<baseUri> > E<ndash> The base URI for RDF/XML and Turtle formats.

The default is C<https://aws.amazon.com/neptune/default>.

=item *

B<C<allowEmptyStrings> > E<ndash> Gremlin users need to be able to pass
empty string values("") as node and edge properties when loading CSV
data. If C<allowEmptyStrings> is set to C<false> (the default), such
empty strings are treated as nulls and are not loaded.

If C<allowEmptyStrings> is set to C<true>, the loader treats empty
strings as valid property values and loads them accordingly.

=back




=head2 QueueRequest => Bool

This is an optional flag parameter that indicates whether the load
request can be queued up or not.

You don't have to wait for one load job to complete before issuing the
next one, because Neptune can queue up as many as 64 jobs at a time,
provided that their C<queueRequest> parameters are all set to
C<"TRUE">. The queue order of the jobs will be first-in-first-out
(FIFO).

If the C<queueRequest> parameter is omitted or set to C<"FALSE">, the
load request will fail if another load job is already running.

I<Allowed values>: C<"TRUE">, C<"FALSE">.

I<Default value>: C<"FALSE">.



=head2 B<REQUIRED> S3BucketRegion => Str

The Amazon region of the S3 bucket. This must match the Amazon Region
of the DB cluster.

Valid values are: C<"us-east-1">, C<"us-east-2">, C<"us-west-1">, C<"us-west-2">, C<"ca-central-1">, C<"sa-east-1">, C<"eu-north-1">, C<"eu-west-1">, C<"eu-west-2">, C<"eu-west-3">, C<"eu-central-1">, C<"me-south-1">, C<"af-south-1">, C<"ap-east-1">, C<"ap-northeast-1">, C<"ap-northeast-2">, C<"ap-southeast-1">, C<"ap-southeast-2">, C<"ap-south-1">, C<"cn-north-1">, C<"cn-northwest-1">, C<"us-gov-west-1">, C<"us-gov-east-1">

=head2 B<REQUIRED> Source => Str

The C<source> parameter accepts an S3 URI that identifies a single
file, multiple files, a folder, or multiple folders. Neptune loads
every data file in any folder that is specified.

The URI can be in any of the following formats.

=over

=item *

C<s3://(bucket_name)/(object-key-name)>

=item *

C<https://s3.amazonaws.com/(bucket_name)/(object-key-name)>

=item *

C<https://s3.us-east-1.amazonaws.com/(bucket_name)/(object-key-name)>

=back

The C<object-key-name> element of the URI is equivalent to the prefix
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html#API_ListObjects_RequestParameters)
parameter in an S3 ListObjects
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_ListObjects.html)
API call. It identifies all the objects in the specified S3 bucket
whose names begin with that prefix. That can be a single file or
folder, or multiple files and/or folders.

The specified folder or folders can contain multiple vertex files and
multiple edge files.



=head2 UpdateSingleCardinalityProperties => Bool

C<updateSingleCardinalityProperties> is an optional parameter that
controls how the bulk loader treats a new value for single-cardinality
vertex or edge properties. This is not supported for loading openCypher
data.

I<Allowed values>: C<"TRUE">, C<"FALSE">.

I<Default value>: C<"FALSE">.

By default, or when C<updateSingleCardinalityProperties> is explicitly
set to C<"FALSE">, the loader treats a new value as an error, because
it violates single cardinality.

When C<updateSingleCardinalityProperties> is set to C<"TRUE">, on the
other hand, the bulk loader replaces the existing value with the new
one. If multiple edge or single-cardinality vertex property values are
provided in the source file(s) being loaded, the final value at the end
of the bulk load could be any one of those new values. The loader only
guarantees that the existing value has been replaced by one of the new
ones.



=head2 UserProvidedEdgeIds => Bool

This parameter is required only when loading openCypher data that
contains relationship IDs. It must be included and set to C<True> when
openCypher relationship IDs are explicitly provided in the load data
(recommended).

When C<userProvidedEdgeIds> is absent or set to C<True>, an C<:ID>
column must be present in every relationship file in the load.

When C<userProvidedEdgeIds> is present and set to C<False>,
relationship files in the load B<must not> contain an C<:ID> column.
Instead, the Neptune loader automatically generates an ID for each
relationship.

It's useful to provide relationship IDs explicitly so that the loader
can resume loading after error in the CSV data have been fixed, without
having to reload any relationships that have already been loaded. If
relationship IDs have not been explicitly assigned, the loader cannot
resume a failed load if any relationship file has had to be corrected,
and must instead reload all the relationships.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartLoaderJob in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

