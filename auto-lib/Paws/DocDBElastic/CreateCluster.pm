
package Paws::DocDBElastic::CreateCluster;
  use Moose;
  has AdminUserName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminUserName', required => 1);
  has AdminUserPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminUserPassword', required => 1);
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType', required => 1);
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'backupRetentionPeriod');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterName', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredBackupWindow');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredMaintenanceWindow');
  has ShardCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardCapacity', required => 1);
  has ShardCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardCount', required => 1);
  has ShardInstanceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardInstanceCount');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has Tags => (is => 'ro', isa => 'Paws::DocDBElastic::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::CreateClusterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::CreateCluster - Arguments for method CreateCluster on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCluster on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method CreateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCluster.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $CreateClusterOutput = $docdb -elastic->CreateCluster(
      AdminUserName              => 'MyString',
      AdminUserPassword          => 'MyPassword',
      AuthType                   => 'PLAIN_TEXT',
      ClusterName                => 'MyString',
      ShardCapacity              => 1,
      ShardCount                 => 1,
      BackupRetentionPeriod      => 1,                      # OPTIONAL
      ClientToken                => 'MyString',             # OPTIONAL
      KmsKeyId                   => 'MyString',             # OPTIONAL
      PreferredBackupWindow      => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow => 'MyString',             # OPTIONAL
      ShardInstanceCount         => 1,                      # OPTIONAL
      SubnetIds                  => [ 'MyString', ... ],    # OPTIONAL
      Tags                       => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcSecurityGroupIds => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $CreateClusterOutput->Cluster;

    # Returns a L<Paws::DocDBElastic::CreateClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/CreateCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AdminUserName => Str

The name of the Amazon DocumentDB elastic clusters administrator.

I<Constraints>:

=over

=item *

Must be from 1 to 63 letters or numbers.

=item *

The first character must be a letter.

=item *

Cannot be a reserved word.

=back




=head2 B<REQUIRED> AdminUserPassword => Str

The password for the Amazon DocumentDB elastic clusters administrator.
The password can contain any printable ASCII characters.

I<Constraints>:

=over

=item *

Must contain from 8 to 100 characters.

=item *

Cannot contain a forward slash (/), double quote ("), or the "at"
symbol (@).

=back




=head2 B<REQUIRED> AuthType => Str

The authentication type used to determine where to fetch the password
used for accessing the elastic cluster. Valid types are C<PLAIN_TEXT>
or C<SECRET_ARN>.

Valid values are: C<"PLAIN_TEXT">, C<"SECRET_ARN">

=head2 BackupRetentionPeriod => Int

The number of days for which automatic snapshots are retained.



=head2 ClientToken => Str

The client token for the elastic cluster.



=head2 B<REQUIRED> ClusterName => Str

The name of the new elastic cluster. This parameter is stored as a
lowercase string.

I<Constraints>:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

I<Example>: C<my-cluster>



=head2 KmsKeyId => Str

The KMS key identifier to use to encrypt the new elastic cluster.

The KMS key identifier is the Amazon Resource Name (ARN) for the KMS
encryption key. If you are creating a cluster using the same Amazon
account that owns this KMS encryption key, you can use the KMS key
alias instead of the ARN as the KMS encryption key.

If an encryption key is not specified, Amazon DocumentDB uses the
default encryption key that KMS creates for your account. Your account
has a different default encryption key for each Amazon Region.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, as determined by the
C<backupRetentionPeriod>.



=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

I<Format>: C<ddd:hh24:mi-ddd:hh24:mi>

I<Default>: a 30-minute window selected at random from an 8-hour block
of time for each Amazon Web Services Region, occurring on a random day
of the week.

I<Valid days>: Mon, Tue, Wed, Thu, Fri, Sat, Sun

I<Constraints>: Minimum 30-minute window.



=head2 B<REQUIRED> ShardCapacity => Int

The number of vCPUs assigned to each elastic cluster shard. Maximum is
64. Allowed values are 2, 4, 8, 16, 32, 64.



=head2 B<REQUIRED> ShardCount => Int

The number of shards assigned to the elastic cluster. Maximum is 32.



=head2 ShardInstanceCount => Int

The number of replica instances applying to all shards in the elastic
cluster. A C<shardInstanceCount> value of 1 means there is one writer
instance, and any additional instances are replicas that can be used
for reads and to improve availability.



=head2 SubnetIds => ArrayRef[Str|Undef]

The Amazon EC2 subnet IDs for the new elastic cluster.



=head2 Tags => L<Paws::DocDBElastic::TagMap>

The tags to be assigned to the new elastic cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the new elastic
cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCluster in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

