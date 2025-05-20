
package Paws::RedshiftServerless::RestoreFromSnapshot;
  use Moose;
  has AdminPasswordSecretKmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'adminPasswordSecretKmsKeyId' );
  has ManageAdminPassword => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'manageAdminPassword' );
  has NamespaceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespaceName' , required => 1);
  has OwnerAccount => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ownerAccount' );
  has SnapshotArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotArn' );
  has SnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snapshotName' );
  has WorkgroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workgroupName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::RestoreFromSnapshotResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::RestoreFromSnapshot - Arguments for method RestoreFromSnapshot on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreFromSnapshot on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method RestoreFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreFromSnapshot.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $RestoreFromSnapshotResponse =
      $redshift -serverless->RestoreFromSnapshot(
      NamespaceName               => 'MyNamespaceName',
      WorkgroupName               => 'MyWorkgroupName',
      AdminPasswordSecretKmsKeyId => 'MyKmsKeyId',        # OPTIONAL
      ManageAdminPassword         => 1,                   # OPTIONAL
      OwnerAccount                => 'MyString',          # OPTIONAL
      SnapshotArn                 => 'MyString',          # OPTIONAL
      SnapshotName                => 'MyString',          # OPTIONAL
      );

    # Results:
    my $Namespace    = $RestoreFromSnapshotResponse->Namespace;
    my $OwnerAccount = $RestoreFromSnapshotResponse->OwnerAccount;
    my $SnapshotName = $RestoreFromSnapshotResponse->SnapshotName;

    # Returns a L<Paws::RedshiftServerless::RestoreFromSnapshotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/RestoreFromSnapshot>

=head1 ATTRIBUTES


=head2 AdminPasswordSecretKmsKeyId => Str

The ID of the Key Management Service (KMS) key used to encrypt and
store the namespace's admin credentials secret.



=head2 ManageAdminPassword => Bool

If C<true>, Amazon Redshift uses Secrets Manager to manage the restored
snapshot's admin credentials. If C<MmanageAdminPassword> is false or
not set, Amazon Redshift uses the admin credentials that the namespace
or cluster had at the time the snapshot was taken.



=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace to restore the snapshot to.



=head2 OwnerAccount => Str

The Amazon Web Services account that owns the snapshot.



=head2 SnapshotArn => Str

The Amazon Resource Name (ARN) of the snapshot to restore from.
Required if restoring from a provisioned cluster to Amazon Redshift
Serverless. Must not be specified at the same time as C<snapshotName>.

The format of the ARN is
arn:aws:redshift:E<lt>regionE<gt>:E<lt>account_idE<gt>:snapshot:E<lt>cluster_identifierE<gt>/E<lt>snapshot_identifierE<gt>.



=head2 SnapshotName => Str

The name of the snapshot to restore from. Must not be specified at the
same time as C<snapshotArn>.



=head2 B<REQUIRED> WorkgroupName => Str

The name of the workgroup used to restore the snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreFromSnapshot in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

