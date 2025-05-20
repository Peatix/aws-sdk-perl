
package Paws::Keyspaces::GetKeyspaceResponse;
  use Moose;
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has ReplicationGroupStatuses => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::ReplicationGroupStatus]', traits => ['NameInRequest'], request_name => 'replicationGroupStatuses' );
  has ReplicationRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'replicationRegions' );
  has ReplicationStrategy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'replicationStrategy' , required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::GetKeyspaceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace.


=head2 ReplicationGroupStatuses => ArrayRef[L<Paws::Keyspaces::ReplicationGroupStatus>]

A list of all Regions the keyspace is replicated in after the update
keyspace operation and their status.


=head2 ReplicationRegions => ArrayRef[Str|Undef]

If the C<replicationStrategy> of the keyspace is C<MULTI_REGION>, a
list of replication Regions is returned.


=head2 B<REQUIRED> ReplicationStrategy => Str

Returns the replication strategy of the keyspace. The options are
C<SINGLE_REGION> or C<MULTI_REGION>.

Valid values are: C<"SINGLE_REGION">, C<"MULTI_REGION">
=head2 B<REQUIRED> ResourceArn => Str

Returns the ARN of the keyspace.


=head2 _request_id => Str


=cut

1;