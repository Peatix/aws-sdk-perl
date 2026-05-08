package Paws::NeptuneGraph;
  use Moose;
  sub service { 'neptune-graph' }
  sub signing_name { 'neptune-graph' }
  sub version { '2023-11-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CancelExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::CancelExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::CancelImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::CancelQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::CreateGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGraphSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::CreateGraphSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGraphUsingImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::CreateGraphUsingImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePrivateGraphEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::CreatePrivateGraphEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::DeleteGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGraphSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::DeleteGraphSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePrivateGraphEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::DeletePrivateGraphEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExecuteQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ExecuteQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::GetExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::GetGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGraphSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::GetGraphSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGraphSummary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::GetGraphSummary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::GetImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPrivateGraphEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::GetPrivateGraphEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQuery {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::GetQuery', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ListExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGraphs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ListGraphs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGraphSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ListGraphSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListImportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ListImportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPrivateGraphEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ListPrivateGraphEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQueries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ListQueries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::ResetGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreGraphFromSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::RestoreGraphFromSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::StartExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::StartImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGraph {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::NeptuneGraph::UpdateGraph', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllExportTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListExportTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListExportTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->tasks }, @{ $next_result->tasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tasks') foreach (@{ $result->tasks });
        $result = $self->ListExportTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tasks') foreach (@{ $result->tasks });
    }

    return undef
  }
  sub ListAllGraphs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGraphs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGraphs(@_, nextToken => $next_result->nextToken);
        push @{ $result->graphs }, @{ $next_result->graphs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'graphs') foreach (@{ $result->graphs });
        $result = $self->ListGraphs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'graphs') foreach (@{ $result->graphs });
    }

    return undef
  }
  sub ListAllGraphSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListGraphSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListGraphSnapshots(@_, nextToken => $next_result->nextToken);
        push @{ $result->graphSnapshots }, @{ $next_result->graphSnapshots };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'graphSnapshots') foreach (@{ $result->graphSnapshots });
        $result = $self->ListGraphSnapshots(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'graphSnapshots') foreach (@{ $result->graphSnapshots });
    }

    return undef
  }
  sub ListAllImportTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListImportTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListImportTasks(@_, nextToken => $next_result->nextToken);
        push @{ $result->tasks }, @{ $next_result->tasks };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tasks') foreach (@{ $result->tasks });
        $result = $self->ListImportTasks(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tasks') foreach (@{ $result->tasks });
    }

    return undef
  }
  sub ListAllPrivateGraphEndpoints {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPrivateGraphEndpoints(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListPrivateGraphEndpoints(@_, nextToken => $next_result->nextToken);
        push @{ $result->privateGraphEndpoints }, @{ $next_result->privateGraphEndpoints };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'privateGraphEndpoints') foreach (@{ $result->privateGraphEndpoints });
        $result = $self->ListPrivateGraphEndpoints(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'privateGraphEndpoints') foreach (@{ $result->privateGraphEndpoints });
    }

    return undef
  }


  sub operations { qw/CancelExportTask CancelImportTask CancelQuery CreateGraph CreateGraphSnapshot CreateGraphUsingImportTask CreatePrivateGraphEndpoint DeleteGraph DeleteGraphSnapshot DeletePrivateGraphEndpoint ExecuteQuery GetExportTask GetGraph GetGraphSnapshot GetGraphSummary GetImportTask GetPrivateGraphEndpoint GetQuery ListExportTasks ListGraphs ListGraphSnapshots ListImportTasks ListPrivateGraphEndpoints ListQueries ListTagsForResource ResetGraph RestoreGraphFromSnapshot StartExportTask StartImportTask TagResource UntagResource UpdateGraph / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::NeptuneGraph - Perl Interface to AWS Amazon Neptune Graph

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('NeptuneGraph');
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

Neptune Analytics is a new analytics database engine for Amazon Neptune
that helps customers get to insights faster by quickly processing large
amounts of graph data, invoking popular graph analytic algorithms in
low-latency queries, and getting analytics results in seconds.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CancelExportTask

=over

=item TaskIdentifier => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::CancelExportTask>

Returns: a L<Paws::NeptuneGraph::CancelExportTaskOutput> instance

Cancel the specified export task.


=head2 CancelImportTask

=over

=item TaskIdentifier => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::CancelImportTask>

Returns: a L<Paws::NeptuneGraph::CancelImportTaskOutput> instance

Deletes the specified import task.


=head2 CancelQuery

=over

=item GraphIdentifier => Str

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::CancelQuery>

Returns: nothing

Cancels a specified query.


=head2 CreateGraph

=over

=item GraphName => Str

=item ProvisionedMemory => Int

=item [DeletionProtection => Bool]

=item [KmsKeyIdentifier => Str]

=item [PublicConnectivity => Bool]

=item [ReplicaCount => Int]

=item [Tags => L<Paws::NeptuneGraph::TagMap>]

=item [VectorSearchConfiguration => L<Paws::NeptuneGraph::VectorSearchConfiguration>]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::CreateGraph>

Returns: a L<Paws::NeptuneGraph::CreateGraphOutput> instance

Creates a new Neptune Analytics graph.


=head2 CreateGraphSnapshot

=over

=item GraphIdentifier => Str

=item SnapshotName => Str

=item [Tags => L<Paws::NeptuneGraph::TagMap>]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::CreateGraphSnapshot>

Returns: a L<Paws::NeptuneGraph::CreateGraphSnapshotOutput> instance

Creates a snapshot of the specific graph.


=head2 CreateGraphUsingImportTask

=over

=item GraphName => Str

=item RoleArn => Str

=item Source => Str

=item [BlankNodeHandling => Str]

=item [DeletionProtection => Bool]

=item [FailOnError => Bool]

=item [Format => Str]

=item [ImportOptions => L<Paws::NeptuneGraph::ImportOptions>]

=item [KmsKeyIdentifier => Str]

=item [MaxProvisionedMemory => Int]

=item [MinProvisionedMemory => Int]

=item [ParquetType => Str]

=item [PublicConnectivity => Bool]

=item [ReplicaCount => Int]

=item [Tags => L<Paws::NeptuneGraph::TagMap>]

=item [VectorSearchConfiguration => L<Paws::NeptuneGraph::VectorSearchConfiguration>]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::CreateGraphUsingImportTask>

Returns: a L<Paws::NeptuneGraph::CreateGraphUsingImportTaskOutput> instance

Creates a new Neptune Analytics graph and imports data into it, either
from Amazon Simple Storage Service (S3) or from a Neptune database or a
Neptune database snapshot.

The data can be loaded from files in S3 that in either the Gremlin CSV
format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-gremlin.html)
or the openCypher load format
(https://docs.aws.amazon.com/neptune/latest/userguide/bulk-load-tutorial-format-opencypher.html).


=head2 CreatePrivateGraphEndpoint

=over

=item GraphIdentifier => Str

=item [SubnetIds => ArrayRef[Str|Undef]]

=item [VpcId => Str]

=item [VpcSecurityGroupIds => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::CreatePrivateGraphEndpoint>

Returns: a L<Paws::NeptuneGraph::CreatePrivateGraphEndpointOutput> instance

Create a private graph endpoint to allow private access from to the
graph from within a VPC. You can attach security groups to the private
graph endpoint.

VPC endpoint charges apply.


=head2 DeleteGraph

=over

=item GraphIdentifier => Str

=item SkipSnapshot => Bool


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::DeleteGraph>

Returns: a L<Paws::NeptuneGraph::DeleteGraphOutput> instance

Deletes the specified graph. Graphs cannot be deleted if
delete-protection is enabled.


=head2 DeleteGraphSnapshot

=over

=item SnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::DeleteGraphSnapshot>

Returns: a L<Paws::NeptuneGraph::DeleteGraphSnapshotOutput> instance

Deletes the specifed graph snapshot.


=head2 DeletePrivateGraphEndpoint

=over

=item GraphIdentifier => Str

=item VpcId => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::DeletePrivateGraphEndpoint>

Returns: a L<Paws::NeptuneGraph::DeletePrivateGraphEndpointOutput> instance

Deletes a private graph endpoint.


=head2 ExecuteQuery

=over

=item GraphIdentifier => Str

=item Language => Str

=item QueryString => Str

=item [ExplainMode => Str]

=item [Parameters => L<Paws::NeptuneGraph::DocumentValuedMap>]

=item [PlanCache => Str]

=item [QueryTimeoutMilliseconds => Int]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ExecuteQuery>

Returns: a L<Paws::NeptuneGraph::ExecuteQueryOutput> instance

Execute an openCypher query.

When invoking this operation in a Neptune Analytics cluster, the IAM
user or role making the request must have a policy attached that allows
one of the following IAM actions in that cluster, depending on the
query:

=over

=item *

neptune-graph:ReadDataViaQuery

=item *

neptune-graph:WriteDataViaQuery

=item *

neptune-graph:DeleteDataViaQuery

=back



=head2 GetExportTask

=over

=item TaskIdentifier => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::GetExportTask>

Returns: a L<Paws::NeptuneGraph::GetExportTaskOutput> instance

Retrieves a specified export task.


=head2 GetGraph

=over

=item GraphIdentifier => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::GetGraph>

Returns: a L<Paws::NeptuneGraph::GetGraphOutput> instance

Gets information about a specified graph.


=head2 GetGraphSnapshot

=over

=item SnapshotIdentifier => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::GetGraphSnapshot>

Returns: a L<Paws::NeptuneGraph::GetGraphSnapshotOutput> instance

Retrieves a specified graph snapshot.


=head2 GetGraphSummary

=over

=item GraphIdentifier => Str

=item [Mode => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::GetGraphSummary>

Returns: a L<Paws::NeptuneGraph::GetGraphSummaryOutput> instance

Gets a graph summary for a property graph.


=head2 GetImportTask

=over

=item TaskIdentifier => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::GetImportTask>

Returns: a L<Paws::NeptuneGraph::GetImportTaskOutput> instance

Retrieves a specified import task.


=head2 GetPrivateGraphEndpoint

=over

=item GraphIdentifier => Str

=item VpcId => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::GetPrivateGraphEndpoint>

Returns: a L<Paws::NeptuneGraph::GetPrivateGraphEndpointOutput> instance

Retrieves information about a specified private endpoint.


=head2 GetQuery

=over

=item GraphIdentifier => Str

=item QueryId => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::GetQuery>

Returns: a L<Paws::NeptuneGraph::GetQueryOutput> instance

Retrieves the status of a specified query.

When invoking this operation in a Neptune Analytics cluster, the IAM
user or role making the request must have the
C<neptune-graph:GetQueryStatus> IAM action attached.


=head2 ListExportTasks

=over

=item [GraphIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ListExportTasks>

Returns: a L<Paws::NeptuneGraph::ListExportTasksOutput> instance

Retrieves a list of export tasks.


=head2 ListGraphs

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ListGraphs>

Returns: a L<Paws::NeptuneGraph::ListGraphsOutput> instance

Lists available Neptune Analytics graphs.


=head2 ListGraphSnapshots

=over

=item [GraphIdentifier => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ListGraphSnapshots>

Returns: a L<Paws::NeptuneGraph::ListGraphSnapshotsOutput> instance

Lists available snapshots of a specified Neptune Analytics graph.


=head2 ListImportTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ListImportTasks>

Returns: a L<Paws::NeptuneGraph::ListImportTasksOutput> instance

Lists import tasks.


=head2 ListPrivateGraphEndpoints

=over

=item GraphIdentifier => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ListPrivateGraphEndpoints>

Returns: a L<Paws::NeptuneGraph::ListPrivateGraphEndpointsOutput> instance

Lists private endpoints for a specified Neptune Analytics graph.


=head2 ListQueries

=over

=item GraphIdentifier => Str

=item MaxResults => Int

=item [State => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ListQueries>

Returns: a L<Paws::NeptuneGraph::ListQueriesOutput> instance

Lists active openCypher queries.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ListTagsForResource>

Returns: a L<Paws::NeptuneGraph::ListTagsForResourceOutput> instance

Lists tags associated with a specified resource.


=head2 ResetGraph

=over

=item GraphIdentifier => Str

=item SkipSnapshot => Bool


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::ResetGraph>

Returns: a L<Paws::NeptuneGraph::ResetGraphOutput> instance

Empties the data from a specified Neptune Analytics graph.


=head2 RestoreGraphFromSnapshot

=over

=item GraphName => Str

=item SnapshotIdentifier => Str

=item [DeletionProtection => Bool]

=item [ProvisionedMemory => Int]

=item [PublicConnectivity => Bool]

=item [ReplicaCount => Int]

=item [Tags => L<Paws::NeptuneGraph::TagMap>]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::RestoreGraphFromSnapshot>

Returns: a L<Paws::NeptuneGraph::RestoreGraphFromSnapshotOutput> instance

Restores a graph from a snapshot.


=head2 StartExportTask

=over

=item Destination => Str

=item Format => Str

=item GraphIdentifier => Str

=item KmsKeyIdentifier => Str

=item RoleArn => Str

=item [ExportFilter => L<Paws::NeptuneGraph::ExportFilter>]

=item [ParquetType => Str]

=item [Tags => L<Paws::NeptuneGraph::TagMap>]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::StartExportTask>

Returns: a L<Paws::NeptuneGraph::StartExportTaskOutput> instance

Export data from an existing Neptune Analytics graph to Amazon S3. The
graph state should be C<AVAILABLE>.


=head2 StartImportTask

=over

=item GraphIdentifier => Str

=item RoleArn => Str

=item Source => Str

=item [BlankNodeHandling => Str]

=item [FailOnError => Bool]

=item [Format => Str]

=item [ImportOptions => L<Paws::NeptuneGraph::ImportOptions>]

=item [ParquetType => Str]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::StartImportTask>

Returns: a L<Paws::NeptuneGraph::StartImportTaskOutput> instance

Import data into existing Neptune Analytics graph from Amazon Simple
Storage Service (S3). The graph needs to be empty and in the AVAILABLE
state.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::NeptuneGraph::TagMap>


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::TagResource>

Returns: a L<Paws::NeptuneGraph::TagResourceOutput> instance

Adds tags to the specified resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::UntagResource>

Returns: a L<Paws::NeptuneGraph::UntagResourceOutput> instance

Removes the specified tags from the specified resource.


=head2 UpdateGraph

=over

=item GraphIdentifier => Str

=item [DeletionProtection => Bool]

=item [ProvisionedMemory => Int]

=item [PublicConnectivity => Bool]


=back

Each argument is described in detail in: L<Paws::NeptuneGraph::UpdateGraph>

Returns: a L<Paws::NeptuneGraph::UpdateGraphOutput> instance

Updates the configuration of a specified Neptune Analytics graph




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllExportTasks(sub { },[GraphIdentifier => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllExportTasks([GraphIdentifier => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tasks, passing the object as the first parameter, and the string 'tasks' as the second parameter 

If not, it will return a a L<Paws::NeptuneGraph::ListExportTasksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGraphs(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllGraphs([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - graphs, passing the object as the first parameter, and the string 'graphs' as the second parameter 

If not, it will return a a L<Paws::NeptuneGraph::ListGraphsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllGraphSnapshots(sub { },[GraphIdentifier => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllGraphSnapshots([GraphIdentifier => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - graphSnapshots, passing the object as the first parameter, and the string 'graphSnapshots' as the second parameter 

If not, it will return a a L<Paws::NeptuneGraph::ListGraphSnapshotsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllImportTasks(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllImportTasks([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tasks, passing the object as the first parameter, and the string 'tasks' as the second parameter 

If not, it will return a a L<Paws::NeptuneGraph::ListImportTasksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPrivateGraphEndpoints(sub { },GraphIdentifier => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllPrivateGraphEndpoints(GraphIdentifier => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - privateGraphEndpoints, passing the object as the first parameter, and the string 'privateGraphEndpoints' as the second parameter 

If not, it will return a a L<Paws::NeptuneGraph::ListPrivateGraphEndpointsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

