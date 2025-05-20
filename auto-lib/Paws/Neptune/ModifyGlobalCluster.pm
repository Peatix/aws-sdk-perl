
package Paws::Neptune::ModifyGlobalCluster;
  use Moose;
  has AllowMajorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has NewGlobalClusterIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptune::ModifyGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ModifyGlobalCluster - Arguments for method ModifyGlobalCluster on L<Paws::Neptune>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyGlobalCluster on the
L<Amazon Neptune|Paws::Neptune> service. Use the attributes of this class
as arguments to method ModifyGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('Neptune');
    my $ModifyGlobalClusterResult = $rds->ModifyGlobalCluster(
      GlobalClusterIdentifier    => 'MyGlobalClusterIdentifier',
      AllowMajorVersionUpgrade   => 1,                              # OPTIONAL
      DeletionProtection         => 1,                              # OPTIONAL
      EngineVersion              => 'MyString',                     # OPTIONAL
      NewGlobalClusterIdentifier => 'MyGlobalClusterIdentifier',    # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $ModifyGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::Neptune::ModifyGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyGlobalCluster>

=head1 ATTRIBUTES


=head2 AllowMajorVersionUpgrade => Bool

A value that indicates whether major version upgrades are allowed.

Constraints: You must allow major version upgrades if you specify a
value for the C<EngineVersion> parameter that is a different major
version than the DB cluster's current version.

If you upgrade the major version of a global database, the cluster and
DB instance parameter groups are set to the default parameter groups
for the new version, so you will need to apply any custom parameter
groups after completing the upgrade.



=head2 DeletionProtection => Bool

Indicates whether the global database has deletion protection enabled.
The global database cannot be deleted when deletion protection is
enabled.



=head2 EngineVersion => Str

The version number of the database engine to which you want to upgrade.
Changing this parameter will result in an outage. The change is applied
during the next maintenance window unless C<ApplyImmediately> is
enabled.

To list all of the available Neptune engine versions, use the following
command:



=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The DB cluster identifier for the global cluster being modified. This
parameter is not case-sensitive.

Constraints: Must match the identifier of an existing global database
cluster.



=head2 NewGlobalClusterIdentifier => Str

A new cluster identifier to assign to the global database. This value
is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-cluster2>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyGlobalCluster in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

