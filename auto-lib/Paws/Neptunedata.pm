package Paws::Neptunedata;
  use Moose;
  sub service { 'neptune-db' }
  sub signing_name { 'neptune-db' }
  sub version { '2023-08-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelGremlinQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::CancelGremlinQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelLoaderJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::CancelLoaderJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMLDataProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::CancelMLDataProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMLModelTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::CancelMLModelTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelMLModelTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::CancelMLModelTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelOpenCypherQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::CancelOpenCypherQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMLEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::CreateMLEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMLEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::DeleteMLEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePropertygraphStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::DeletePropertygraphStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSparqlStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::DeleteSparqlStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteFastReset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ExecuteFastReset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteGremlinExplainQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ExecuteGremlinExplainQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteGremlinProfileQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ExecuteGremlinProfileQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteGremlinQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ExecuteGremlinQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteOpenCypherExplainQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ExecuteOpenCypherExplainQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteOpenCypherQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ExecuteOpenCypherQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEngineStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetEngineStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGremlinQueryStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetGremlinQueryStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLoaderJobStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetLoaderJobStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLDataProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetMLDataProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetMLEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLModelTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetMLModelTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLModelTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetMLModelTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetOpenCypherQueryStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetOpenCypherQueryStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPropertygraphStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetPropertygraphStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPropertygraphStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetPropertygraphStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPropertygraphSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetPropertygraphSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRDFGraphSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetRDFGraphSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSparqlStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetSparqlStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSparqlStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::GetSparqlStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGremlinQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ListGremlinQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLoaderJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ListLoaderJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMLDataProcessingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ListMLDataProcessingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMLEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ListMLEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMLModelTrainingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ListMLModelTrainingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMLModelTransformJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ListMLModelTransformJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListOpenCypherQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ListOpenCypherQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ManagePropertygraphStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ManagePropertygraphStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ManageSparqlStatistics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::ManageSparqlStatistics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartLoaderJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::StartLoaderJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMLDataProcessingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::StartMLDataProcessingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMLModelTrainingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::StartMLModelTrainingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMLModelTransformJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Neptunedata::StartMLModelTransformJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CancelGremlinQuery CancelLoaderJob CancelMLDataProcessingJob CancelMLModelTrainingJob CancelMLModelTransformJob CancelOpenCypherQuery CreateMLEndpoint DeleteMLEndpoint DeletePropertygraphStatistics DeleteSparqlStatistics ExecuteFastReset ExecuteGremlinExplainQuery ExecuteGremlinProfileQuery ExecuteGremlinQuery ExecuteOpenCypherExplainQuery ExecuteOpenCypherQuery GetEngineStatus GetGremlinQueryStatus GetLoaderJobStatus GetMLDataProcessingJob GetMLEndpoint GetMLModelTrainingJob GetMLModelTransformJob GetOpenCypherQueryStatus GetPropertygraphStatistics GetPropertygraphStream GetPropertygraphSummary GetRDFGraphSummary GetSparqlStatistics GetSparqlStream ListGremlinQueries ListLoaderJobs ListMLDataProcessingJobs ListMLEndpoints ListMLModelTrainingJobs ListMLModelTransformJobs ListOpenCypherQueries ManagePropertygraphStatistics ManageSparqlStatistics StartLoaderJob StartMLDataProcessingJob StartMLModelTrainingJob StartMLModelTransformJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata - Perl Interface to AWS Amazon NeptuneData

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Neptunedata');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Neptune Data API

The Amazon Neptune data API provides SDK support for more than 40 of
Neptune's data operations, including data loading, query execution,
data inquiry, and machine learning. It supports the Gremlin and
openCypher query languages, and is available in all SDK languages. It
automatically signs API requests and greatly simplifies integrating
Neptune into your applications.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelGremlinQuery

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::Neptunedata::CancelGremlinQuery>

Returns: a L<Paws::Neptunedata::CancelGremlinQueryOutput> instance

Cancels a Gremlin query. See Gremlin query cancellation
(https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status-cancel.html)
for more information.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:CancelQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery)
IAM action in that cluster.


