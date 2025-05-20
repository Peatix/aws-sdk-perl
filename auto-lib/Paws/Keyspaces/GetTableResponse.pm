
package Paws::Keyspaces::GetTableResponse;
  use Moose;
  has CapacitySpecification => (is => 'ro', isa => 'Paws::Keyspaces::CapacitySpecificationSummary', traits => ['NameInRequest'], request_name => 'capacitySpecification' );
  has ClientSideTimestamps => (is => 'ro', isa => 'Paws::Keyspaces::ClientSideTimestamps', traits => ['NameInRequest'], request_name => 'clientSideTimestamps' );
  has Comment => (is => 'ro', isa => 'Paws::Keyspaces::Comment', traits => ['NameInRequest'], request_name => 'comment' );
  has CreationTimestamp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTimestamp' );
  has DefaultTimeToLive => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'defaultTimeToLive' );
  has EncryptionSpecification => (is => 'ro', isa => 'Paws::Keyspaces::EncryptionSpecification', traits => ['NameInRequest'], request_name => 'encryptionSpecification' );
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has PointInTimeRecovery => (is => 'ro', isa => 'Paws::Keyspaces::PointInTimeRecoverySummary', traits => ['NameInRequest'], request_name => 'pointInTimeRecovery' );
  has ReplicaSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::ReplicaSpecificationSummary]', traits => ['NameInRequest'], request_name => 'replicaSpecifications' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has SchemaDefinition => (is => 'ro', isa => 'Paws::Keyspaces::SchemaDefinition', traits => ['NameInRequest'], request_name => 'schemaDefinition' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has TableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableName' , required => 1);
  has Ttl => (is => 'ro', isa => 'Paws::Keyspaces::TimeToLive', traits => ['NameInRequest'], request_name => 'ttl' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::GetTableResponse

=head1 ATTRIBUTES


=head2 CapacitySpecification => L<Paws::Keyspaces::CapacitySpecificationSummary>

The read/write throughput capacity mode for a table. The options are:

=over

=item *

C<throughputMode:PAY_PER_REQUEST>

=item *

C<throughputMode:PROVISIONED>

=back



=head2 ClientSideTimestamps => L<Paws::Keyspaces::ClientSideTimestamps>

The client-side timestamps setting of the table.


=head2 Comment => L<Paws::Keyspaces::Comment>

The the description of the specified table.


=head2 CreationTimestamp => Str

The creation timestamp of the specified table.


=head2 DefaultTimeToLive => Int

The default Time to Live settings in seconds of the specified table.


=head2 EncryptionSpecification => L<Paws::Keyspaces::EncryptionSpecification>

The encryption settings of the specified table.


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace that the specified table is stored in.


=head2 PointInTimeRecovery => L<Paws::Keyspaces::PointInTimeRecoverySummary>

The point-in-time recovery status of the specified table.


=head2 ReplicaSpecifications => ArrayRef[L<Paws::Keyspaces::ReplicaSpecificationSummary>]

Returns the Amazon Web Services Region specific settings of all Regions
a multi-Region table is replicated in.


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the specified table.


=head2 SchemaDefinition => L<Paws::Keyspaces::SchemaDefinition>

The schema definition of the specified table.


=head2 Status => Str

The current status of the specified table.

Valid values are: C<"ACTIVE">, C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"DELETED">, C<"RESTORING">, C<"INACCESSIBLE_ENCRYPTION_CREDENTIALS">
=head2 B<REQUIRED> TableName => Str

The name of the specified table.


=head2 Ttl => L<Paws::Keyspaces::TimeToLive>

The custom Time to Live settings of the specified table.


=head2 _request_id => Str


=cut

1;