
package Paws::Backup::ListRecoveryPointsByBackupVault;
  use Moose;
  has BackupVaultAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'backupVaultAccountId');
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has ByBackupPlanId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'backupPlanId');
  has ByCreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has ByCreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has ByParentRecoveryPointArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'parentRecoveryPointArn');
  has ByResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceArn');
  has ByResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecoveryPointsByBackupVault');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/recovery-points/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListRecoveryPointsByBackupVaultOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRecoveryPointsByBackupVault - Arguments for method ListRecoveryPointsByBackupVault on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecoveryPointsByBackupVault on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListRecoveryPointsByBackupVault.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecoveryPointsByBackupVault.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListRecoveryPointsByBackupVaultOutput =
      $backup->ListRecoveryPointsByBackupVault(
      BackupVaultName          => 'MyBackupVaultName',
      BackupVaultAccountId     => 'MyAccountId',            # OPTIONAL
      ByBackupPlanId           => 'Mystring',               # OPTIONAL
      ByCreatedAfter           => '1970-01-01T01:00:00',    # OPTIONAL
      ByCreatedBefore          => '1970-01-01T01:00:00',    # OPTIONAL
      ByParentRecoveryPointArn => 'MyARN',                  # OPTIONAL
      ByResourceArn            => 'MyARN',                  # OPTIONAL
      ByResourceType           => 'MyResourceType',         # OPTIONAL
      MaxResults               => 1,                        # OPTIONAL
      NextToken                => 'Mystring',               # OPTIONAL
      );

    # Results:
    my $NextToken      = $ListRecoveryPointsByBackupVaultOutput->NextToken;
    my $RecoveryPoints = $ListRecoveryPointsByBackupVaultOutput->RecoveryPoints;

    # Returns a L<Paws::Backup::ListRecoveryPointsByBackupVaultOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListRecoveryPointsByBackupVault>

=head1 ATTRIBUTES


=head2 BackupVaultAccountId => Str

This parameter will sort the list of recovery points by account ID.



=head2 B<REQUIRED> BackupVaultName => Str

The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the Amazon Web Services Region where they are created.

Backup vault name might not be available when a supported service
creates the backup.



=head2 ByBackupPlanId => Str

Returns only recovery points that match the specified backup plan ID.



=head2 ByCreatedAfter => Str

Returns only recovery points that were created after the specified
timestamp.



=head2 ByCreatedBefore => Str

Returns only recovery points that were created before the specified
timestamp.



=head2 ByParentRecoveryPointArn => Str

This returns only recovery points that match the specified parent
(composite) recovery point Amazon Resource Name (ARN).



=head2 ByResourceArn => Str

Returns only recovery points that match the specified resource Amazon
Resource Name (ARN).



=head2 ByResourceType => Str

Returns only recovery points that match the specified resource type(s):

=over

=item *

C<Aurora> for Amazon Aurora

=item *

C<CloudFormation> for CloudFormation

=item *

C<DocumentDB> for Amazon DocumentDB (with MongoDB compatibility)

=item *

C<DynamoDB> for Amazon DynamoDB

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<EC2> for Amazon Elastic Compute Cloud

=item *

C<EFS> for Amazon Elastic File System

=item *

C<FSx> for Amazon FSx

=item *

C<Neptune> for Amazon Neptune

=item *

C<RDS> for Amazon Relational Database Service

=item *

C<Redshift> for Amazon Redshift

=item *

C<S3> for Amazon Simple Storage Service (Amazon S3)

=item *

C<SAP HANA on Amazon EC2> for SAP HANA databases on Amazon Elastic
Compute Cloud instances

=item *

C<Storage Gateway> for Storage Gateway

=item *

C<Timestream> for Amazon Timestream

=item *

C<VirtualMachine> for VMware virtual machines

=back




=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecoveryPointsByBackupVault in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