=head2 CancelLoaderJob

=over

=item LoadId => Str


=back

Each argument is described in detail in: L<Paws::Neptunedata::CancelLoaderJob>

Returns: a L<Paws::Neptunedata::CancelLoaderJobOutput> instance

Cancels a specified load job. This is an HTTP C<DELETE> request. See
Neptune Loader Get-Status API
(https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm)
for more information.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:CancelLoaderJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelloaderjob)
IAM action in that cluster..


=head2 CancelMLDataProcessingJob

=over

=item Id => Str

=item [Clean => Bool]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::CancelMLDataProcessingJob>

Returns: a L<Paws::Neptunedata::CancelMLDataProcessingJobOutput> instance

Cancels a Neptune ML data processing job. See The C<dataprocessing>
command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:CancelMLDataProcessingJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmldataprocessingjob)
IAM action in that cluster.


=head2 CancelMLModelTrainingJob

=over

=item Id => Str

=item [Clean => Bool]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::CancelMLModelTrainingJob>

Returns: a L<Paws::Neptunedata::CancelMLModelTrainingJobOutput> instance

Cancels a Neptune ML model training job. See Model training using the
C<modeltraining> command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:CancelMLModelTrainingJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltrainingjob)
IAM action in that cluster.


=head2 CancelMLModelTransformJob

=over

=item Id => Str

=item [Clean => Bool]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::CancelMLModelTransformJob>

Returns: a L<Paws::Neptunedata::CancelMLModelTransformJobOutput> instance

Cancels a specified model transform job. See Use a trained model to
generate new model artifacts
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:CancelMLModelTransformJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelmlmodeltransformjob)
IAM action in that cluster.


=head2 CancelOpenCypherQuery

=over

=item QueryId => Str

=item [Silent => Bool]


=back

Each argument is described in detail in: L<Paws::Neptunedata::CancelOpenCypherQuery>

Returns: a L<Paws::Neptunedata::CancelOpenCypherQueryOutput> instance

Cancels a specified openCypher query. See Neptune openCypher status
endpoint
(https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html)
for more information.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:CancelQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#cancelquery)
IAM action in that cluster.


=head2 CreateMLEndpoint

=over

=item [Id => Str]

=item [InstanceCount => Int]

=item [InstanceType => Str]

=item [MlModelTrainingJobId => Str]

=item [MlModelTransformJobId => Str]

=item [ModelName => Str]

=item [NeptuneIamRoleArn => Str]

=item [Update => Bool]

=item [VolumeEncryptionKMSKey => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::CreateMLEndpoint>

Returns: a L<Paws::Neptunedata::CreateMLEndpointOutput> instance

Creates a new Neptune ML inference endpoint that lets you query one
specific model that the model-training process constructed. See
Managing inference endpoints using the endpoints command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:CreateMLEndpoint
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#createmlendpoint)
IAM action in that cluster.


=head2 DeleteMLEndpoint

=over

=item Id => Str

=item [Clean => Bool]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::DeleteMLEndpoint>

Returns: a L<Paws::Neptunedata::DeleteMLEndpointOutput> instance

Cancels the creation of a Neptune ML inference endpoint. See Managing
inference endpoints using the endpoints command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:DeleteMLEndpoint
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletemlendpoint)
IAM action in that cluster.


=head2 DeletePropertygraphStatistics

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Neptunedata::DeletePropertygraphStatistics>

Returns: a L<Paws::Neptunedata::DeletePropertygraphStatisticsOutput> instance

Deletes statistics for Gremlin and openCypher (property graph) data.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:DeleteStatistics
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics)
IAM action in that cluster.


=head2 DeleteSparqlStatistics

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Neptunedata::DeleteSparqlStatistics>

Returns: a L<Paws::Neptunedata::DeleteSparqlStatisticsOutput> instance

Deletes SPARQL statistics

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:DeleteStatistics
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletestatistics)
IAM action in that cluster.


=head2 ExecuteFastReset

=over

=item Action => Str

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ExecuteFastReset>

