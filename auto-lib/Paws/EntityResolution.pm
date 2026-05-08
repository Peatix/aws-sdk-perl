package Paws::EntityResolution;
  use Moose;
  sub service { 'entityresolution' }
  sub signing_name { 'entityresolution' }
  sub version { '2018-05-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddPolicyStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::AddPolicyStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeleteUniqueId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::BatchDeleteUniqueId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdMappingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::CreateIdMappingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIdNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::CreateIdNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMatchingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::CreateMatchingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSchemaMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::CreateSchemaMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdMappingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::DeleteIdMappingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIdNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::DeleteIdNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMatchingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::DeleteMatchingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicyStatement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::DeletePolicyStatement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSchemaMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::DeleteSchemaMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdMappingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetIdMappingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdMappingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetIdMappingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIdNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetIdNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMatchId {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetMatchId', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMatchingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetMatchingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMatchingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetMatchingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProviderService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetProviderService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::GetSchemaMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdMappingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListIdMappingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdMappingWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListIdMappingWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIdNamespaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListIdNamespaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMatchingJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListMatchingJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMatchingWorkflows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListMatchingWorkflows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProviderServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListProviderServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSchemaMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListSchemaMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::PutPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartIdMappingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::StartIdMappingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMatchingJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::StartMatchingJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdMappingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::UpdateIdMappingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIdNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::UpdateIdNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMatchingWorkflow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::UpdateMatchingWorkflow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSchemaMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EntityResolution::UpdateSchemaMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllIdMappingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdMappingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIdMappingJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobs }, @{ $next_result->jobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobs') foreach (@{ $result->jobs });
        $result = $self->ListIdMappingJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobs') foreach (@{ $result->jobs });
    }

    return undef
  }
  sub ListAllIdMappingWorkflows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdMappingWorkflows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIdMappingWorkflows(@_, nextToken => $next_result->nextToken);
        push @{ $result->workflowSummaries }, @{ $next_result->workflowSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workflowSummaries') foreach (@{ $result->workflowSummaries });
        $result = $self->ListIdMappingWorkflows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workflowSummaries') foreach (@{ $result->workflowSummaries });
    }

    return undef
  }
  sub ListAllIdNamespaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListIdNamespaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListIdNamespaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->idNamespaceSummaries }, @{ $next_result->idNamespaceSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'idNamespaceSummaries') foreach (@{ $result->idNamespaceSummaries });
        $result = $self->ListIdNamespaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'idNamespaceSummaries') foreach (@{ $result->idNamespaceSummaries });
    }

    return undef
  }
  sub ListAllMatchingJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMatchingJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMatchingJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->jobs }, @{ $next_result->jobs };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'jobs') foreach (@{ $result->jobs });
        $result = $self->ListMatchingJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'jobs') foreach (@{ $result->jobs });
    }

    return undef
  }
  sub ListAllMatchingWorkflows {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListMatchingWorkflows(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListMatchingWorkflows(@_, nextToken => $next_result->nextToken);
        push @{ $result->workflowSummaries }, @{ $next_result->workflowSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'workflowSummaries') foreach (@{ $result->workflowSummaries });
        $result = $self->ListMatchingWorkflows(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'workflowSummaries') foreach (@{ $result->workflowSummaries });
    }

    return undef
  }
  sub ListAllProviderServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListProviderServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListProviderServices(@_, nextToken => $next_result->nextToken);
        push @{ $result->providerServiceSummaries }, @{ $next_result->providerServiceSummaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'providerServiceSummaries') foreach (@{ $result->providerServiceSummaries });
        $result = $self->ListProviderServices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'providerServiceSummaries') foreach (@{ $result->providerServiceSummaries });
    }

    return undef
  }
  sub ListAllSchemaMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSchemaMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListSchemaMappings(@_, nextToken => $next_result->nextToken);
        push @{ $result->schemaList }, @{ $next_result->schemaList };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'schemaList') foreach (@{ $result->schemaList });
        $result = $self->ListSchemaMappings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'schemaList') foreach (@{ $result->schemaList });
    }

    return undef
  }


  sub operations { qw/AddPolicyStatement BatchDeleteUniqueId CreateIdMappingWorkflow CreateIdNamespace CreateMatchingWorkflow CreateSchemaMapping DeleteIdMappingWorkflow DeleteIdNamespace DeleteMatchingWorkflow DeletePolicyStatement DeleteSchemaMapping GetIdMappingJob GetIdMappingWorkflow GetIdNamespace GetMatchId GetMatchingJob GetMatchingWorkflow GetPolicy GetProviderService GetSchemaMapping ListIdMappingJobs ListIdMappingWorkflows ListIdNamespaces ListMatchingJobs ListMatchingWorkflows ListProviderServices ListSchemaMappings ListTagsForResource PutPolicy StartIdMappingJob StartMatchingJob TagResource UntagResource UpdateIdMappingWorkflow UpdateIdNamespace UpdateMatchingWorkflow UpdateSchemaMapping / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution - Perl Interface to AWS AWS EntityResolution

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EntityResolution');
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

Welcome to the I<Entity Resolution API Reference>.

Entity Resolution is an Amazon Web Services service that provides
pre-configured entity resolution capabilities that enable developers
and analysts at advertising and marketing companies to build an
accurate and complete view of their consumers.

With Entity Resolution, you can match source records containing
consumer identifiers, such as name, email address, and phone number.
This is true even when these records have incomplete or conflicting
identifiers. For example, Entity Resolution can effectively match a
source record from a customer relationship management (CRM) system with
a source record from a marketing system containing campaign
information.

To learn more about Entity Resolution concepts, procedures, and best
practices, see the Entity Resolution User Guide
(https://docs.aws.amazon.com/entityresolution/latest/userguide/what-is-service.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/entityresolution-2018-05-10>


=head1 METHODS

=head2 AddPolicyStatement

=over

=item Action => ArrayRef[Str|Undef]

=item Arn => Str

=item Effect => Str

=item Principal => ArrayRef[Str|Undef]

=item StatementId => Str

=item [Condition => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::AddPolicyStatement>

Returns: a L<Paws::EntityResolution::AddPolicyStatementOutput> instance

Adds a policy statement object. To retrieve a list of existing policy
statements, use the C<GetPolicy> API.


=head2 BatchDeleteUniqueId

=over

=item UniqueIds => ArrayRef[Str|Undef]

=item WorkflowName => Str

=item [InputSource => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::BatchDeleteUniqueId>

Returns: a L<Paws::EntityResolution::BatchDeleteUniqueIdOutput> instance

Deletes multiple unique IDs in a matching workflow.


=head2 CreateIdMappingWorkflow

=over

=item IdMappingTechniques => L<Paws::EntityResolution::IdMappingTechniques>

=item InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowInputSource>]

=item WorkflowName => Str

=item [Description => Str]

=item [OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowOutputSource>]]

=item [RoleArn => Str]

=item [Tags => L<Paws::EntityResolution::TagMap>]


=back

Each argument is described in detail in: L<Paws::EntityResolution::CreateIdMappingWorkflow>

Returns: a L<Paws::EntityResolution::CreateIdMappingWorkflowOutput> instance

Creates an C<IdMappingWorkflow> object which stores the configuration
of the data processing job to be run. Each C<IdMappingWorkflow> must
have a unique workflow name. To modify an existing workflow, use the
C<UpdateIdMappingWorkflow> API.


=head2 CreateIdNamespace

=over

=item IdNamespaceName => Str

=item Type => Str

=item [Description => Str]

=item [IdMappingWorkflowProperties => ArrayRef[L<Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties>]]

=item [InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdNamespaceInputSource>]]

=item [RoleArn => Str]

=item [Tags => L<Paws::EntityResolution::TagMap>]


=back

Each argument is described in detail in: L<Paws::EntityResolution::CreateIdNamespace>

Returns: a L<Paws::EntityResolution::CreateIdNamespaceOutput> instance

Creates an ID namespace object which will help customers provide
metadata explaining their dataset and how to use it. Each ID namespace
must have a unique name. To modify an existing ID namespace, use the
C<UpdateIdNamespace> API.


=head2 CreateMatchingWorkflow

=over

=item InputSourceConfig => ArrayRef[L<Paws::EntityResolution::InputSource>]

=item OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::OutputSource>]

