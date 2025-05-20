
package Paws::Keyspaces::GetTableAutoScalingSettingsResponse;
  use Moose;
  has AutoScalingSpecification => (is => 'ro', isa => 'Paws::Keyspaces::AutoScalingSpecification', traits => ['NameInRequest'], request_name => 'autoScalingSpecification' );
  has KeyspaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyspaceName' , required => 1);
  has ReplicaSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::Keyspaces::ReplicaAutoScalingSpecification]', traits => ['NameInRequest'], request_name => 'replicaSpecifications' );
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has TableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'tableName' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Keyspaces::GetTableAutoScalingSettingsResponse

=head1 ATTRIBUTES


=head2 AutoScalingSpecification => L<Paws::Keyspaces::AutoScalingSpecification>

The auto scaling settings of the table.


=head2 B<REQUIRED> KeyspaceName => Str

The name of the keyspace.


=head2 ReplicaSpecifications => ArrayRef[L<Paws::Keyspaces::ReplicaAutoScalingSpecification>]

The Amazon Web Services Region specific settings of a multi-Region
table. Returns the settings for all Regions the table is replicated in.


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the table.


=head2 B<REQUIRED> TableName => Str

The name of the table.


=head2 _request_id => Str


=cut

1;