Returns: a L<Paws::Neptunedata::ExecuteFastResetOutput> instance

The fast reset REST API lets you reset a Neptune graph quicky and
easily, removing all of its data.

Neptune fast reset is a two-step process. First you call
C<ExecuteFastReset> with C<action> set to C<initiateDatabaseReset>.
This returns a UUID token which you then include when calling
C<ExecuteFastReset> again with C<action> set to
C<performDatabaseReset>. See Empty an Amazon Neptune DB cluster using
the fast reset API
(https://docs.aws.amazon.com/neptune/latest/userguide/manage-console-fast-reset.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:ResetDatabase
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#resetdatabase)
IAM action in that cluster.


=head2 ExecuteGremlinExplainQuery

=over

=item GremlinQuery => Str


=back

Each argument is described in detail in: L<Paws::Neptunedata::ExecuteGremlinExplainQuery>

Returns: a L<Paws::Neptunedata::ExecuteGremlinExplainQueryOutput> instance

Executes a Gremlin Explain query.

Amazon Neptune has added a Gremlin feature named C<explain> that
provides is a self-service tool for understanding the execution
approach being taken by the Neptune engine for the query. You invoke it
by adding an C<explain> parameter to an HTTP call that submits a
Gremlin query.

The explain feature provides information about the logical structure of
query execution plans. You can use this information to identify
potential evaluation and execution bottlenecks and to tune your query,
as explained in Tuning Gremlin queries
(https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-traversal-tuning.html).
You can also use query hints to improve query execution plans.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows one of the following IAM actions in
that cluster, depending on the query:

=over

=item *

neptune-db:ReadDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)

=item *

neptune-db:WriteDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery)

=item *

neptune-db:DeleteDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery)

=back

Note that the neptune-db:QueryLanguage:Gremlin
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of Gremlin queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 ExecuteGremlinProfileQuery

=over

=item GremlinQuery => Str

=item [Chop => Int]

=item [IndexOps => Bool]

=item [Results => Bool]

=item [Serializer => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ExecuteGremlinProfileQuery>

Returns: a L<Paws::Neptunedata::ExecuteGremlinProfileQueryOutput> instance

Executes a Gremlin Profile query, which runs a specified traversal,
collects various metrics about the run, and produces a profile report
as output. See Gremlin profile API in Neptune
(https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-profile-api.html)
for details.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:ReadDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)
IAM action in that cluster.

Note that the neptune-db:QueryLanguage:Gremlin
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of Gremlin queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 ExecuteGremlinQuery

=over

=item GremlinQuery => Str

=item [Serializer => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ExecuteGremlinQuery>

Returns: a L<Paws::Neptunedata::ExecuteGremlinQueryOutput> instance

This commands executes a Gremlin query. Amazon Neptune is compatible
with Apache TinkerPop3 and Gremlin, so you can use the Gremlin
traversal language to query the graph, as described under The Graph
(https://tinkerpop.apache.org/docs/current/reference/#graph) in the
Apache TinkerPop3 documentation. More details can also be found in
Accessing a Neptune graph with Gremlin
(https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-gremlin.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that enables one of the following IAM actions in
that cluster, depending on the query:

=over

=item *

neptune-db:ReadDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)

=item *

neptune-db:WriteDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery)

=item *

neptune-db:DeleteDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery)

=back

Note that the neptune-db:QueryLanguage:Gremlin
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of Gremlin queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 ExecuteOpenCypherExplainQuery

=over

=item ExplainMode => Str

=item OpenCypherQuery => Str

=item [Parameters => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ExecuteOpenCypherExplainQuery>

Returns: a L<Paws::Neptunedata::ExecuteOpenCypherExplainQueryOutput> instance

Executes an openCypher C<explain> request. See The openCypher explain
feature
(https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-explain.html)
for more information.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:ReadDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)
IAM action in that cluster.

Note that the neptune-db:QueryLanguage:OpenCypher
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of openCypher queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 ExecuteOpenCypherQuery

=over

=item OpenCypherQuery => Str

