package Paws::SupplyChain;
  use Moose;
  sub service { 'scn' }
  sub signing_name { 'scn' }
  sub version { '2024-01-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateBillOfMaterialsImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::CreateBillOfMaterialsImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataIntegrationFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::CreateDataIntegrationFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataLakeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::CreateDataLakeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataLakeNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::CreateDataLakeNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::CreateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataIntegrationFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::DeleteDataIntegrationFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataLakeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::DeleteDataLakeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataLakeNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::DeleteDataLakeNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::DeleteInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBillOfMaterialsImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::GetBillOfMaterialsImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataIntegrationEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::GetDataIntegrationEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataIntegrationFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::GetDataIntegrationFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataIntegrationFlowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::GetDataIntegrationFlowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::GetDataLakeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataLakeNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::GetDataLakeNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::GetInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataIntegrationEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::ListDataIntegrationEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataIntegrationFlowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::ListDataIntegrationFlowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataIntegrationFlows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::ListDataIntegrationFlows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataLakeDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::ListDataLakeDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataLakeNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::ListDataLakeNamespaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::ListInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendDataIntegrationEvent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::SendDataIntegrationEvent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataIntegrationFlow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::UpdateDataIntegrationFlow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataLakeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::UpdateDataLakeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataLakeNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::UpdateDataLakeNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SupplyChain::UpdateInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDataIntegrationEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataIntegrationEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataIntegrationEvents(@_, nextToken => $next_result->nextToken);
        push @{ $result->events }, @{ $next_result->events };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'events') foreach (@{ $result->events });
        $result = $self->ListDataIntegrationEvents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'events') foreach (@{ $result->events });
    }

    return undef
  }
  sub ListAllDataIntegrationFlowExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataIntegrationFlowExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataIntegrationFlowExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->flowExecutions }, @{ $next_result->flowExecutions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'flowExecutions') foreach (@{ $result->flowExecutions });
        $result = $self->ListDataIntegrationFlowExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'flowExecutions') foreach (@{ $result->flowExecutions });
    }

    return undef
  }
  sub ListAllDataIntegrationFlows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataIntegrationFlows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataIntegrationFlows(@_, nextToken => $next_result->nextToken);
        push @{ $result->flows }, @{ $next_result->flows };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'flows') foreach (@{ $result->flows });
        $result = $self->ListDataIntegrationFlows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'flows') foreach (@{ $result->flows });
    }

    return undef
  }
  sub ListAllDataLakeDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataLakeDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataLakeDatasets(@_, nextToken => $next_result->nextToken);
        push @{ $result->datasets }, @{ $next_result->datasets };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'datasets') foreach (@{ $result->datasets });
        $result = $self->ListDataLakeDatasets(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'datasets') foreach (@{ $result->datasets });
    }

    return undef
  }
  sub ListAllDataLakeNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDataLakeNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListDataLakeNamespaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->namespaces }, @{ $next_result->namespaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'namespaces') foreach (@{ $result->namespaces });
        $result = $self->ListDataLakeNamespaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'namespaces') foreach (@{ $result->namespaces });
    }

    return undef
  }
  sub ListAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->instances }, @{ $next_result->instances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'instances') foreach (@{ $result->instances });
        $result = $self->ListInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'instances') foreach (@{ $result->instances });
    }

    return undef
  }


  sub operations { qw/CreateBillOfMaterialsImportJob CreateDataIntegrationFlow CreateDataLakeDataset CreateDataLakeNamespace CreateInstance DeleteDataIntegrationFlow DeleteDataLakeDataset DeleteDataLakeNamespace DeleteInstance GetBillOfMaterialsImportJob GetDataIntegrationEvent GetDataIntegrationFlow GetDataIntegrationFlowExecution GetDataLakeDataset GetDataLakeNamespace GetInstance ListDataIntegrationEvents ListDataIntegrationFlowExecutions ListDataIntegrationFlows ListDataLakeDatasets ListDataLakeNamespaces ListInstances ListTagsForResource SendDataIntegrationEvent TagResource UntagResource UpdateDataIntegrationFlow UpdateDataLakeDataset UpdateDataLakeNamespace UpdateInstance / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SupplyChain - Perl Interface to AWS AWS Supply Chain

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SupplyChain');
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

AWS Supply Chain is a cloud-based application that works with your
enterprise resource planning (ERP) and supply chain management systems.
Using AWS Supply Chain, you can connect and extract your inventory,
supply, and demand related data from existing ERP or supply chain
systems into a single data model.

The AWS Supply Chain API supports configuration data import for Supply
Planning.

All AWS Supply chain API operations are Amazon-authenticated and
certificate-signed. They not only require the use of the AWS SDK, but
also allow for the exclusive use of AWS Identity and Access Management
users and roles to help facilitate access, trust, and permission
policies.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/scn-2024-01-01>


=head1 METHODS

=head2 CreateBillOfMaterialsImportJob

=over

=item InstanceId => Str

=item S3uri => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::CreateBillOfMaterialsImportJob>

Returns: a L<Paws::SupplyChain::CreateBillOfMaterialsImportJobResponse> instance

CreateBillOfMaterialsImportJob creates an import job for the Product
Bill Of Materials (BOM) entity. For information on the product_bom
entity, see the AWS Supply Chain User Guide.

The CSV file must be located in an Amazon S3 location accessible to AWS
Supply Chain. It is recommended to use the same Amazon S3 bucket
created during your AWS Supply Chain instance creation.


=head2 CreateDataIntegrationFlow

=over

=item InstanceId => Str

=item Name => Str

=item Sources => ArrayRef[L<Paws::SupplyChain::DataIntegrationFlowSource>]

=item Target => L<Paws::SupplyChain::DataIntegrationFlowTarget>

=item Transformation => L<Paws::SupplyChain::DataIntegrationFlowTransformation>

=item [Tags => L<Paws::SupplyChain::TagMap>]


=back

Each argument is described in detail in: L<Paws::SupplyChain::CreateDataIntegrationFlow>

Returns: a L<Paws::SupplyChain::CreateDataIntegrationFlowResponse> instance

Enables you to programmatically create a data pipeline to ingest data
from source systems such as Amazon S3 buckets, to a predefined Amazon
Web Services Supply Chain dataset (product, inbound_order) or a
temporary dataset along with the data transformation query provided
with the API.


=head2 CreateDataLakeDataset

=over

=item InstanceId => Str

=item Name => Str

=item Namespace => Str

=item [Description => Str]

=item [PartitionSpec => L<Paws::SupplyChain::DataLakeDatasetPartitionSpec>]

=item [Schema => L<Paws::SupplyChain::DataLakeDatasetSchema>]

=item [Tags => L<Paws::SupplyChain::TagMap>]


=back

Each argument is described in detail in: L<Paws::SupplyChain::CreateDataLakeDataset>

Returns: a L<Paws::SupplyChain::CreateDataLakeDatasetResponse> instance

Enables you to programmatically create an Amazon Web Services Supply
Chain data lake dataset. Developers can create the datasets using their
pre-defined or custom schema for a given instance ID, namespace, and
dataset name.


=head2 CreateDataLakeNamespace

=over

=item InstanceId => Str

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::SupplyChain::TagMap>]


