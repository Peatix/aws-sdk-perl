
package Paws::DataZone::UpdateConnectionOutput;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectionId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has DomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainUnitId', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'environmentId');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PhysicalEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::PhysicalEndpoint]', traits => ['NameInRequest'], request_name => 'physicalEndpoints', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId');
  has Props => (is => 'ro', isa => 'Paws::DataZone::ConnectionPropertiesOutput', traits => ['NameInRequest'], request_name => 'props');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateConnectionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection.


=head2 Description => Str

The connection description.


=head2 B<REQUIRED> DomainId => Str

The ID of the domain where a connection is to be updated.


=head2 B<REQUIRED> DomainUnitId => Str

The ID of the domain unit where a connection is to be updated.


=head2 EnvironmentId => Str

The ID of the environment where a connection is to be updated.


=head2 B<REQUIRED> Name => Str

The name of the connection.


=head2 B<REQUIRED> PhysicalEndpoints => ArrayRef[L<Paws::DataZone::PhysicalEndpoint>]

The physical endpoints of the connection.


=head2 ProjectId => Str

The project ID of the connection.


=head2 Props => L<Paws::DataZone::ConnectionPropertiesOutput>

The connection props.


=head2 B<REQUIRED> Type => Str

The connection type.

Valid values are: C<"ATHENA">, C<"BIGQUERY">, C<"DATABRICKS">, C<"DOCUMENTDB">, C<"DYNAMODB">, C<"HYPERPOD">, C<"IAM">, C<"MYSQL">, C<"OPENSEARCH">, C<"ORACLE">, C<"POSTGRESQL">, C<"REDSHIFT">, C<"SAPHANA">, C<"SNOWFLAKE">, C<"SPARK">, C<"SQLSERVER">, C<"TERADATA">, C<"VERTICA">, C<"WORKFLOWS_MWAA">
=head2 _request_id => Str


=cut

