
package Paws::RDS::DeleteTenantDatabase;
  use Moose;
  has DBInstanceIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalDBSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has SkipFinalSnapshot => (is => 'ro', isa => 'Bool');
  has TenantDBName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTenantDatabase');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::DeleteTenantDatabaseResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteTenantDatabaseResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteTenantDatabase - Arguments for method DeleteTenantDatabase on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTenantDatabase on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteTenantDatabase.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTenantDatabase.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $DeleteTenantDatabaseResult = $rds->DeleteTenantDatabase(
      DBInstanceIdentifier      => 'MyString',
      TenantDBName              => 'MyString',
      FinalDBSnapshotIdentifier => 'MyString',    # OPTIONAL
      SkipFinalSnapshot         => 1,             # OPTIONAL
    );

    # Results:
    my $TenantDatabase = $DeleteTenantDatabaseResult->TenantDatabase;

    # Returns a L<Paws::RDS::DeleteTenantDatabaseResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteTenantDatabase>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBInstanceIdentifier => Str

The user-supplied identifier for the DB instance that contains the
tenant database that you want to delete.



=head2 FinalDBSnapshotIdentifier => Str

The C<DBSnapshotIdentifier> of the new C<DBSnapshot> created when the
C<SkipFinalSnapshot> parameter is disabled.

If you enable this parameter and also enable C<SkipFinalShapshot>, the
command results in an error.



=head2 SkipFinalSnapshot => Bool

Specifies whether to skip the creation of a final DB snapshot before
removing the tenant database from your DB instance. If you enable this
parameter, RDS doesn't create a DB snapshot. If you don't enable this
parameter, RDS creates a DB snapshot before it deletes the tenant
database. By default, RDS doesn't skip the final snapshot. If you don't
enable this parameter, you must specify the
C<FinalDBSnapshotIdentifier> parameter.



=head2 B<REQUIRED> TenantDBName => Str

The user-supplied name of the tenant database that you want to remove
from your DB instance. Amazon RDS deletes the tenant database with this
name. This parameter isnE<rsquo>t case-sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTenantDatabase in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

