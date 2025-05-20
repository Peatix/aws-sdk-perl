
package Paws::DocDBElastic::UpdateCluster;
  use Moose;
  has AdminUserPassword => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminUserPassword');
  has AuthType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authType');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'backupRetentionPeriod');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has PreferredBackupWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredBackupWindow');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'preferredMaintenanceWindow');
  has ShardCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardCapacity');
  has ShardCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardCount');
  has ShardInstanceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'shardInstanceCount');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'vpcSecurityGroupIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster/{clusterArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::UpdateClusterOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::UpdateCluster - Arguments for method UpdateCluster on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCluster on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method UpdateCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCluster.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $UpdateClusterOutput = $docdb -elastic->UpdateCluster(
      ClusterArn                 => 'MyString',
      AdminUserPassword          => 'MyPassword',           # OPTIONAL
      AuthType                   => 'PLAIN_TEXT',           # OPTIONAL
      BackupRetentionPeriod      => 1,                      # OPTIONAL
      ClientToken                => 'MyString',             # OPTIONAL
      PreferredBackupWindow      => 'MyString',             # OPTIONAL
      PreferredMaintenanceWindow => 'MyString',             # OPTIONAL
      ShardCapacity              => 1,                      # OPTIONAL
      ShardCount                 => 1,                      # OPTIONAL
      ShardInstanceCount         => 1,                      # OPTIONAL
      SubnetIds                  => [ 'MyString', ... ],    # OPTIONAL
      VpcSecurityGroupIds        => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $UpdateClusterOutput->Cluster;

    # Returns a L<Paws::DocDBElastic::UpdateClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/UpdateCluster>

=head1 ATTRIBUTES


=head2 AdminUserPassword => Str

The password associated with the elastic cluster administrator. This
password can contain any printable ASCII character except forward slash
(/), double quote ("), or the "at" symbol (@).

I<Constraints>: Must contain from 8 to 100 characters.



=head2 AuthType => Str

The authentication type used to determine where to fetch the password
used for accessing the elastic cluster. Valid types are C<PLAIN_TEXT>
or C<SECRET_ARN>.

Valid values are: C<"PLAIN_TEXT">, C<"SECRET_ARN">

=head2 BackupRetentionPeriod => Int

The number of days for which automatic snapshots are retained.



=head2 ClientToken => Str

The client token for the elastic cluster.



=head2 B<REQUIRED> ClusterArn => Str

The ARN identifier of the elastic cluster.



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



=head2 ShardCapacity => Int

The number of vCPUs assigned to each elastic cluster shard. Maximum is
64. Allowed values are 2, 4, 8, 16, 32, 64.



=head2 ShardCount => Int

The number of shards assigned to the elastic cluster. Maximum is 32.



=head2 ShardInstanceCount => Int

The number of replica instances applying to all shards in the elastic
cluster. A C<shardInstanceCount> value of 1 means there is one writer
instance, and any additional instances are replicas that can be used
for reads and to improve availability.



=head2 SubnetIds => ArrayRef[Str|Undef]

The Amazon EC2 subnet IDs for the elastic cluster.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of EC2 VPC security groups to associate with the elastic
cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCluster in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

