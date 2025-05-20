
package Paws::RDS::CreateGlobalCluster;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineLifecycleSupport => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');
  has SourceDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has StorageEncrypted => (is => 'ro', isa => 'Bool');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CreateGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateGlobalCluster - Arguments for method CreateGlobalCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlobalCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $CreateGlobalClusterResult = $rds->CreateGlobalCluster(
      DatabaseName              => 'MyString',    # OPTIONAL
      DeletionProtection        => 1,             # OPTIONAL
      Engine                    => 'MyString',    # OPTIONAL
      EngineLifecycleSupport    => 'MyString',    # OPTIONAL
      EngineVersion             => 'MyString',    # OPTIONAL
      GlobalClusterIdentifier   => 'MyString',    # OPTIONAL
      SourceDBClusterIdentifier => 'MyString',    # OPTIONAL
      StorageEncrypted          => 1,             # OPTIONAL
      Tags                      => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                          # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $CreateGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::RDS::CreateGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateGlobalCluster>

=head1 ATTRIBUTES


=head2 DatabaseName => Str

The name for your database of up to 64 alphanumeric characters. If you
don't specify a name, Amazon Aurora doesn't create a database in the
global database cluster.

Constraints:

=over

=item *

Can't be specified if C<SourceDBClusterIdentifier> is specified. In
this case, Amazon Aurora uses the database name from the source DB
cluster.

=back




=head2 DeletionProtection => Bool

Specifies whether to enable deletion protection for the new global
database cluster. The global database can't be deleted when deletion
protection is enabled.



=head2 Engine => Str

The database engine to use for this global database cluster.

Valid Values: C<aurora-mysql | aurora-postgresql>

Constraints:

=over

=item *

Can't be specified if C<SourceDBClusterIdentifier> is specified. In
this case, Amazon Aurora uses the engine of the source DB cluster.

=back




=head2 EngineLifecycleSupport => Str

The life cycle type for this global database cluster.

By default, this value is set to C<open-source-rds-extended-support>,
which enrolls your global cluster into Amazon RDS Extended Support. At
the end of standard support, you can avoid charges for Extended Support
by setting the value to C<open-source-rds-extended-support-disabled>.
In this case, creating the global cluster will fail if the DB major
version is past its end of standard support date.

This setting only applies to Aurora PostgreSQL-based global databases.

You can use this setting to enroll your global cluster into Amazon RDS
Extended Support. With RDS Extended Support, you can run the selected
major engine version on your global cluster past the end of standard
support for that engine version. For more information, see Using Amazon
RDS Extended Support
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/extended-support.html)
in the I<Amazon Aurora User Guide>.

Valid Values: C<open-source-rds-extended-support |
open-source-rds-extended-support-disabled>

Default: C<open-source-rds-extended-support>



=head2 EngineVersion => Str

The engine version to use for this global database cluster.

Constraints:

=over

=item *

Can't be specified if C<SourceDBClusterIdentifier> is specified. In
this case, Amazon Aurora uses the engine version of the source DB
cluster.

=back




=head2 GlobalClusterIdentifier => Str

The cluster identifier for this global database cluster. This parameter
is stored as a lowercase string.



=head2 SourceDBClusterIdentifier => Str

The Amazon Resource Name (ARN) to use as the primary cluster of the
global database.

If you provide a value for this parameter, don't specify values for the
following settings because Amazon Aurora uses the values from the
specified source DB cluster:

=over

=item *

C<DatabaseName>

=item *

C<Engine>

=item *

C<EngineVersion>

=item *

C<StorageEncrypted>

=back




=head2 StorageEncrypted => Bool

Specifies whether to enable storage encryption for the new global
database cluster.

Constraints:

=over

=item *

Can't be specified if C<SourceDBClusterIdentifier> is specified. In
this case, Amazon Aurora uses the setting from the source DB cluster.

=back




=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]

Tags to assign to the global cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlobalCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

