package Paws::Keyspaces;
  use Moose;
  sub service { 'cassandra' }
  sub signing_name { 'cassandra' }
  sub version { '2022-02-10' }
  sub target_prefix { 'KeyspacesService' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateKeyspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::CreateKeyspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::CreateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::CreateType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::DeleteKeyspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::DeleteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::DeleteType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetKeyspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::GetKeyspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::GetTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTableAutoScalingSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::GetTableAutoScalingSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::GetType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyspaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::ListKeyspaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::ListTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::ListTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::RestoreTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateKeyspace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::UpdateKeyspace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Keyspaces::UpdateTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllKeyspaces {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeyspaces(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListKeyspaces(@_, nextToken => $next_result->nextToken);
        push @{ $result->keyspaces }, @{ $next_result->keyspaces };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'keyspaces') foreach (@{ $result->keyspaces });
        $result = $self->ListKeyspaces(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'keyspaces') foreach (@{ $result->keyspaces });
    }

    return undef
  }
  sub ListAllTables {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTables(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTables(@_, nextToken => $next_result->nextToken);
        push @{ $result->tables }, @{ $next_result->tables };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tables') foreach (@{ $result->tables });
        $result = $self->ListTables(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tables') foreach (@{ $result->tables });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTagsForResource(@_, nextToken => $next_result->nextToken);
        push @{ $result->tags }, @{ $next_result->tags };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tags') foreach (@{ $result->tags });
        $result = $self->ListTagsForResource(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tags') foreach (@{ $result->tags });
    }

    return undef
  }
  sub ListAllTypes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTypes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTypes(@_, nextToken => $next_result->nextToken);
        push @{ $result->types }, @{ $next_result->types };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'types') foreach (@{ $result->types });
        $result = $self->ListTypes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'types') foreach (@{ $result->types });
    }

    return undef
  }


  sub operations { qw/CreateKeyspace CreateTable CreateType DeleteKeyspace DeleteTable DeleteType GetKeyspace GetTable GetTableAutoScalingSettings GetType ListKeyspaces ListTables ListTagsForResource ListTypes RestoreTable TagResource UntagResource UpdateKeyspace UpdateTable / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces - Perl Interface to AWS Amazon Keyspaces

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Keyspaces');
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

Amazon Keyspaces (for Apache Cassandra) is a scalable, highly
available, and managed Apache Cassandra-compatible database service.
Amazon Keyspaces makes it easy to migrate, run, and scale Cassandra
workloads in the Amazon Web Services Cloud. With just a few clicks on
the Amazon Web Services Management Console or a few lines of code, you
can create keyspaces and tables in Amazon Keyspaces, without deploying
any infrastructure or installing software.

In addition to supporting Cassandra Query Language (CQL) requests via
open-source Cassandra drivers, Amazon Keyspaces supports data
definition language (DDL) operations to manage keyspaces and tables
using the Amazon Web Services SDK and CLI, as well as infrastructure as
code (IaC) services and tools such as CloudFormation and Terraform.
This API reference describes the supported DDL operations in detail.

For the list of all supported CQL APIs, see Supported Cassandra APIs,
operations, and data types in Amazon Keyspaces
(https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html)
in the I<Amazon Keyspaces Developer Guide>.

To learn how Amazon Keyspaces API actions are recorded with CloudTrail,
see Amazon Keyspaces information in CloudTrail
(https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail)
in the I<Amazon Keyspaces Developer Guide>.

For more information about Amazon Web Services APIs, for example how to
implement retry logic or how to sign Amazon Web Services API requests,
see Amazon Web Services APIs
(https://docs.aws.amazon.com/general/latest/gr/aws-apis.html) in the
I<General Reference>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cassandra-2022-02-10>


=head1 METHODS

=head2 CreateKeyspace

=over

=item KeyspaceName => Str

=item [ReplicationSpecification => L<Paws::Keyspaces::ReplicationSpecification>]

=item [Tags => ArrayRef[L<Paws::Keyspaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::Keyspaces::CreateKeyspace>

Returns: a L<Paws::Keyspaces::CreateKeyspaceResponse> instance

The C<CreateKeyspace> operation adds a new keyspace to your account. In
an Amazon Web Services account, keyspace names must be unique within
each Region.

C<CreateKeyspace> is an asynchronous operation. You can monitor the
creation status of the new keyspace by using the C<GetKeyspace>
operation.

For more information, see Create a keyspace
(https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.keyspaces.html)
in the I<Amazon Keyspaces Developer Guide>.


=head2 CreateTable

=over

=item KeyspaceName => Str

=item SchemaDefinition => L<Paws::Keyspaces::SchemaDefinition>

=item TableName => Str

=item [AutoScalingSpecification => L<Paws::Keyspaces::AutoScalingSpecification>]

=item [CapacitySpecification => L<Paws::Keyspaces::CapacitySpecification>]

=item [ClientSideTimestamps => L<Paws::Keyspaces::ClientSideTimestamps>]

=item [Comment => L<Paws::Keyspaces::Comment>]

=item [DefaultTimeToLive => Int]

=item [EncryptionSpecification => L<Paws::Keyspaces::EncryptionSpecification>]

=item [PointInTimeRecovery => L<Paws::Keyspaces::PointInTimeRecovery>]

=item [ReplicaSpecifications => ArrayRef[L<Paws::Keyspaces::ReplicaSpecification>]]

=item [Tags => ArrayRef[L<Paws::Keyspaces::Tag>]]

=item [Ttl => L<Paws::Keyspaces::TimeToLive>]


=back

Each argument is described in detail in: L<Paws::Keyspaces::CreateTable>

Returns: a L<Paws::Keyspaces::CreateTableResponse> instance

The C<CreateTable> operation adds a new table to the specified
keyspace. Within a keyspace, table names must be unique.

C<CreateTable> is an asynchronous operation. When the request is
received, the status of the table is set to C<CREATING>. You can
monitor the creation status of the new table by using the C<GetTable>
operation, which returns the current C<status> of the table. You can
start using a table when the status is C<ACTIVE>.

For more information, see Create a table
(https://docs.aws.amazon.com/keyspaces/latest/devguide/getting-started.tables.html)
in the I<Amazon Keyspaces Developer Guide>.


=head2 CreateType

=over

=item FieldDefinitions => ArrayRef[L<Paws::Keyspaces::FieldDefinition>]

=item KeyspaceName => Str

=item TypeName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::CreateType>

Returns: a L<Paws::Keyspaces::CreateTypeResponse> instance

The C<CreateType> operation creates a new user-defined type in the
specified keyspace.

To configure the required permissions, see Permissions to create a UDT
(https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-create)
in the I<Amazon Keyspaces Developer Guide>.

For more information, see User-defined types (UDTs)
(https://docs.aws.amazon.com/keyspaces/latest/devguide/udts.html) in
the I<Amazon Keyspaces Developer Guide>.


=head2 DeleteKeyspace

=over

=item KeyspaceName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::DeleteKeyspace>

Returns: a L<Paws::Keyspaces::DeleteKeyspaceResponse> instance

The C<DeleteKeyspace> operation deletes a keyspace and all of its
tables.


=head2 DeleteTable

=over

=item KeyspaceName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::DeleteTable>

Returns: a L<Paws::Keyspaces::DeleteTableResponse> instance

The C<DeleteTable> operation deletes a table and all of its data. After
a C<DeleteTable> request is received, the specified table is in the
C<DELETING> state until Amazon Keyspaces completes the deletion. If the
table is in the C<ACTIVE> state, you can delete it. If a table is
either in the C<CREATING> or C<UPDATING> states, then Amazon Keyspaces
returns a C<ResourceInUseException>. If the specified table does not
exist, Amazon Keyspaces returns a C<ResourceNotFoundException>. If the
table is already in the C<DELETING> state, no error is returned.


=head2 DeleteType

=over

=item KeyspaceName => Str

=item TypeName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::DeleteType>

Returns: a L<Paws::Keyspaces::DeleteTypeResponse> instance

The C<DeleteType> operation deletes a user-defined type (UDT). You can
only delete a type that is not used in a table or another UDT.

To configure the required permissions, see Permissions to delete a UDT
(https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-drop)
in the I<Amazon Keyspaces Developer Guide>.


=head2 GetKeyspace

=over

=item KeyspaceName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::GetKeyspace>

Returns: a L<Paws::Keyspaces::GetKeyspaceResponse> instance

Returns the name of the specified keyspace, the Amazon Resource Name
(ARN), the replication strategy, the Amazon Web Services Regions of a
multi-Region keyspace, and the status of newly added Regions after an
C<UpdateKeyspace> operation.


=head2 GetTable

=over

=item KeyspaceName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::GetTable>

Returns: a L<Paws::Keyspaces::GetTableResponse> instance

Returns information about the table, including the table's name and
current status, the keyspace name, configuration settings, and
metadata.

To read table metadata using C<GetTable>, the IAM principal needs
C<Select> action permissions for the table and the system keyspace.


=head2 GetTableAutoScalingSettings

=over

=item KeyspaceName => Str

=item TableName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::GetTableAutoScalingSettings>

Returns: a L<Paws::Keyspaces::GetTableAutoScalingSettingsResponse> instance

Returns auto scaling related settings of the specified table in JSON
format. If the table is a multi-Region table, the Amazon Web Services
Region specific auto scaling settings of the table are included.

Amazon Keyspaces auto scaling helps you provision throughput capacity
for variable workloads efficiently by increasing and decreasing your
table's read and write capacity automatically in response to
application traffic. For more information, see Managing throughput
capacity automatically with Amazon Keyspaces auto scaling
(https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html)
in the I<Amazon Keyspaces Developer Guide>.

C<GetTableAutoScalingSettings> can't be used as an action in an IAM
policy.

To define permissions for C<GetTableAutoScalingSettings>, you must
allow the following two actions in the IAM policy statement's C<Action>
element:

=over

=item *

C<application-autoscaling:DescribeScalableTargets>

=item *

C<application-autoscaling:DescribeScalingPolicies>

=back



=head2 GetType

=over

=item KeyspaceName => Str

=item TypeName => Str


=back

Each argument is described in detail in: L<Paws::Keyspaces::GetType>

Returns: a L<Paws::Keyspaces::GetTypeResponse> instance

The C<GetType> operation returns information about the type, for
example the field definitions, the timestamp when the type was last
modified, the level of nesting, the status, and details about if the
type is used in other types and tables.

To read keyspace metadata using C<GetType>, the IAM principal needs
C<Select> action permissions for the system keyspace. To configure the
required permissions, see Permissions to view a UDT
(https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view)
in the I<Amazon Keyspaces Developer Guide>.


=head2 ListKeyspaces

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Keyspaces::ListKeyspaces>

Returns: a L<Paws::Keyspaces::ListKeyspacesResponse> instance

The C<ListKeyspaces> operation returns a list of keyspaces.


=head2 ListTables

=over

=item KeyspaceName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Keyspaces::ListTables>

Returns: a L<Paws::Keyspaces::ListTablesResponse> instance

The C<ListTables> operation returns a list of tables for a specified
keyspace.

To read keyspace metadata using C<ListTables>, the IAM principal needs
C<Select> action permissions for the system keyspace.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Keyspaces::ListTagsForResource>

Returns: a L<Paws::Keyspaces::ListTagsForResourceResponse> instance

Returns a list of all tags associated with the specified Amazon
Keyspaces resource.

To read keyspace metadata using C<ListTagsForResource>, the IAM
principal needs C<Select> action permissions for the specified resource
and the system keyspace.


=head2 ListTypes

=over

=item KeyspaceName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Keyspaces::ListTypes>

Returns: a L<Paws::Keyspaces::ListTypesResponse> instance

The C<ListTypes> operation returns a list of types for a specified
keyspace.

To read keyspace metadata using C<ListTypes>, the IAM principal needs
C<Select> action permissions for the system keyspace. To configure the
required permissions, see Permissions to view a UDT
(https://docs.aws.amazon.com/keyspaces/latest/devguide/configure-udt-permissions.html#udt-permissions-view)
in the I<Amazon Keyspaces Developer Guide>.


=head2 RestoreTable

=over

=item SourceKeyspaceName => Str

=item SourceTableName => Str

=item TargetKeyspaceName => Str

=item TargetTableName => Str

=item [AutoScalingSpecification => L<Paws::Keyspaces::AutoScalingSpecification>]

=item [CapacitySpecificationOverride => L<Paws::Keyspaces::CapacitySpecification>]

=item [EncryptionSpecificationOverride => L<Paws::Keyspaces::EncryptionSpecification>]

=item [PointInTimeRecoveryOverride => L<Paws::Keyspaces::PointInTimeRecovery>]

=item [ReplicaSpecifications => ArrayRef[L<Paws::Keyspaces::ReplicaSpecification>]]

=item [RestoreTimestamp => Str]

=item [TagsOverride => ArrayRef[L<Paws::Keyspaces::Tag>]]


=back

Each argument is described in detail in: L<Paws::Keyspaces::RestoreTable>

Returns: a L<Paws::Keyspaces::RestoreTableResponse> instance

Restores the table to the specified point in time within the
C<earliest_restorable_timestamp> and the current time. For more
information about restore points, see Time window for PITR continuous
backups
(https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window)
in the I<Amazon Keyspaces Developer Guide>.

Any number of users can execute up to 4 concurrent restores (any type
of restore) in a given account.

When you restore using point in time recovery, Amazon Keyspaces
restores your source table's schema and data to the state based on the
selected timestamp C<(day:hour:minute:second)> to a new table. The Time
to Live (TTL) settings are also restored to the state based on the
selected timestamp.

In addition to the table's schema, data, and TTL settings,
C<RestoreTable> restores the capacity mode, auto scaling settings,
encryption settings, and point-in-time recovery settings from the
source table. Unlike the table's schema data and TTL settings, which
are restored based on the selected timestamp, these settings are always
restored based on the table's settings as of the current time or when
the table was deleted.

You can also overwrite these settings during restore:

=over

=item *

Read/write capacity mode

=item *

Provisioned throughput capacity units

=item *

Auto scaling settings

=item *

Point-in-time (PITR) settings

=item *

Tags

=back

For more information, see PITR restore settings
(https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings)
in the I<Amazon Keyspaces Developer Guide>.

Note that the following settings are not restored, and you must
configure them manually for the new table:

=over

=item *

Identity and Access Management (IAM) policies

=item *

Amazon CloudWatch metrics and alarms

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Keyspaces::Tag>]


=back

Each argument is described in detail in: L<Paws::Keyspaces::TagResource>

Returns: a L<Paws::Keyspaces::TagResourceResponse> instance

Associates a set of tags with a Amazon Keyspaces resource. You can then
activate these user-defined tags so that they appear on the Cost
Management Console for cost allocation tracking. For more information,
see Adding tags and labels to Amazon Keyspaces resources
(https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html)
in the I<Amazon Keyspaces Developer Guide>.

For IAM policy examples that show how to control access to Amazon
Keyspaces resources based on tags, see Amazon Keyspaces resource access
based on tags
(https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags)
in the I<Amazon Keyspaces Developer Guide>.


=head2 UntagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Keyspaces::Tag>]


=back

Each argument is described in detail in: L<Paws::Keyspaces::UntagResource>

Returns: a L<Paws::Keyspaces::UntagResourceResponse> instance

Removes the association of tags from a Amazon Keyspaces resource.


=head2 UpdateKeyspace

=over

=item KeyspaceName => Str

=item ReplicationSpecification => L<Paws::Keyspaces::ReplicationSpecification>

=item [ClientSideTimestamps => L<Paws::Keyspaces::ClientSideTimestamps>]


=back

Each argument is described in detail in: L<Paws::Keyspaces::UpdateKeyspace>

Returns: a L<Paws::Keyspaces::UpdateKeyspaceResponse> instance

Adds a new Amazon Web Services Region to the keyspace. You can add a
new Region to a keyspace that is either a single or a multi-Region
keyspace. Amazon Keyspaces is going to replicate all tables in the
keyspace to the new Region. To successfully replicate all tables to the
new Region, they must use client-side timestamps for conflict
resolution. To enable client-side timestamps, specify
C<clientSideTimestamps.status = enabled> when invoking the API. For
more information about client-side timestamps, see Client-side
timestamps in Amazon Keyspaces
(https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps.html)
in the I<Amazon Keyspaces Developer Guide>.

To add a Region to a keyspace using the C<UpdateKeyspace> API, the IAM
principal needs permissions for the following IAM actions:

=over

=item *

C<cassandra:Alter>

=item *

C<cassandra:AlterMultiRegionResource>

=item *

C<cassandra:Create>

=item *

C<cassandra:CreateMultiRegionResource>

=item *

C<cassandra:Select>

=item *

C<cassandra:SelectMultiRegionResource>

=item *

C<cassandra:Modify>

=item *

C<cassandra:ModifyMultiRegionResource>

=back

If the keyspace contains a table that is configured in provisioned mode
with auto scaling enabled, the following additional IAM actions need to
be allowed.

=over

=item *

C<application-autoscaling:RegisterScalableTarget>

=item *

C<application-autoscaling:DeregisterScalableTarget>

=item *

C<application-autoscaling:DescribeScalableTargets>

=item *

C<application-autoscaling:PutScalingPolicy>

=item *

C<application-autoscaling:DescribeScalingPolicies>

=back

To use the C<UpdateKeyspace> API, the IAM principal also needs
permissions to create a service-linked role with the following
elements:

=over

=item *

C<iam:CreateServiceLinkedRole> - The B<action> the principal can
perform.

=item *

C<arn:aws:iam::*:role/aws-service-role/replication.cassandra.amazonaws.com/AWSServiceRoleForKeyspacesReplication>
- The B<resource> that the action can be performed on.

=item *

C<iam:AWSServiceName: replication.cassandra.amazonaws.com> - The only
Amazon Web Services service that this role can be attached to is Amazon
Keyspaces.

=back

For more information, see Configure the IAM permissions required to add
an Amazon Web Services Region to a keyspace
(https://docs.aws.amazon.com/keyspaces/latest/devguide/howitworks_replication_permissions_addReplica.html)
in the I<Amazon Keyspaces Developer Guide>.


=head2 UpdateTable

=over

=item KeyspaceName => Str

=item TableName => Str

=item [AddColumns => ArrayRef[L<Paws::Keyspaces::ColumnDefinition>]]

=item [AutoScalingSpecification => L<Paws::Keyspaces::AutoScalingSpecification>]

=item [CapacitySpecification => L<Paws::Keyspaces::CapacitySpecification>]

=item [ClientSideTimestamps => L<Paws::Keyspaces::ClientSideTimestamps>]

=item [DefaultTimeToLive => Int]

=item [EncryptionSpecification => L<Paws::Keyspaces::EncryptionSpecification>]

=item [PointInTimeRecovery => L<Paws::Keyspaces::PointInTimeRecovery>]

=item [ReplicaSpecifications => ArrayRef[L<Paws::Keyspaces::ReplicaSpecification>]]

=item [Ttl => L<Paws::Keyspaces::TimeToLive>]


=back

Each argument is described in detail in: L<Paws::Keyspaces::UpdateTable>

Returns: a L<Paws::Keyspaces::UpdateTableResponse> instance

Adds new columns to the table or updates one of the table's settings,
for example capacity mode, auto scaling, encryption, point-in-time
recovery, or ttl settings. Note that you can only update one specific
table setting per update operation.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllKeyspaces(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllKeyspaces([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - keyspaces, passing the object as the first parameter, and the string 'keyspaces' as the second parameter 

If not, it will return a a L<Paws::Keyspaces::ListKeyspacesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTables(sub { },KeyspaceName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTables(KeyspaceName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tables, passing the object as the first parameter, and the string 'tables' as the second parameter 

If not, it will return a a L<Paws::Keyspaces::ListTablesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::Keyspaces::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTypes(sub { },KeyspaceName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTypes(KeyspaceName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - types, passing the object as the first parameter, and the string 'types' as the second parameter 

If not, it will return a a L<Paws::Keyspaces::ListTypesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

