
package Paws::RDS::CreateBlueGreenDeployment;
  use Moose;
  has BlueGreenDeploymentName => (is => 'ro', isa => 'Str', required => 1);
  has Source => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetAllocatedStorage => (is => 'ro', isa => 'Int');
  has TargetDBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has TargetDBInstanceClass => (is => 'ro', isa => 'Str');
  has TargetDBParameterGroupName => (is => 'ro', isa => 'Str');
  has TargetEngineVersion => (is => 'ro', isa => 'Str');
  has TargetIops => (is => 'ro', isa => 'Int');
  has TargetStorageThroughput => (is => 'ro', isa => 'Int');
  has TargetStorageType => (is => 'ro', isa => 'Str');
  has UpgradeTargetStorageConfig => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBlueGreenDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateBlueGreenDeploymentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateBlueGreenDeploymentResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateBlueGreenDeployment - Arguments for method CreateBlueGreenDeployment on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBlueGreenDeployment on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateBlueGreenDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBlueGreenDeployment.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $CreateBlueGreenDeploymentResponse = $rds->CreateBlueGreenDeployment(
      BlueGreenDeploymentName => 'MyBlueGreenDeploymentName',
      Source                  => 'MyDatabaseArn',
      Tags                    => [
        {
          Key   => 'MyString',    # OPTIONAL
          Value => 'MyString',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      TargetAllocatedStorage            => 1,     # OPTIONAL
      TargetDBClusterParameterGroupName =>
        'MyTargetDBClusterParameterGroupName',    # OPTIONAL
      TargetDBInstanceClass      => 'MyTargetDBInstanceClass',        # OPTIONAL
      TargetDBParameterGroupName => 'MyTargetDBParameterGroupName',   # OPTIONAL
      TargetEngineVersion        => 'MyTargetEngineVersion',          # OPTIONAL
      TargetIops                 => 1,                                # OPTIONAL
      TargetStorageThroughput    => 1,                                # OPTIONAL
      TargetStorageType          => 'MyTargetStorageType',            # OPTIONAL
      UpgradeTargetStorageConfig => 1,                                # OPTIONAL
    );

    # Results:
    my $BlueGreenDeployment =
      $CreateBlueGreenDeploymentResponse->BlueGreenDeployment;

    # Returns a L<Paws::RDS::CreateBlueGreenDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateBlueGreenDeployment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlueGreenDeploymentName => Str

The name of the blue/green deployment.

Constraints:

=over

=item *

Can't be the same as an existing blue/green deployment name in the same
account and Amazon Web Services Region.

=back




=head2 B<REQUIRED> Source => Str

The Amazon Resource Name (ARN) of the source production database.

Specify the database that you want to clone. The blue/green deployment
creates this database in the green environment. You can make updates to
the database in the green environment, such as an engine version
upgrade. When you are ready, you can switch the database in the green
environment to be the production database.



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

Tags to assign to the blue/green deployment.



=head2 TargetAllocatedStorage => Int

The amount of storage in gibibytes (GiB) to allocate for the green DB
instance. You can choose to increase or decrease the allocated storage
on the green DB instance.

This setting doesn't apply to Amazon Aurora blue/green deployments.



=head2 TargetDBClusterParameterGroupName => Str

The DB cluster parameter group associated with the Aurora DB cluster in
the green environment.

To test parameter changes, specify a DB cluster parameter group that is
different from the one associated with the source DB cluster.



=head2 TargetDBInstanceClass => Str

Specify the DB instance class for the databases in the green
environment.

This parameter only applies to RDS DB instances, because DB instances
within an Aurora DB cluster can have multiple different instance
classes. If you're creating a blue/green deployment from an Aurora DB
cluster, don't specify this parameter. After the green environment is
created, you can individually modify the instance classes of the DB
instances within the green DB cluster.



=head2 TargetDBParameterGroupName => Str

The DB parameter group associated with the DB instance in the green
environment.

To test parameter changes, specify a DB parameter group that is
different from the one associated with the source DB instance.



=head2 TargetEngineVersion => Str

The engine version of the database in the green environment.

Specify the engine version to upgrade to in the green environment.



=head2 TargetIops => Int

The amount of Provisioned IOPS (input/output operations per second) to
allocate for the green DB instance. For information about valid IOPS
values, see Amazon RDS DB instance storage
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_Storage.html)
in the I<Amazon RDS User Guide>.

This setting doesn't apply to Amazon Aurora blue/green deployments.



=head2 TargetStorageThroughput => Int

The storage throughput value for the green DB instance.

This setting applies only to the C<gp3> storage type.

This setting doesn't apply to Amazon Aurora blue/green deployments.



=head2 TargetStorageType => Str

The storage type to associate with the green DB instance.

Valid Values: C<gp2 | gp3 | io1 | io2>

This setting doesn't apply to Amazon Aurora blue/green deployments.



=head2 UpgradeTargetStorageConfig => Bool

Whether to upgrade the storage file system configuration on the green
database. This option migrates the green DB instance from the older
32-bit file system to the preferred configuration. For more
information, see Upgrading the storage file system for a DB instance
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PIOPS.StorageTypes.html#USER_PIOPS.UpgradeFileSystem).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBlueGreenDeployment in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

