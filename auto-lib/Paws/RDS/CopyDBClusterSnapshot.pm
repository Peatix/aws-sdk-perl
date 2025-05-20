
package Paws::RDS::CopyDBClusterSnapshot;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PreSignedUrl => (is => 'ro', isa => 'Str');
  has SourceDBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');
  has TargetDBClusterSnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyDBClusterSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::CopyDBClusterSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CopyDBClusterSnapshotResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBClusterSnapshot - Arguments for method CopyDBClusterSnapshot on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyDBClusterSnapshot on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CopyDBClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyDBClusterSnapshot.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
# To copy a DB cluster snapshot
# The following example copies an automated snapshot of a DB cluster to a new DB
# cluster snapshot.
    my $CopyDBClusterSnapshotResult = $rds->CopyDBClusterSnapshot(
      'SourceDBClusterSnapshotIdentifier' =>
        'rds:sample-cluster-2016-09-14-10-38',
      'TargetDBClusterSnapshotIdentifier' => 'cluster-snapshot-copy-1'
    );

    # Results:
    my $DBClusterSnapshot = $CopyDBClusterSnapshotResult->DBClusterSnapshot;

    # Returns a L<Paws::RDS::CopyDBClusterSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CopyDBClusterSnapshot>

=head1 ATTRIBUTES


=head2 CopyTags => Bool

Specifies whether to copy all tags from the source DB cluster snapshot
to the target DB cluster snapshot. By default, tags are not copied.



=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for an encrypted DB cluster
snapshot. The Amazon Web Services KMS key identifier is the key ARN,
key ID, alias ARN, or alias name for the Amazon Web Services KMS key.

If you copy an encrypted DB cluster snapshot from your Amazon Web
Services account, you can specify a value for C<KmsKeyId> to encrypt
the copy with a new KMS key. If you don't specify a value for
C<KmsKeyId>, then the copy of the DB cluster snapshot is encrypted with
the same KMS key as the source DB cluster snapshot.

If you copy an encrypted DB cluster snapshot that is shared from
another Amazon Web Services account, then you must specify a value for
C<KmsKeyId>.

To copy an encrypted DB cluster snapshot to another Amazon Web Services
Region, you must set C<KmsKeyId> to the Amazon Web Services KMS key
identifier you want to use to encrypt the copy of the DB cluster
snapshot in the destination Amazon Web Services Region. KMS keys are
specific to the Amazon Web Services Region that they are created in,
and you can't use KMS keys from one Amazon Web Services Region in
another Amazon Web Services Region.

If you copy an unencrypted DB cluster snapshot and specify a value for
the C<KmsKeyId> parameter, an error is returned.



=head2 PreSignedUrl => Str

When you are copying a DB cluster snapshot from one Amazon Web Services
GovCloud (US) Region to another, the URL that contains a Signature
Version 4 signed request for the C<CopyDBClusterSnapshot> API operation
in the Amazon Web Services Region that contains the source DB cluster
snapshot to copy. Use the C<PreSignedUrl> parameter when copying an
encrypted DB cluster snapshot from another Amazon Web Services Region.
Don't specify C<PreSignedUrl> when copying an encrypted DB cluster
snapshot in the same Amazon Web Services Region.

This setting applies only to Amazon Web Services GovCloud (US) Regions.
It's ignored in other Amazon Web Services Regions.

The presigned URL must be a valid request for the
C<CopyDBClusterSnapshot> API operation that can run in the source
Amazon Web Services Region that contains the encrypted DB cluster
snapshot to copy. The presigned URL request must contain the following
parameter values:

=over

=item *

C<KmsKeyId> - The KMS key identifier for the KMS key to use to encrypt
the copy of the DB cluster snapshot in the destination Amazon Web
Services Region. This is the same identifier for both the
C<CopyDBClusterSnapshot> operation that is called in the destination
Amazon Web Services Region, and the operation contained in the
presigned URL.

=item *

C<DestinationRegion> - The name of the Amazon Web Services Region that
the DB cluster snapshot is to be created in.

=item *

C<SourceDBClusterSnapshotIdentifier> - The DB cluster snapshot
identifier for the encrypted DB cluster snapshot to be copied. This
identifier must be in the Amazon Resource Name (ARN) format for the
source Amazon Web Services Region. For example, if you are copying an
encrypted DB cluster snapshot from the us-west-2 Amazon Web Services
Region, then your C<SourceDBClusterSnapshotIdentifier> looks like the
following example:
C<arn:aws:rds:us-west-2:123456789012:cluster-snapshot:aurora-cluster1-snapshot-20161115>.

=back

To learn how to generate a Signature Version 4 signed request, see
Authenticating Requests: Using Query Parameters (Amazon Web Services
Signature Version 4)
(https://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html)
and Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).

If you are using an Amazon Web Services SDK tool or the CLI, you can
specify C<SourceRegion> (or C<--source-region> for the CLI) instead of
specifying C<PreSignedUrl> manually. Specifying C<SourceRegion>
autogenerates a presigned URL that is a valid request for the operation
that can run in the source Amazon Web Services Region.



=head2 B<REQUIRED> SourceDBClusterSnapshotIdentifier => Str

The identifier of the DB cluster snapshot to copy. This parameter isn't
case-sensitive.

You can't copy an encrypted, shared DB cluster snapshot from one Amazon
Web Services Region to another.

Constraints:

=over

=item *

Must specify a valid system snapshot in the "available" state.

=item *

If the source snapshot is in the same Amazon Web Services Region as the
copy, specify a valid DB snapshot identifier.

=item *

If the source snapshot is in a different Amazon Web Services Region
than the copy, specify a valid DB cluster snapshot ARN. For more
information, go to Copying Snapshots Across Amazon Web Services Regions
(https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_CopySnapshot.html#USER_CopySnapshot.AcrossRegions)
in the I<Amazon Aurora User Guide>.

=back

Example: C<my-cluster-snapshot1>



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]





=head2 B<REQUIRED> TargetDBClusterSnapshotIdentifier => Str

The identifier of the new DB cluster snapshot to create from the source
DB cluster snapshot. This parameter isn't case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

First character must be a letter.

=item *

Can't end with a hyphen or contain two consecutive hyphens.

=back

Example: C<my-cluster-snapshot2>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyDBClusterSnapshot in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

