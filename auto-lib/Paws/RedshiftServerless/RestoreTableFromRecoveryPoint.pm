
package Paws::RedshiftServerless::RestoreTableFromRecoveryPoint;
  use Moose;
  has ActivateCaseSensitiveIdentifier => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'activateCaseSensitiveIdentifier' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' , required => 1);
  has NewTableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newTableName' , required => 1);
  has RecoveryPointId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recoveryPointId' , required => 1);
  has SourceDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceDatabaseName' , required => 1);
  has SourceSchemaName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSchemaName' );
  has SourceTableName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceTableName' , required => 1);
  has TargetDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetDatabaseName' );
  has TargetSchemaName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetSchemaName' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreTableFromRecoveryPoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::RestoreTableFromRecoveryPointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::RestoreTableFromRecoveryPoint - Arguments for method RestoreTableFromRecoveryPoint on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreTableFromRecoveryPoint on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method RestoreTableFromRecoveryPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreTableFromRecoveryPoint.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $RestoreTableFromRecoveryPointResponse =
      $redshift -serverless->RestoreTableFromRecoveryPoint(
      NamespaceName                   => 'MyString',
      NewTableName                    => 'MyString',
      RecoveryPointId                 => 'MyString',
      SourceDatabaseName              => 'MyString',
      SourceTableName                 => 'MyString',
      WorkgroupName                   => 'MyString',
      ActivateCaseSensitiveIdentifier => 1,             # OPTIONAL
      SourceSchemaName                => 'MyString',    # OPTIONAL
      TargetDatabaseName              => 'MyString',    # OPTIONAL
      TargetSchemaName                => 'MyString',    # OPTIONAL
      );

    # Results:
    my $TableRestoreStatus =
      $RestoreTableFromRecoveryPointResponse->TableRestoreStatus;

# Returns a L<Paws::RedshiftServerless::RestoreTableFromRecoveryPointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/RestoreTableFromRecoveryPoint>

=head1 ATTRIBUTES


=head2 ActivateCaseSensitiveIdentifier => Bool

Indicates whether name identifiers for database, schema, and table are
case sensitive. If true, the names are case sensitive. If false, the
names are not case sensitive. The default is false.



=head2 B<REQUIRED> NamespaceName => Str

Namespace of the recovery point to restore from.



=head2 B<REQUIRED> NewTableName => Str

The name of the table to create from the restore operation.



=head2 B<REQUIRED> RecoveryPointId => Str

The ID of the recovery point to restore the table from.



=head2 B<REQUIRED> SourceDatabaseName => Str

The name of the source database that contains the table being restored.



=head2 SourceSchemaName => Str

The name of the source schema that contains the table being restored.



=head2 B<REQUIRED> SourceTableName => Str

The name of the source table being restored.



=head2 TargetDatabaseName => Str

The name of the database to restore the table to.



=head2 TargetSchemaName => Str

The name of the schema to restore the table to.



=head2 B<REQUIRED> WorkgroupName => Str

The workgroup to restore the table to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreTableFromRecoveryPoint in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