=item [Parameters => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ExecuteOpenCypherQuery>

Returns: a L<Paws::Neptunedata::ExecuteOpenCypherQueryOutput> instance

Executes an openCypher query. See Accessing the Neptune Graph with
openCypher
(https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher.html)
for more information.

Neptune supports building graph applications using openCypher, which is
currently one of the most popular query languages among developers
working with graph databases. Developers, business analysts, and data
scientists like openCypher's declarative, SQL-inspired syntax because
it provides a familiar structure in which to querying property graphs.

The openCypher language was originally developed by Neo4j, then
open-sourced in 2015 and contributed to the openCypher project
(https://opencypher.org/) under an Apache 2 open-source license.

Note that when invoking this operation in a Neptune cluster that has
IAM authentication enabled, the IAM user or role making the request
must have a policy attached that allows one of the following IAM
actions in that cluster, depending on the query:

=over

=item *

neptune-db:ReadDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#readdataviaquery)

=item *

neptune-db:WriteDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#writedataviaquery)

=item *

neptune-db:DeleteDataViaQuery
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#deletedataviaquery)

=back

Note also that the neptune-db:QueryLanguage:OpenCypher
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of openCypher queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 GetEngineStatus

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetEngineStatus>

Returns: a L<Paws::Neptunedata::GetEngineStatusOutput> instance

Retrieves the status of the graph database on the host.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetEngineStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getenginestatus)
IAM action in that cluster.


=head2 GetGremlinQueryStatus

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetGremlinQueryStatus>

Returns: a L<Paws::Neptunedata::GetGremlinQueryStatusOutput> instance

Gets the status of a specified Gremlin query.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetQueryStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus)
IAM action in that cluster.

Note that the neptune-db:QueryLanguage:Gremlin
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of Gremlin queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 GetLoaderJobStatus

=over

=item LoadId => Str

=item [Details => Bool]

=item [Errors => Bool]

=item [ErrorsPerPage => Int]

=item [Page => Int]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetLoaderJobStatus>

Returns: a L<Paws::Neptunedata::GetLoaderJobStatusOutput> instance

Gets status information about a specified load job. Neptune keeps track
of the most recent 1,024 bulk load jobs, and stores the last 10,000
error details per job.

See Neptune Loader Get-Status API
(https://docs.aws.amazon.com/neptune/latest/userguide/load-api-reference-status.htm)
for more information.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetLoaderJobStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getloaderjobstatus)
IAM action in that cluster..


=head2 GetMLDataProcessingJob

=over

=item Id => Str

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetMLDataProcessingJob>

Returns: a L<Paws::Neptunedata::GetMLDataProcessingJobOutput> instance

Retrieves information about a specified data processing job. See The
C<dataprocessing> command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:neptune-db:GetMLDataProcessingJobStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmldataprocessingjobstatus)
IAM action in that cluster.


=head2 GetMLEndpoint

=over

=item Id => Str

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetMLEndpoint>

Returns: a L<Paws::Neptunedata::GetMLEndpointOutput> instance

Retrieves details about an inference endpoint. See Managing inference
endpoints using the endpoints command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetMLEndpointStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlendpointstatus)
IAM action in that cluster.


=head2 GetMLModelTrainingJob

=over

=item Id => Str

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetMLModelTrainingJob>

Returns: a L<Paws::Neptunedata::GetMLModelTrainingJobOutput> instance

Retrieves information about a Neptune ML model training job. See Model
training using the C<modeltraining> command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:GetMLModelTrainingJobStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltrainingjobstatus)
IAM action in that cluster.


=head2 GetMLModelTransformJob

=over

=item Id => Str

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetMLModelTransformJob>

Returns: a L<Paws::Neptunedata::GetMLModelTransformJobOutput> instance

Gets information about a specified model transform job. See Use a
trained model to generate new model artifacts
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:GetMLModelTransformJobStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getmlmodeltransformjobstatus)
IAM action in that cluster.


=head2 GetOpenCypherQueryStatus

=over

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetOpenCypherQueryStatus>

Returns: a L<Paws::Neptunedata::GetOpenCypherQueryStatusOutput> instance

Retrieves the status of a specified openCypher query.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetQueryStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus)
IAM action in that cluster.

