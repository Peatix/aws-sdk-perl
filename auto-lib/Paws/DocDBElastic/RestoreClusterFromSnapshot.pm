
package Paws::DocDBElastic::RestoreClusterFromSnapshot;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has ShardCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardCapacity');
  has ShardInstanceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardInstanceCount');
  has SnapshotArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotArn', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Tags => (is => 'ro', isa => 'Paws::DocDBElastic::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreClusterFromSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster-snapshot/{snapshotArn}/restore');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::RestoreClusterFromSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::RestoreClusterFromSnapshot - Arguments for method RestoreClusterFromSnapshot on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreClusterFromSnapshot on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method RestoreClusterFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreClusterFromSnapshot.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $RestoreClusterFromSnapshotOutput =
      $docdb -elastic->RestoreClusterFromSnapshot(
      ClusterName        => 'MyString',
      SnapshotArn        => 'MyString',
      KmsKeyId           => 'MyString',             # OPTIONAL
      ShardCapacity      => 1,                      # OPTIONAL
      ShardInstanceCount => 1,                      # OPTIONAL
      SubnetIds          => [ 'MyString', ... ],    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $Cluster = $RestoreClusterFromSnapshotOutput->Cluster;

    # Returns a L<Paws::DocDBElastic::RestoreClusterFromSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/RestoreClusterFromSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the elastic cluster.



=head2 KmsKeyId => Str

The KMS key identifier to use to encrypt the new Amazon DocumentDB
elastic clusters cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a cluster using the same Amazon
account that owns this KMS encryption key, you can use the KMS key
alias instead of the ARN as the KMS encryption key.

If an encryption key is not specified here, Amazon DocumentDB uses the
default encryption key that KMS creates for your account. Your account
has a different default encryption key for each Amazon Region.



=head2 ShardCapacity => Int

The capacity of each shard in the new restored elastic cluster.



=head2 ShardInstanceCount => Int

The number of replica instances applying to all shards in the elastic
cluster. A C<shardInstanceCount> value of 1 means there is one writer
instance, and any additional instances are replicas that can be used
for reads and to improve availability.



=head2 B<REQUIRED> SnapshotArn => Str

The ARN identifier of the elastic cluster snapshot.



=head2 SubnetIds => ArrayRef[Str|Undef]

The Amazon EC2 subnet IDs for the elastic cluster.



=head2 Tags => L<Paws::DocDBElastic::TagMap>

A list of the tag names to be assigned to the restored elastic cluster,
in the form of an array of key-value pairs in which the key is the tag
name and the value is the key value.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the elastic
cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreClusterFromSnapshot in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