=item ResolutionTechniques => L<Paws::EntityResolution::ResolutionTechniques>

=item RoleArn => Str

=item WorkflowName => Str

=item [Description => Str]

=item [IncrementalRunConfig => L<Paws::EntityResolution::IncrementalRunConfig>]

=item [Tags => L<Paws::EntityResolution::TagMap>]


=back

Each argument is described in detail in: L<Paws::EntityResolution::CreateMatchingWorkflow>

Returns: a L<Paws::EntityResolution::CreateMatchingWorkflowOutput> instance

Creates a C<MatchingWorkflow> object which stores the configuration of
the data processing job to be run. It is important to note that there
should not be a pre-existing C<MatchingWorkflow> with the same name. To
modify an existing workflow, utilize the C<UpdateMatchingWorkflow> API.


=head2 CreateSchemaMapping

=over

=item MappedInputFields => ArrayRef[L<Paws::EntityResolution::SchemaInputAttribute>]

=item SchemaName => Str

=item [Description => Str]

=item [Tags => L<Paws::EntityResolution::TagMap>]


=back

Each argument is described in detail in: L<Paws::EntityResolution::CreateSchemaMapping>

Returns: a L<Paws::EntityResolution::CreateSchemaMappingOutput> instance

Creates a schema mapping, which defines the schema of the input
customer records table. The C<SchemaMapping> also provides Entity
Resolution with some metadata about the table, such as the attribute
types of the columns and which columns to match on.