Note that the neptune-db:QueryLanguage:OpenCypher
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of openCypher queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 GetPropertygraphStatistics

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetPropertygraphStatistics>

Returns: a L<Paws::Neptunedata::GetPropertygraphStatisticsOutput> instance

Gets property graph statistics (Gremlin and openCypher).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetStatisticsStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstatisticsstatus)
IAM action in that cluster.


=head2 GetPropertygraphStream

=over

=item [CommitNum => Int]

=item [Encoding => Str]

=item [IteratorType => Str]

=item [Limit => Int]

=item [OpNum => Int]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetPropertygraphStream>

Returns: a L<Paws::Neptunedata::GetPropertygraphStreamOutput> instance

Gets a stream for a property graph.

With the Neptune Streams feature, you can generate a complete sequence
of change-log entries that record every change made to your graph data
as it happens. C<GetPropertygraphStream> lets you collect these
change-log entries for a property graph.

The Neptune streams feature needs to be enabled on your Neptune
DBcluster. To enable streams, set the neptune_streams
(https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams)
DB cluster parameter to C<1>.

See Capturing graph changes in real time using Neptune streams
(https://docs.aws.amazon.com/neptune/latest/userguide/streams.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetStreamRecords
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords)
IAM action in that cluster.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that enables one of the following IAM actions,
depending on the query:

Note that you can restrict property-graph queries using the following
IAM context keys:

=over

=item *

neptune-db:QueryLanguage:Gremlin
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)

=item *

neptune-db:QueryLanguage:OpenCypher
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)

=back

See Condition keys available in Neptune IAM data-access policy
statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 GetPropertygraphSummary

=over

=item [Mode => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetPropertygraphSummary>

Returns: a L<Paws::Neptunedata::GetPropertygraphSummaryOutput> instance

Gets a graph summary for a property graph.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetGraphSummary
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary)
IAM action in that cluster.


=head2 GetRDFGraphSummary

=over

=item [Mode => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetRDFGraphSummary>

Returns: a L<Paws::Neptunedata::GetRDFGraphSummaryOutput> instance

Gets a graph summary for an RDF graph.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetGraphSummary
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getgraphsummary)
IAM action in that cluster.


=head2 GetSparqlStatistics

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetSparqlStatistics>

Returns: a L<Paws::Neptunedata::GetSparqlStatisticsOutput> instance

Gets RDF statistics (SPARQL).


=head2 GetSparqlStream

=over

=item [CommitNum => Int]

=item [Encoding => Str]

=item [IteratorType => Str]

=item [Limit => Int]

=item [OpNum => Int]


=back

Each argument is described in detail in: L<Paws::Neptunedata::GetSparqlStream>

Returns: a L<Paws::Neptunedata::GetSparqlStreamOutput> instance

Gets a stream for an RDF graph.

With the Neptune Streams feature, you can generate a complete sequence
of change-log entries that record every change made to your graph data
as it happens. C<GetSparqlStream> lets you collect these change-log
entries for an RDF graph.

The Neptune streams feature needs to be enabled on your Neptune
DBcluster. To enable streams, set the neptune_streams
(https://docs.aws.amazon.com/neptune/latest/userguide/parameters.html#parameters-db-cluster-parameters-neptune_streams)
DB cluster parameter to C<1>.

See Capturing graph changes in real time using Neptune streams
(https://docs.aws.amazon.com/neptune/latest/userguide/streams.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetStreamRecords
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getstreamrecords)
IAM action in that cluster.

Note that the neptune-db:QueryLanguage:Sparql
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of SPARQL queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 ListGremlinQueries

=over

=item [IncludeWaiting => Bool]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ListGremlinQueries>

Returns: a L<Paws::Neptunedata::ListGremlinQueriesOutput> instance

Lists active Gremlin queries. See Gremlin query status API
(https://docs.aws.amazon.com/neptune/latest/userguide/gremlin-api-status.html)
for details about the output.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetQueryStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus)
IAM action in that cluster.

Note that the neptune-db:QueryLanguage:Gremlin
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of Gremlin queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 ListLoaderJobs

=over

=item [IncludeQueuedLoads => Bool]

=item [Limit => Int]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ListLoaderJobs>

Returns: a L<Paws::Neptunedata::ListLoaderJobsOutput> instance

Retrieves a list of the C<loadIds> for all active loader jobs.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:ListLoaderJobs
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listloaderjobs)
IAM action in that cluster..


