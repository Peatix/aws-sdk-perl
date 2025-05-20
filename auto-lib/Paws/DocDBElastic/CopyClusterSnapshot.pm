
package Paws::DocDBElastic::CopyClusterSnapshot;
  use Moose;
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has KmsKeyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyId');
  has SnapshotArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'snapshotArn', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DocDBElastic::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetSnapshotName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopyClusterSnapshot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster-snapshot/{snapshotArn}/copy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::CopyClusterSnapshotOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::CopyClusterSnapshot - Arguments for method CopyClusterSnapshot on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopyClusterSnapshot on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method CopyClusterSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopyClusterSnapshot.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $CopyClusterSnapshotOutput = $docdb -elastic->CopyClusterSnapshot(
      SnapshotArn        => 'MyString',
      TargetSnapshotName =>
        'MyCopyClusterSnapshotInputTargetSnapshotNameString',
      CopyTags => 1,             # OPTIONAL
      KmsKeyId => 'MyString',    # OPTIONAL
      Tags     => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Snapshot = $CopyClusterSnapshotOutput->Snapshot;

    # Returns a L<Paws::DocDBElastic::CopyClusterSnapshotOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/CopyClusterSnapshot>

=head1 ATTRIBUTES


=head2 CopyTags => Bool

Set to C<true> to copy all tags from the source cluster snapshot to the
target elastic cluster snapshot. The default is C<false>.



=head2 KmsKeyId => Str

The Amazon Web Services KMS key ID for an encrypted elastic cluster
snapshot. The Amazon Web Services KMS key ID is the Amazon Resource
Name (ARN), Amazon Web Services KMS key identifier, or the Amazon Web
Services KMS key alias for the Amazon Web Services KMS encryption key.

If you copy an encrypted elastic cluster snapshot from your Amazon Web
Services account, you can specify a value for C<KmsKeyId> to encrypt
the copy with a new Amazon Web ServicesS KMS encryption key. If you
don't specify a value for C<KmsKeyId>, then the copy of the elastic
cluster snapshot is encrypted with the same C<AWS> KMS key as the
source elastic cluster snapshot.

To copy an encrypted elastic cluster snapshot to another Amazon Web
Services region, set C<KmsKeyId> to the Amazon Web Services KMS key ID
that you want to use to encrypt the copy of the elastic cluster
snapshot in the destination region. Amazon Web Services KMS encryption
keys are specific to the Amazon Web Services region that they are
created in, and you can't use encryption keys from one Amazon Web
Services region in another Amazon Web Services region.

If you copy an unencrypted elastic cluster snapshot and specify a value
for the C<KmsKeyId> parameter, an error is returned.



=head2 B<REQUIRED> SnapshotArn => Str

The Amazon Resource Name (ARN) identifier of the elastic cluster
snapshot.



=head2 Tags => L<Paws::DocDBElastic::TagMap>

The tags to be assigned to the elastic cluster snapshot.



=head2 B<REQUIRED> TargetSnapshotName => Str

The identifier of the new elastic cluster snapshot to create from the
source cluster snapshot. This parameter is not case sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens.

=item *

The first character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back

Example: C<elastic-cluster-snapshot-5>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopyClusterSnapshot in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