=head2 DeleteIdMappingWorkflow

=over

=item WorkflowName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::DeleteIdMappingWorkflow>

Returns: a L<Paws::EntityResolution::DeleteIdMappingWorkflowOutput> instance

Deletes the C<IdMappingWorkflow> with a given name. This operation will
succeed even if a workflow with the given name does not exist.


=head2 DeleteIdNamespace

=over

=item IdNamespaceName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::DeleteIdNamespace>

Returns: a L<Paws::EntityResolution::DeleteIdNamespaceOutput> instance

Deletes the C<IdNamespace> with a given name.


=head2 DeleteMatchingWorkflow

=over

=item WorkflowName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::DeleteMatchingWorkflow>

Returns: a L<Paws::EntityResolution::DeleteMatchingWorkflowOutput> instance

Deletes the C<MatchingWorkflow> with a given name. This operation will
succeed even if a workflow with the given name does not exist.


=head2 DeletePolicyStatement

=over

=item Arn => Str

=item StatementId => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::DeletePolicyStatement>

Returns: a L<Paws::EntityResolution::DeletePolicyStatementOutput> instance

Deletes the policy statement.


=head2 DeleteSchemaMapping

=over

=item SchemaName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::DeleteSchemaMapping>

Returns: a L<Paws::EntityResolution::DeleteSchemaMappingOutput> instance

Deletes the C<SchemaMapping> with a given name. This operation will
succeed even if a schema with the given name does not exist. This
operation will fail if there is a C<MatchingWorkflow> object that
references the C<SchemaMapping> in the workflow's C<InputSourceConfig>.


=head2 GetIdMappingJob

=over

=item JobId => Str

=item WorkflowName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetIdMappingJob>

Returns: a L<Paws::EntityResolution::GetIdMappingJobOutput> instance

Gets the status, metrics, and errors (if there are any) that are
associated with a job.


=head2 GetIdMappingWorkflow

=over

=item WorkflowName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetIdMappingWorkflow>

Returns: a L<Paws::EntityResolution::GetIdMappingWorkflowOutput> instance

Returns the C<IdMappingWorkflow> with a given name, if it exists.


=head2 GetIdNamespace

=over

=item IdNamespaceName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetIdNamespace>

Returns: a L<Paws::EntityResolution::GetIdNamespaceOutput> instance

Returns the C<IdNamespace> with a given name, if it exists.


=head2 GetMatchId

=over

=item Record => L<Paws::EntityResolution::RecordAttributeMap>

=item WorkflowName => Str

=item [ApplyNormalization => Bool]


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetMatchId>

Returns: a L<Paws::EntityResolution::GetMatchIdOutput> instance

Returns the corresponding Match ID of a customer record if the record
has been processed in a rule-based matching workflow or ML matching
workflow.

You can call this API as a dry run of an incremental load on the
rule-based matching workflow.


=head2 GetMatchingJob

=over

=item JobId => Str

=item WorkflowName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetMatchingJob>

Returns: a L<Paws::EntityResolution::GetMatchingJobOutput> instance

Gets the status, metrics, and errors (if there are any) that are
associated with a job.


=head2 GetMatchingWorkflow

=over

=item WorkflowName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetMatchingWorkflow>

Returns: a L<Paws::EntityResolution::GetMatchingWorkflowOutput> instance

Returns the C<MatchingWorkflow> with a given name, if it exists.


=head2 GetPolicy

=over

=item Arn => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetPolicy>

Returns: a L<Paws::EntityResolution::GetPolicyOutput> instance