=head2 ListMLDataProcessingJobs

=over

=item [MaxItems => Int]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ListMLDataProcessingJobs>

Returns: a L<Paws::Neptunedata::ListMLDataProcessingJobsOutput> instance

Returns a list of Neptune ML data processing jobs. See Listing active
data-processing jobs using the Neptune ML dataprocessing command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html#machine-learning-api-dataprocessing-list-jobs).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:ListMLDataProcessingJobs
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmldataprocessingjobs)
IAM action in that cluster.


=head2 ListMLEndpoints

=over

=item [MaxItems => Int]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ListMLEndpoints>

Returns: a L<Paws::Neptunedata::ListMLEndpointsOutput> instance

Lists existing inference endpoints. See Managing inference endpoints
using the endpoints command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-endpoints.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:ListMLEndpoints
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlendpoints)
IAM action in that cluster.


=head2 ListMLModelTrainingJobs

=over

=item [MaxItems => Int]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ListMLModelTrainingJobs>

Returns: a L<Paws::Neptunedata::ListMLModelTrainingJobsOutput> instance

Lists Neptune ML model-training jobs. See Model training using the
C<modeltraining> command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:neptune-db:ListMLModelTrainingJobs
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#neptune-db:listmlmodeltrainingjobs)
IAM action in that cluster.


=head2 ListMLModelTransformJobs

=over

=item [MaxItems => Int]