=back

Each argument is described in detail in: L<Paws::SupplyChain::CreateDataLakeNamespace>

Returns: a L<Paws::SupplyChain::CreateDataLakeNamespaceResponse> instance

Enables you to programmatically create an Amazon Web Services Supply
Chain data lake namespace. Developers can create the namespaces for a
given instance ID.


=head2 CreateInstance

=over

=item [ClientToken => Str]

=item [InstanceDescription => Str]

=item [InstanceName => Str]

=item [KmsKeyArn => Str]

=item [Tags => L<Paws::SupplyChain::TagMap>]

=item [WebAppDnsDomain => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::CreateInstance>

Returns: a L<Paws::SupplyChain::CreateInstanceResponse> instance

Enables you to programmatically create an Amazon Web Services Supply
Chain instance by applying KMS keys and relevant information associated
with the API without using the Amazon Web Services console.

This is an asynchronous operation. Upon receiving a CreateInstance
request, Amazon Web Services Supply Chain immediately returns the
instance resource, instance ID, and the initializing state while
simultaneously creating all required Amazon Web Services resources for
an instance creation. You can use GetInstance to check the status of
the instance. If the instance results in an unhealthy state, you need
to check the error message, delete the current instance, and recreate a
new one based on the mitigation from the error message.


=head2 DeleteDataIntegrationFlow

=over

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::DeleteDataIntegrationFlow>

Returns: a L<Paws::SupplyChain::DeleteDataIntegrationFlowResponse> instance

Enable you to programmatically delete an existing data pipeline for the
provided Amazon Web Services Supply Chain instance and
DataIntegrationFlow name.


=head2 DeleteDataLakeDataset

=over

=item InstanceId => Str

=item Name => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::DeleteDataLakeDataset>

Returns: a L<Paws::SupplyChain::DeleteDataLakeDatasetResponse> instance

Enables you to programmatically delete an Amazon Web Services Supply
Chain data lake dataset. Developers can delete the existing datasets
for a given instance ID, namespace, and instance name.


=head2 DeleteDataLakeNamespace

=over

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::DeleteDataLakeNamespace>

Returns: a L<Paws::SupplyChain::DeleteDataLakeNamespaceResponse> instance

Enables you to programmatically delete an Amazon Web Services Supply
Chain data lake namespace and its underling datasets. Developers can
delete the existing namespaces for a given instance ID and namespace
name.


=head2 DeleteInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::DeleteInstance>

Returns: a L<Paws::SupplyChain::DeleteInstanceResponse> instance

Enables you to programmatically delete an Amazon Web Services Supply
Chain instance by deleting the KMS keys and relevant information
associated with the API without using the Amazon Web Services console.

This is an asynchronous operation. Upon receiving a DeleteInstance
request, Amazon Web Services Supply Chain immediately returns a
response with the instance resource, delete state while cleaning up all
Amazon Web Services resources created during the instance creation
process. You can use the GetInstance action to check the instance
status.


=head2 GetBillOfMaterialsImportJob

=over

=item InstanceId => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::GetBillOfMaterialsImportJob>

Returns: a L<Paws::SupplyChain::GetBillOfMaterialsImportJobResponse> instance

Get status and details of a BillOfMaterialsImportJob.


=head2 GetDataIntegrationEvent

=over

=item EventId => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::GetDataIntegrationEvent>

Returns: a L<Paws::SupplyChain::GetDataIntegrationEventResponse> instance

Enables you to programmatically view an Amazon Web Services Supply
Chain Data Integration Event. Developers can view the eventType,
eventGroupId, eventTimestamp, datasetTarget, datasetLoadExecution.


=head2 GetDataIntegrationFlow

=over

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::GetDataIntegrationFlow>

Returns: a L<Paws::SupplyChain::GetDataIntegrationFlowResponse> instance

Enables you to programmatically view a specific data pipeline for the
provided Amazon Web Services Supply Chain instance and
DataIntegrationFlow name.


=head2 GetDataIntegrationFlowExecution

=over

=item ExecutionId => Str

=item FlowName => Str

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::GetDataIntegrationFlowExecution>

Returns: a L<Paws::SupplyChain::GetDataIntegrationFlowExecutionResponse> instance

Get the flow execution.


=head2 GetDataLakeDataset

=over

=item InstanceId => Str

=item Name => Str

=item Namespace => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::GetDataLakeDataset>

Returns: a L<Paws::SupplyChain::GetDataLakeDatasetResponse> instance

Enables you to programmatically view an Amazon Web Services Supply
Chain data lake dataset. Developers can view the data lake dataset
information such as namespace, schema, and so on for a given instance
ID, namespace, and dataset name.


=head2 GetDataLakeNamespace

=over

=item InstanceId => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::GetDataLakeNamespace>

Returns: a L<Paws::SupplyChain::GetDataLakeNamespaceResponse> instance

Enables you to programmatically view an Amazon Web Services Supply
Chain data lake namespace. Developers can view the data lake namespace
information such as description for a given instance ID and namespace
name.


=head2 GetInstance

=over

=item InstanceId => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::GetInstance>

Returns: a L<Paws::SupplyChain::GetInstanceResponse> instance

Enables you to programmatically retrieve the information related to an
Amazon Web Services Supply Chain instance ID.


=head2 ListDataIntegrationEvents

=over

=item InstanceId => Str

=item [EventType => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::ListDataIntegrationEvents>

Returns: a L<Paws::SupplyChain::ListDataIntegrationEventsResponse> instance

Enables you to programmatically list all data integration events for
the provided Amazon Web Services Supply Chain instance.


=head2 ListDataIntegrationFlowExecutions

=over

=item FlowName => Str

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::ListDataIntegrationFlowExecutions>

Returns: a L<Paws::SupplyChain::ListDataIntegrationFlowExecutionsResponse> instance

List flow executions.


=head2 ListDataIntegrationFlows

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::ListDataIntegrationFlows>

Returns: a L<Paws::SupplyChain::ListDataIntegrationFlowsResponse> instance

Enables you to programmatically list all data pipelines for the
provided Amazon Web Services Supply Chain instance.


=head2 ListDataLakeDatasets

=over

=item InstanceId => Str

=item Namespace => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::ListDataLakeDatasets>

Returns: a L<Paws::SupplyChain::ListDataLakeDatasetsResponse> instance

Enables you to programmatically view the list of Amazon Web Services
Supply Chain data lake datasets. Developers can view the datasets and
the corresponding information such as namespace, schema, and so on for
a given instance ID and namespace.


=head2 ListDataLakeNamespaces

=over

=item InstanceId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::ListDataLakeNamespaces>

Returns: a L<Paws::SupplyChain::ListDataLakeNamespacesResponse> instance

Enables you to programmatically view the list of Amazon Web Services
Supply Chain data lake namespaces. Developers can view the namespaces
and the corresponding information such as description for a given
instance ID. Note that this API only return custom namespaces, instance
pre-defined namespaces are not included.


=head2 ListInstances

=over

=item [InstanceNameFilter => ArrayRef[Str|Undef]]

=item [InstanceStateFilter => ArrayRef[Str|Undef]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::ListInstances>

Returns: a L<Paws::SupplyChain::ListInstancesResponse> instance

List all Amazon Web Services Supply Chain instances for a specific
account. Enables you to programmatically list all Amazon Web Services
Supply Chain instances based on their account ID, instance name, and
state of the instance (active or delete).


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::SupplyChain::ListTagsForResource>

Returns: a L<Paws::SupplyChain::ListTagsForResourceResponse> instance

List all the tags for an Amazon Web ServicesSupply Chain resource. You
can list all the tags added to a resource. By listing the tags,
developers can view the tag level information on a resource and perform
actions such as, deleting a resource associated with a particular tag.


=head2 SendDataIntegrationEvent

=over

=item Data => Str

=item EventGroupId => Str

=item EventType => Str

=item InstanceId => Str

=item [ClientToken => Str]

=item [DatasetTarget => L<Paws::SupplyChain::DataIntegrationEventDatasetTargetConfiguration>]

=item [EventTimestamp => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::SendDataIntegrationEvent>

Returns: a L<Paws::SupplyChain::SendDataIntegrationEventResponse> instance

Send the data payload for the event with real-time data for analysis or
monitoring. The real-time data events are stored in an Amazon Web
Services service before being processed and stored in data lake.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::SupplyChain::TagMap>


=back

Each argument is described in detail in: L<Paws::SupplyChain::TagResource>

Returns: a L<Paws::SupplyChain::TagResourceResponse> instance

You can create tags during or after creating a resource such as
instance, data flow, or dataset in AWS Supply chain. During the data
ingestion process, you can add tags such as dev, test, or prod to data
flows created during the data ingestion process in the AWS Supply Chain
datasets. You can use these tags to identify a group of resources or a
single resource used by the developer.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::SupplyChain::UntagResource>

Returns: a L<Paws::SupplyChain::UntagResourceResponse> instance

You can delete tags for an Amazon Web Services Supply chain resource
such as instance, data flow, or dataset in AWS Supply Chain. During the
data ingestion process, you can delete tags such as dev, test, or prod
to data flows created during the data ingestion process in the AWS
Supply Chain datasets.


=head2 UpdateDataIntegrationFlow

=over

=item InstanceId => Str

=item Name => Str

=item [Sources => ArrayRef[L<Paws::SupplyChain::DataIntegrationFlowSource>]]

=item [Target => L<Paws::SupplyChain::DataIntegrationFlowTarget>]

=item [Transformation => L<Paws::SupplyChain::DataIntegrationFlowTransformation>]


=back

Each argument is described in detail in: L<Paws::SupplyChain::UpdateDataIntegrationFlow>

Returns: a L<Paws::SupplyChain::UpdateDataIntegrationFlowResponse> instance

Enables you to programmatically update an existing data pipeline to
ingest data from the source systems such as, Amazon S3 buckets, to a
predefined Amazon Web Services Supply Chain dataset (product,
inbound_order) or a temporary dataset along with the data
transformation query provided with the API.


=head2 UpdateDataLakeDataset

=over

=item InstanceId => Str

=item Name => Str

=item Namespace => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::UpdateDataLakeDataset>

Returns: a L<Paws::SupplyChain::UpdateDataLakeDatasetResponse> instance

Enables you to programmatically update an Amazon Web Services Supply
Chain data lake dataset. Developers can update the description of a
data lake dataset for a given instance ID, namespace, and dataset name.


=head2 UpdateDataLakeNamespace

=over

=item InstanceId => Str

=item Name => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::UpdateDataLakeNamespace>

Returns: a L<Paws::SupplyChain::UpdateDataLakeNamespaceResponse> instance

Enables you to programmatically update an Amazon Web Services Supply
Chain data lake namespace. Developers can update the description of a
data lake namespace for a given instance ID and namespace name.


=head2 UpdateInstance

=over

=item InstanceId => Str

=item [InstanceDescription => Str]

=item [InstanceName => Str]


=back

Each argument is described in detail in: L<Paws::SupplyChain::UpdateInstance>

Returns: a L<Paws::SupplyChain::UpdateInstanceResponse> instance

Enables you to programmatically update an Amazon Web Services Supply
Chain instance description by providing all the relevant information
such as account ID, instance ID and so on without using the AWS
console.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDataIntegrationEvents(sub { },InstanceId => Str, [EventType => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllDataIntegrationEvents(InstanceId => Str, [EventType => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - events, passing the object as the first parameter, and the string 'events' as the second parameter 

If not, it will return a a L<Paws::SupplyChain::ListDataIntegrationEventsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataIntegrationFlowExecutions(sub { },FlowName => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataIntegrationFlowExecutions(FlowName => Str, InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - flowExecutions, passing the object as the first parameter, and the string 'flowExecutions' as the second parameter 

If not, it will return a a L<Paws::SupplyChain::ListDataIntegrationFlowExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataIntegrationFlows(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataIntegrationFlows(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - flows, passing the object as the first parameter, and the string 'flows' as the second parameter 

If not, it will return a a L<Paws::SupplyChain::ListDataIntegrationFlowsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataLakeDatasets(sub { },InstanceId => Str, Namespace => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataLakeDatasets(InstanceId => Str, Namespace => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - datasets, passing the object as the first parameter, and the string 'datasets' as the second parameter 

If not, it will return a a L<Paws::SupplyChain::ListDataLakeDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDataLakeNamespaces(sub { },InstanceId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllDataLakeNamespaces(InstanceId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - namespaces, passing the object as the first parameter, and the string 'namespaces' as the second parameter 

If not, it will return a a L<Paws::SupplyChain::ListDataLakeNamespacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllInstances(sub { },[InstanceNameFilter => ArrayRef[Str|Undef], InstanceStateFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 ListAllInstances([InstanceNameFilter => ArrayRef[Str|Undef], InstanceStateFilter => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - instances, passing the object as the first parameter, and the string 'instances' as the second parameter 

If not, it will return a a L<Paws::SupplyChain::ListInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