Returns the resource-based policy.


=head2 GetProviderService

=over

=item ProviderName => Str

=item ProviderServiceName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetProviderService>

Returns: a L<Paws::EntityResolution::GetProviderServiceOutput> instance

Returns the C<ProviderService> of a given name.


=head2 GetSchemaMapping

=over

=item SchemaName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::GetSchemaMapping>

Returns: a L<Paws::EntityResolution::GetSchemaMappingOutput> instance

Returns the SchemaMapping of a given name.


=head2 ListIdMappingJobs

=over

=item WorkflowName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListIdMappingJobs>

Returns: a L<Paws::EntityResolution::ListIdMappingJobsOutput> instance

Lists all ID mapping jobs for a given workflow.


=head2 ListIdMappingWorkflows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListIdMappingWorkflows>

Returns: a L<Paws::EntityResolution::ListIdMappingWorkflowsOutput> instance

Returns a list of all the C<IdMappingWorkflows> that have been created
for an Amazon Web Services account.


=head2 ListIdNamespaces

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListIdNamespaces>

Returns: a L<Paws::EntityResolution::ListIdNamespacesOutput> instance

Returns a list of all ID namespaces.


=head2 ListMatchingJobs

=over

=item WorkflowName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListMatchingJobs>

Returns: a L<Paws::EntityResolution::ListMatchingJobsOutput> instance

Lists all jobs for a given workflow.


=head2 ListMatchingWorkflows

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListMatchingWorkflows>

Returns: a L<Paws::EntityResolution::ListMatchingWorkflowsOutput> instance

Returns a list of all the C<MatchingWorkflows> that have been created
for an Amazon Web Services account.


=head2 ListProviderServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProviderName => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListProviderServices>

Returns: a L<Paws::EntityResolution::ListProviderServicesOutput> instance

Returns a list of all the C<ProviderServices> that are available in
this Amazon Web Services Region.


=head2 ListSchemaMappings

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListSchemaMappings>

Returns: a L<Paws::EntityResolution::ListSchemaMappingsOutput> instance

Returns a list of all the C<SchemaMappings> that have been created for
an Amazon Web Services account.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::ListTagsForResource>

Returns: a L<Paws::EntityResolution::ListTagsForResourceOutput> instance

Displays the tags associated with an Entity Resolution resource. In
Entity Resolution, C<SchemaMapping>, and C<MatchingWorkflow> can be
tagged.


=head2 PutPolicy

=over

=item Arn => Str

=item Policy => Str

=item [Token => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::PutPolicy>

Returns: a L<Paws::EntityResolution::PutPolicyOutput> instance

Updates the resource-based policy.


=head2 StartIdMappingJob

=over

=item WorkflowName => Str

=item [OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingJobOutputSource>]]


=back

Each argument is described in detail in: L<Paws::EntityResolution::StartIdMappingJob>

Returns: a L<Paws::EntityResolution::StartIdMappingJobOutput> instance

Starts the C<IdMappingJob> of a workflow. The workflow must have
previously been created using the C<CreateIdMappingWorkflow> endpoint.


=head2 StartMatchingJob

=over

=item WorkflowName => Str


=back

Each argument is described in detail in: L<Paws::EntityResolution::StartMatchingJob>

Returns: a L<Paws::EntityResolution::StartMatchingJobOutput> instance

Starts the C<MatchingJob> of a workflow. The workflow must have
previously been created using the C<CreateMatchingWorkflow> endpoint.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::EntityResolution::TagMap>


=back

Each argument is described in detail in: L<Paws::EntityResolution::TagResource>

Returns: a L<Paws::EntityResolution::TagResourceOutput> instance

Assigns one or more tags (key-value pairs) to the specified Entity
Resolution resource. Tags can help you organize and categorize your
resources. You can also use them to scope user permissions by granting
a user permission to access or change only resources with certain tag
values. In Entity Resolution, C<SchemaMapping> and C<MatchingWorkflow>
can be tagged. Tags don't have any semantic meaning to Amazon Web
Services and are interpreted strictly as strings of characters. You can
use the C<TagResource> action with a resource that already has tags. If
you specify a new tag key, this tag is appended to the list of tags
associated with the resource. If you specify a tag key that is already
associated with the resource, the new tag value that you specify
replaces the previous value for that tag.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::EntityResolution::UntagResource>

Returns: a L<Paws::EntityResolution::UntagResourceOutput> instance