=item [NeptuneIamRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ListMLModelTransformJobs>

Returns: a L<Paws::Neptunedata::ListMLModelTransformJobsOutput> instance

Returns a list of model transform job IDs. See Use a trained model to
generate new model artifacts
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:ListMLModelTransformJobs
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#listmlmodeltransformjobs)
IAM action in that cluster.


=head2 ListOpenCypherQueries

=over

=item [IncludeWaiting => Bool]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ListOpenCypherQueries>

Returns: a L<Paws::Neptunedata::ListOpenCypherQueriesOutput> instance

Lists active openCypher queries. See Neptune openCypher status endpoint
(https://docs.aws.amazon.com/neptune/latest/userguide/access-graph-opencypher-status.html)
for more information.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:GetQueryStatus
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#getquerystatus)
IAM action in that cluster.

Note that the neptune-db:QueryLanguage:OpenCypher
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html#iam-neptune-condition-keys)
IAM condition key can be used in the policy document to restrict the
use of openCypher queries (see Condition keys available in Neptune IAM
data-access policy statements
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-data-condition-keys.html)).


=head2 ManagePropertygraphStatistics

=over

=item [Mode => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ManagePropertygraphStatistics>

Returns: a L<Paws::Neptunedata::ManagePropertygraphStatisticsOutput> instance

Manages the generation and use of property graph statistics.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:ManageStatistics
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics)
IAM action in that cluster.


=head2 ManageSparqlStatistics

=over

=item [Mode => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::ManageSparqlStatistics>

Returns: a L<Paws::Neptunedata::ManageSparqlStatisticsOutput> instance

Manages the generation and use of RDF graph statistics.

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:ManageStatistics
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#managestatistics)
IAM action in that cluster.


=head2 StartLoaderJob

=over

=item Format => Str

=item IamRoleArn => Str

=item S3BucketRegion => Str

=item Source => Str

=item [Dependencies => ArrayRef[Str|Undef]]

=item [FailOnError => Bool]

=item [Mode => Str]

=item [Parallelism => Str]

=item [ParserConfiguration => L<Paws::Neptunedata::StringValuedMap>]

=item [QueueRequest => Bool]

=item [UpdateSingleCardinalityProperties => Bool]

=item [UserProvidedEdgeIds => Bool]


=back

Each argument is described in detail in: L<Paws::Neptunedata::StartLoaderJob>

Returns: a L<Paws::Neptunedata::StartLoaderJobOutput> instance

Starts a Neptune bulk loader job to load data from an Amazon S3 bucket
into a Neptune DB instance. See Using the Amazon Neptune Bulk Loader to
Ingest Data
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the neptune-db:StartLoaderJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startloaderjob)
IAM action in that cluster.


=head2 StartMLDataProcessingJob

=over

=item InputDataS3Location => Str

=item ProcessedDataS3Location => Str

=item [ConfigFileName => Str]

=item [Id => Str]

=item [ModelType => Str]

=item [NeptuneIamRoleArn => Str]

=item [PreviousDataProcessingJobId => Str]

=item [ProcessingInstanceType => Str]

=item [ProcessingInstanceVolumeSizeInGB => Int]

=item [ProcessingTimeOutInSeconds => Int]

=item [S3OutputEncryptionKMSKey => Str]

=item [SagemakerIamRoleArn => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [Subnets => ArrayRef[Str|Undef]]

=item [VolumeEncryptionKMSKey => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::StartMLDataProcessingJob>

Returns: a L<Paws::Neptunedata::StartMLDataProcessingJobOutput> instance

Creates a new Neptune ML data processing job for processing the graph
data exported from Neptune for training. See The C<dataprocessing>
command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-dataprocessing.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:StartMLModelDataProcessingJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeldataprocessingjob)
IAM action in that cluster.


=head2 StartMLModelTrainingJob

=over

=item DataProcessingJobId => Str

=item TrainModelS3Location => Str

=item [BaseProcessingInstanceType => Str]

=item [CustomModelTrainingParameters => L<Paws::Neptunedata::CustomModelTrainingParameters>]

=item [EnableManagedSpotTraining => Bool]

=item [Id => Str]

=item [MaxHPONumberOfTrainingJobs => Int]

=item [MaxHPOParallelTrainingJobs => Int]

=item [NeptuneIamRoleArn => Str]

=item [PreviousModelTrainingJobId => Str]

=item [S3OutputEncryptionKMSKey => Str]

=item [SagemakerIamRoleArn => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [Subnets => ArrayRef[Str|Undef]]

=item [TrainingInstanceType => Str]

=item [TrainingInstanceVolumeSizeInGB => Int]

=item [TrainingTimeOutInSeconds => Int]

=item [VolumeEncryptionKMSKey => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::StartMLModelTrainingJob>

Returns: a L<Paws::Neptunedata::StartMLModelTrainingJobOutput> instance

Creates a new Neptune ML model training job. See Model training using
the C<modeltraining> command
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-api-modeltraining.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:StartMLModelTrainingJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltrainingjob)
IAM action in that cluster.


=head2 StartMLModelTransformJob

=over

=item ModelTransformOutputS3Location => Str

=item [BaseProcessingInstanceType => Str]

=item [BaseProcessingInstanceVolumeSizeInGB => Int]

=item [CustomModelTransformParameters => L<Paws::Neptunedata::CustomModelTransformParameters>]

=item [DataProcessingJobId => Str]

=item [Id => Str]

=item [MlModelTrainingJobId => Str]

=item [NeptuneIamRoleArn => Str]

=item [S3OutputEncryptionKMSKey => Str]

=item [SagemakerIamRoleArn => Str]

=item [SecurityGroupIds => ArrayRef[Str|Undef]]

=item [Subnets => ArrayRef[Str|Undef]]

=item [TrainingJobName => Str]

=item [VolumeEncryptionKMSKey => Str]


=back

Each argument is described in detail in: L<Paws::Neptunedata::StartMLModelTransformJob>

Returns: a L<Paws::Neptunedata::StartMLModelTransformJobOutput> instance

Creates a new model transform job. See Use a trained model to generate
new model artifacts
(https://docs.aws.amazon.com/neptune/latest/userguide/machine-learning-model-transform.html).

When invoking this operation in a Neptune cluster that has IAM
authentication enabled, the IAM user or role making the request must
have a policy attached that allows the
neptune-db:StartMLModelTransformJob
(https://docs.aws.amazon.com/neptune/latest/userguide/iam-dp-actions.html#startmlmodeltransformjob)
IAM action in that cluster.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