Removes one or more tags from the specified Entity Resolution resource.
In Entity Resolution, C<SchemaMapping>, and C<MatchingWorkflow> can be
tagged.


=head2 UpdateIdMappingWorkflow

=over

=item IdMappingTechniques => L<Paws::EntityResolution::IdMappingTechniques>

=item InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowInputSource>]

=item WorkflowName => Str

=item [Description => Str]

=item [OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingWorkflowOutputSource>]]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::UpdateIdMappingWorkflow>

Returns: a L<Paws::EntityResolution::UpdateIdMappingWorkflowOutput> instance

Updates an existing C<IdMappingWorkflow>. This method is identical to
C<CreateIdMappingWorkflow>, except it uses an HTTP C<PUT> request
instead of a C<POST> request, and the C<IdMappingWorkflow> must already
exist for the method to succeed.


=head2 UpdateIdNamespace

=over

=item IdNamespaceName => Str

=item [Description => Str]

=item [IdMappingWorkflowProperties => ArrayRef[L<Paws::EntityResolution::IdNamespaceIdMappingWorkflowProperties>]]

=item [InputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdNamespaceInputSource>]]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::UpdateIdNamespace>

Returns: a L<Paws::EntityResolution::UpdateIdNamespaceOutput> instance

Updates an existing ID namespace.


=head2 UpdateMatchingWorkflow

=over

=item InputSourceConfig => ArrayRef[L<Paws::EntityResolution::InputSource>]

=item OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::OutputSource>]

=item ResolutionTechniques => L<Paws::EntityResolution::ResolutionTechniques>

=item RoleArn => Str

=item WorkflowName => Str

=item [Description => Str]

=item [IncrementalRunConfig => L<Paws::EntityResolution::IncrementalRunConfig>]


=back

Each argument is described in detail in: L<Paws::EntityResolution::UpdateMatchingWorkflow>

Returns: a L<Paws::EntityResolution::UpdateMatchingWorkflowOutput> instance

Updates an existing C<MatchingWorkflow>. This method is identical to
C<CreateMatchingWorkflow>, except it uses an HTTP C<PUT> request
instead of a C<POST> request, and the C<MatchingWorkflow> must already
exist for the method to succeed.


=head2 UpdateSchemaMapping

=over

=item MappedInputFields => ArrayRef[L<Paws::EntityResolution::SchemaInputAttribute>]

=item SchemaName => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::EntityResolution::UpdateSchemaMapping>

Returns: a L<Paws::EntityResolution::UpdateSchemaMappingOutput> instance

Updates a schema mapping.

A schema is immutable if it is being used by a workflow. Therefore, you
can't update a schema mapping if it's associated with a workflow.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllIdMappingJobs(sub { },WorkflowName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllIdMappingJobs(WorkflowName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobs, passing the object as the first parameter, and the string 'jobs' as the second parameter 

If not, it will return a a L<Paws::EntityResolution::ListIdMappingJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdMappingWorkflows(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllIdMappingWorkflows([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workflowSummaries, passing the object as the first parameter, and the string 'workflowSummaries' as the second parameter 

If not, it will return a a L<Paws::EntityResolution::ListIdMappingWorkflowsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllIdNamespaces(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllIdNamespaces([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - idNamespaceSummaries, passing the object as the first parameter, and the string 'idNamespaceSummaries' as the second parameter 

If not, it will return a a L<Paws::EntityResolution::ListIdNamespacesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMatchingJobs(sub { },WorkflowName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllMatchingJobs(WorkflowName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - jobs, passing the object as the first parameter, and the string 'jobs' as the second parameter 

If not, it will return a a L<Paws::EntityResolution::ListMatchingJobsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllMatchingWorkflows(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllMatchingWorkflows([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - workflowSummaries, passing the object as the first parameter, and the string 'workflowSummaries' as the second parameter 

If not, it will return a a L<Paws::EntityResolution::ListMatchingWorkflowsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllProviderServices(sub { },[MaxResults => Int, NextToken => Str, ProviderName => Str])

=head2 ListAllProviderServices([MaxResults => Int, NextToken => Str, ProviderName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - providerServiceSummaries, passing the object as the first parameter, and the string 'providerServiceSummaries' as the second parameter 

If not, it will return a a L<Paws::EntityResolution::ListProviderServicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSchemaMappings(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllSchemaMappings([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - schemaList, passing the object as the first parameter, and the string 'schemaList' as the second parameter 

If not, it will return a a L<Paws::EntityResolution::ListSchemaMappingsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

